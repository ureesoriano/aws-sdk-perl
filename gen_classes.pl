#!/usr/bin/env perl

use strict;
use warnings;

use Data::Printer;
use Data::Dumper;
use JSON;
use File::Slurper 'read_text';

use lib 'builder-lib', 't/lib';

use Module::Runtime qw/require_module/;

use Paws::API::ServiceToClass;
 
my (@files) = @ARGV;

# If no files specified, get the last version of each json for each service
if (not @files) {
  my @dirs = glob('botocore/botocore/data/*');

  foreach my $class_dir (@dirs) {
    my @class_defs = grep { -f $_ } glob("$class_dir/*/service-2.json");
    next if (not @class_defs);
    @class_defs = sort @class_defs;
    my $class_version = pop @class_defs;
    push @files, $class_version;
  }
}

my @failures;
foreach my $file (@files) {
  print "Processing $file\n";
  if (my ($f, $version) = ($file =~ m/data\/(.*?)\/(.*?)\/service-2.json/)){
    next if ($f eq '_retry' or $f eq '_regions');
    my $ns = Paws::API::ServiceToClass::service_to_class($f);
    eval {
      process_api("Paws::$ns", $file);
    };
    if ($@) { warn $@; push @failures, "$file $@\n" }
  }
}

print "Summary of fails\n";
print @failures;

sub process_api {
  my ($api, $file) = @_;

  my $struct = from_json(read_text($file));
  my $type = $struct->{metadata}->{protocol} or die "Type of API call not found";

  my $overrides = { 'Paws::EC2' => 'EC2' };
  $type = $overrides->{ $api } if (defined $overrides->{ $api });
  $type =~ s/\-//;

  my $class_maker = "Paws::API::Builder::${type}";
  require_module $class_maker;

  my $c = $class_maker->new(api_file => $file, api => $api);
  $c->process_api;
}

