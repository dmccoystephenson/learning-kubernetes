# /bin/bash

if [ -z "$WORKER_2_IP" ]
then
    # get input
    echo "Enter worker 2 instance IP: "
    read WORKER_2
    echo "WORKER_2 has been set to $WORKER_2"
else
      instance_ip=$WORKER_1
fi

username="ubuntu"
keypair_name="~/.ssh/mkp-5-10-2023"

echo "Connecting to instance..."
ssh -i $keypair_name.pem $username@$instance_ip