# Hello world docker action

This action prints "Hello World" or "Hello" + the name of a person to greet to the log.

## Inputs

### gpus
**Required** Number of gpus to use. Default `0`.

### `gpu_type`
**Optional** Type of GPU to use. Default is `null`.

### `cpu`
**Required** Number of CPUs to use. Default is `100`.

### `memory`
**Required** Amount of memory to use. Default is `200`.

### `min_scale`
**Required** Minimum number of replicas. Default is `0`.

### `max_scale`
**Required** Maximum number of replicas. Default is `3`.

### `env`
**Required** Environment in which to deploy. Default is `default`


## Example usage

uses: actions/github-action-1@v2
with:
  who-to-greet: 'Mona the Octocat'
