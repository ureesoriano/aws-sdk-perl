
package Paws::EC2::CreatePlacementGroup;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has GroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groupName' , required => 1);
  has Strategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'strategy' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlacementGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreatePlacementGroup - Arguments for method CreatePlacementGroup on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePlacementGroup on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method CreatePlacementGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePlacementGroup.

As an example:

  $service_obj->CreatePlacementGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> GroupName => Str

A name for the placement group.

Constraints: Up to 255 ASCII characters



=head2 B<REQUIRED> Strategy => Str

The placement strategy.

Valid values are: C<"cluster">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePlacementGroup in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

