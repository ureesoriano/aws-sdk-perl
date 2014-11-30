
package Paws::ELB::DescribeLoadBalancerPoliciesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has PolicyDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::ELB::PolicyDescription]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeLoadBalancerPoliciesOutput

=head1 ATTRIBUTES

=head2 PolicyDescriptions => ArrayRef[Paws::ELB::PolicyDescription]

  

A list of policy description structures.











=cut

