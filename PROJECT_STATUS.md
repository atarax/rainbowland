# Next Steps

## Make cluster securely available from the outside (no encryption)
- create a load-balancer within the Vagrantfile which is reachable from
  the outside world via port-forwarding
- create dummy-nginx instances for testing-purposes
- load-balancer should route from the public to the private-network
- dummy-webservers should be reachable (round-robin) from the outside world

# Steps achieved

## Initial Setup

- create a cluster of 3 machines in a private network, running docker
- provisioning via vagrant for now
- nodes should be able to join a docker-swarm cluster
- nodes should not be accessible from the outside
