
package Paws::AppStream::CreateStreamingURLResult;
  use Moose;
  has Expires => (is => 'ro', isa => 'Str');
  has StreamingURL => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateStreamingURLResult

=head1 ATTRIBUTES


=head2 Expires => Str

Elapsed seconds after the Unix epoch, when this URL expires.


=head2 StreamingURL => Str

The URL to start the AppStream 2.0 streaming session.


=head2 _request_id => Str


=cut

1;