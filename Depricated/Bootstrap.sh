#!/bin/bash

# Here we Define the Cluster Hosts (This is a Carppy solution but im not dealing with hundreds of hosts and its simple.)
function GetHostIp {
  hostname=$(hostname)

  if [ "$hostname" = "Elenaril" ]
  then
    ip="10.99.0.11"
  elif [ "$hostname" = "Lyra" ]
  then
    ip="10.99.0.12"
  elif [ "$hostname" = "Shyilia" ]
  then
    ip="10.99.0.13"
  else
    echo "Could not Set Host ip exiting"
    exit 1
  fi

}

# This Set the Environment file for CoreOS in /etc/environment
function SetEnvironment {
  # Overwrite The Current Environment File.
  sudo sed -e "s/[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/$ip/g" ServiceConfigs/environment > /etc/environment
}

# Time to actually do all the things
echo "Mapping Host Ip's"
GetHostIp
echo "Host IP's Mapped"
echo ""
echo "Setting the Environment"
SetEnvironment
echo "Environment Set You Must Log out and Log back in for the Changes to take Effect"
echo ""
echo "Done Exiting"