#!/bin/sh -l

gpus = $1
gpu_type = $2
cpu = $3
memory = $4
min_scale = $5
max_scale = $6
env = $7

AWS_ACCESS_KEY_ID = $8
AWS_SECRET_ACCESS_KEY = $9
AWS_SESSION_TOKEN = $10

echo "gpus: $gpus"
echo "gpu_type: $gpu_type"
echo "cpu: $cpu"
echo "memory: $memory"
echo "min_scale: $min_scale"
echo "max_scale: $max_scale"
echo "env: $env"

export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
export AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN
export AWS_DEFAULT_REGION=us-east-1

aws eks update-kubeconfig --name divyanshu --region us-east-1       
tensorkube deploy --gpus $gpus --gpu-type $gpu_type --cpu $cpu --memory $memory --min-scale $min_scale --max-scale $max_scale --env $env

