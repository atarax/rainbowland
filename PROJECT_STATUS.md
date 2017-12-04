# Next Steps

 Steps achieved

## Initial Setup

- create a cluster of 3 machines in a private network, running docker
- provisioning via vagrant for now
- nodes should be able to join a docker-swarm cluster
- nodes should not be accessible from the outside

## Make cluster securely available from the outside (no encryption)
- create a load-balancer within the Vagrantfile which is reachable from
  the outside world via port-forwarding
- create dummy-nginx instances for health-checks on managers
- load-balancer should route from the public to the private-network

## Automate the cluster-creation and creation of portainer-service
- automate the initialization of the cluster
- let the other nodes join
- promote all nodes to masters
- bring up portainers-service
