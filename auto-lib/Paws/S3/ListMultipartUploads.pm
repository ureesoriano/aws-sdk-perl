
package Paws::S3::ListMultipartUploads {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Delimiter => (is => 'ro', isa => 'Str');
  has EncodingType => (is => 'ro', isa => 'Str');
  has KeyMarker => (is => 'ro', isa => 'Str');
  has MaxUploads => (is => 'ro', isa => 'Int');
  has Prefix => (is => 'ro', isa => 'Str');
  has UploadIdMarker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMultipartUploads');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListMultipartUploadsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListMultipartUploadsResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListMultipartUploadsOutput

=head1 ATTRIBUTES

=head2 B<REQUIRED> Bucket => Str

  
=head2 Delimiter => Str

  

Character you use to group keys.









=head2 EncodingType => Str

  
=head2 KeyMarker => Str

  

Together with upload-id-marker, this parameter specifies the multipart
upload after which listing should begin.









=head2 MaxUploads => Int

  

Sets the maximum number of multipart uploads, from 1 to 1,000, to
return in the response body. 1,000 is the maximum number of uploads
that can be returned in a response.









=head2 Prefix => Str

  

Lists in-progress uploads only for those keys that begin with the
specified prefix.









=head2 UploadIdMarker => Str

  

Together with key-marker, specifies the multipart upload after which
listing should begin. If key-marker is not specified, the
upload-id-marker parameter is ignored.











=cut

