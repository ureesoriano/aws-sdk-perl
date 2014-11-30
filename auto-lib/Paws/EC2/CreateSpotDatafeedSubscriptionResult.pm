
package Paws::EC2::CreateSpotDatafeedSubscriptionResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has SpotDatafeedSubscription => (is => 'ro', isa => 'Paws::EC2::SpotDatafeedSubscription', traits => ['Unwrapped'], xmlname => 'spotDatafeedSubscription');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateSpotDatafeedSubscriptionResult

=head1 ATTRIBUTES

=head2 SpotDatafeedSubscription => Paws::EC2::SpotDatafeedSubscription

  

The Spot Instance datafeed subscription.











=cut

