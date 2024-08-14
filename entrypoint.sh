#!/bin/sh -l

gpus = $1
gpu_type = $2
cpu = $3
memory = $4
min_scale = $5
max_scale = $6
env = $7

echo "gpus: $gpus"
echo "gpu_type: $gpu_type"
echo "cpu: $cpu"
echo "memory: $memory"
echo "min_scale: $min_scale"
echo "max_scale: $max_scale"
echo "env: $env"


aws eks update-kubeconfig --name divyanshu --region us-east-1       
tensorkube deploy --gpus $gpus --gpu-type $gpu_type --cpu $cpu --memory $memory --min-scale $min_scale --max-scale $max_scale --env $env

