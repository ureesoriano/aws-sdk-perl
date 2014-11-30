
package Paws::Route53::GetHealthCheckLastFailureReason {
  use Moose;
  has HealthCheckId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHealthCheckLastFailureReason');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetHealthCheckLastFailureReasonResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetHealthCheckLastFailureReasonResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetHealthCheckLastFailureReasonResponse

=head1 ATTRIBUTES

=head2 B<REQUIRED> HealthCheckId => Str

  

The ID of the health check for which you want to retrieve the reason
for the most recent failure.











=cut

