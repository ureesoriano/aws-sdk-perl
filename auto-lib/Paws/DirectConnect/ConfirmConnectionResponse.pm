
package Paws::DirectConnect::ConfirmConnectionResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has connectionState => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::ConfirmConnectionResponse

=head1 ATTRIBUTES

=head2 connectionState => Str

  


=cut

1;