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
  cp -f ServiceConfigs/environment /etc/environment

  sudo sed -e 's/\${ip}/$ip/g' /etc/environment
}

# Time to actually do all the things
GetHostIp
SetEnvironment