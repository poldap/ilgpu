FROM nvidia/cuda:12.2.2-base-ubuntu22.04
MAINTAINER pol.delaguilapla@qamcom.se

# Update system
RUN apt-get update
# Get git and C# SDK
RUN apt-get install -y git
RUN apt-get install -y dotnet-sdk-7.0
RUN apt-get install -y aspnetcore-runtime-7.0
# Inform and verify .NET installation
RUN echo "Installation complete, .NET version:"
RUN dotnet --version
# Add sudo and a developer user for convenience
RUN apt-get install -y sudo
RUN useradd --create-home --shell /bin/bash -G sudo -p "$(openssl passwd -1 developer)" developer
USER developer
WORKDIR /home/developer
RUN dotnet new console -n TestConsole
RUN cd TestConsole && dotnet add package ILGPU


