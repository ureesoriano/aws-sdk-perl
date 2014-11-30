
package Paws::CloudFront::ListDistributions2014_10_21 {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDistributions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListDistributionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListDistributionsResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListDistributionsResult

=head1 ATTRIBUTES

=head2 Marker => Str

  

Use this when paginating results to indicate where to begin in your
list of distributions. The results include distributions in the list
that occur after the marker. To get the next page of results, set the
Marker to the value of the NextMarker from the current page's response
(which is also the ID of the last distribution on that page).









=head2 MaxItems => Str

  

The maximum number of distributions you want in the response body.











=cut

