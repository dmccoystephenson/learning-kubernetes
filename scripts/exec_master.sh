# /bin/bash

if [ -z "$MASTER_IP" ]
then
    # get input
    echo "Enter master instance IP: "
    read MASTER_IP
    echo "MASTER_IP has been set to $MASTER_IP"
else
      instance_ip=$MASTER_IP
fi

username="ubuntu"
keypair_name="~/.ssh/mkp-5-10-2023"

echo "Connecting to instance..."
ssh -i $keypair_name.pem $username@$instance_ip