#!/bin/sh -l

export INPUT_GPUS = $1
export INPUT_GPU_TYPE = $2
export INPUT_CPU = $3
export INPUT_MEMORY = $4
export INPUT_MIN_SCALE = $5
export INPUT_MAX_SCALE = $6
export INPUT_ENV = $7

echo "gpus: $INPUT_GPUS"
echo "gpu_type: $INPUT_GPU_TYPE"
echo "cpu: $INPUT_CPU"
echo "memory: $INPUT_MEMORY"
echo "min_scale: $INPUT_MIN_SCALE"
echo "max_scale: $INPUT_MAX_SCALE"
echo "env: $INPUT_ENV"


aws eks update-kubeconfig --name divyanshu --region us-east-1       
tensorkube deploy --gpus $INPUT_GPUS --gpu-type $INPUT_GPU_TYPE --cpu $INPUT_CPU --memory $INPUT_MEMORY --min-scale $INPUT_MIN_SCALE --max-scale $INPUT_MAX_SCALE --env $INPUT_ENV
