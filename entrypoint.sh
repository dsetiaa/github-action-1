#!/bin/sh -l

aws eks update-kubeconfig --name tensorkube --region us-east-1 
ls -l
cd $8 

export TENSORKUBE_TOKEN=$9
export TENSORKUBE_SESSION_ID=${10}

if [ "$TENSORKUBE_TOKEN" = "acad6d95-040b-4f16-871d-a76efe7e1502" ]; then
    echo "TENSORKUBE_TOKEN matches"
else
    echo "TENSORKUBE_TOKEN does not match"
fi

if [ "$TENSORKUBE_SESSION_ID" = "fb1a2d65-0b71-4ade-b591-d5df92b44540" ]; then
    echo "TENSORKUBE_SESSION_ID matches"
else
    echo "TENSORKUBE_SESSION_ID does not match"
fi

echo "TENSORKUBE_TOKEN:" $TENSORKUBE_TOKEN
echo "TENSORKUBE_SESSION_ID:" $TENSORKUBE_SESSION_ID

if [ -n "$2" ]; then
    if [ -n "$7" ]; then
        tensorkube deploy --gpus $1 --gpu-type $2 --cpu $3 --memory $4 --min-scale $5 --max-scale $6 --env $7
    else
        tensorkube deploy --gpus $1 --gpu-type $2 --cpu $3 --memory $4 --min-scale $5 --max-scale $6
    fi
else
    if [ -n "$7" ]; then
        tensorkube deploy --gpus $1 --cpu $3 --memory $4 --min-scale $5 --max-scale $6 --env $7
    else
        tensorkube deploy --gpus $1 --cpu $3 --memory $4 --min-scale $5 --max-scale $6
    fi
fi
