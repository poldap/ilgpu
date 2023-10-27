# Docker image to develop C# applications using ILGPU

Intended for use with Nvidia GPUs, where the container has to be created by running
```
docker run --gpus all -v code_directory:/home/developer/code/ -it polsocjo/ilgpu:latest
```

