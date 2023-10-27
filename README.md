# Docker image to develop C# applications using ILGPU

Intended for use with Nvidia GPUs, where the container has to be created by running
```
docker run --gpus all -v code_directory:/home/developer/code/ -it polsocjo/ilgpu:latest
```

The docker image is intended for use in Linux, and based on `nvidia/cuda:12.2.2-base-ubuntu22.04` ([here](https://hub.docker.com/r/nvidia/cuda/)).
