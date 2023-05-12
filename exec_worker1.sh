# /bin/bash

if [ -z "$WORKER_1_IP" ]
then
    # get input
    echo "Enter worker 1 instance IP: "
    read WORKER_1
    echo "WORKER_1 has been set to $WORKER_1"
else
      instance_ip=$WORKER_1
fi

username="ubuntu"
instance_ip="18.118.21.101" # change this to your worker2 instance IP
keypair_name="~/.ssh/mkp-5-10-2023"

echo "Connecting to instance..."
ssh -i $keypair_name.pem $username@$instance_ip