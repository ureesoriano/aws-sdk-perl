
package Paws::RedShift::CreateClusterSubnetGroup {
  use Moose;
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::CreateClusterSubnetGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterSubnetGroupResult');
}
1;