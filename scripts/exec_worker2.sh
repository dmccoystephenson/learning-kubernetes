# /bin/bash

if [ -z "$WORKER_2_IP" ]
then
    # get input
    echo "Enter worker 2 instance IP: "
    read instance_ip
else
      instance_ip=$WORKER_2_IP
fi

username="ubuntu"
keypair_name="~/.ssh/mkp-5-10-2023"

echo "Connecting to instance..."
ssh -i $keypair_name.pem $username@$instance_ip