
package Paws::S3::GetBucketLocation {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketLocation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetBucketLocationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketLocationResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketLocationOutput

=head1 ATTRIBUTES

=head2 B<REQUIRED> Bucket => Str

  


=cut

