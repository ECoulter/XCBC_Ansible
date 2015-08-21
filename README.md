Simple playbooks to make XCBC easier

Ansible handles post-Rocks installation configuration.

Currently working:

 -- install the XSEDE yum repo for future updates (maybe a bad idea!)
 --- now with the Yum module after bugfix!

 -- TODO: safely yum update

 -- Configure basic Torque queue
 
 -- install Globus repo & packages
 --- does NOT complete config and install of server yet
