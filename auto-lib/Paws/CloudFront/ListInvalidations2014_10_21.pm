
package Paws::CloudFront::ListInvalidations2014_10_21 {
  use Moose;
  has DistributionId => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInvalidations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListInvalidationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListInvalidationsResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListInvalidationsResult

=head1 ATTRIBUTES

=head2 B<REQUIRED> DistributionId => Str

  

The distribution's id.









=head2 Marker => Str

  

Use this parameter when paginating results to indicate where to begin
in your list of invalidation batches. Because the results are returned
in decreasing order from most recent to oldest, the most recent results
are on the first page, the second page will contain earlier results,
and so on. To get the next page of results, set the Marker to the value
of the NextMarker from the current page's response. This value is the
same as the ID of the last invalidation batch on that page.









=head2 MaxItems => Str

  

The maximum number of invalidation batches you want in the response
body.











=cut

