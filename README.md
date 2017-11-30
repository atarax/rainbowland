# rainbowland

- the dream of a perfect development-environment, also usable for production, at least that's the dream
- including version control and continuous deployment
- every step should be automated
- using docker and vagrant

## prerequisite

OS: debian stretch 9.1

## notes:

problems with virtualbox-dhcp, not assigning ip-adresses correctly as defined in Vagrantfile
{code}VBoxManage dhcpserver remove --ifname vboxnet1{code}

