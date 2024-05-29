# Express API in Windows Container on Docker Desktop

This repository contains an example setup for running an Express API application within a Windows container on Docker Desktop. The setup demonstrates how to seamlessly integrate a Windows container environment with shared files between the container and the host machine.

## Features

 - **Windows Containerization:** Utilize Docker Desktop to run a Windows container environment on a Windows operating system.
 - **Express API Application:** Develop and deploy an Express API application within the Windows container.
 - **Shared File Collaboration:** Establish shared file mechanisms to facilitate collaboration and data interchange between the containerized Express API and the host environment.
 - **Dynamic Interactions:** Seamlessly interact with shared files from within the Express API application, enabling real-time synchronization and collaboration.

## Setup Instructions - (Powershell)

1. Install Docker Desktop: [Download Docker Desktop](https://www.docker.com/products/docker-desktop/)
2. Clone this repository: `git clone https://github.com/mouad-halli/windows-container-api`
3. Navigate to the repository directory: `cd windows-container-api`
5. Build the Docker image: `docker build -t api-image .`
6. Run the Docker container: `docker run -it --name api-container -p 8080:3000 -v ${pwd}/shared:C:\usr\shared api-image`

## Usage

 - Access the Express API at http://localhost:8080
 - Modify items.json manually inside the repository, the changes will be applied live
