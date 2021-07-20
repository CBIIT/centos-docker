# CentOS Version: 8
CentOS Base OS Docker Image

# Project Overview
This project contains the following artifacts:
1. Dockerfile: This is a core docker file that contains the steps to build the light weight base image - The file contains comments for every step of the process. The build includes an update of all OS packages to ensure every builds includes the latest available OS packages for the distribution version so it meets CBIIT OS security requirements.
2. centos-cbiit-docker: THIS IS A REFERENCE FILE ONLY & SHOULD NOT BE USED FOR OPERATIONAL PURPOSES - THIS FILE PROIVDES AN OVERVIEW FOR TEAMS TO BUILD JENKINS PIPELINES TO: SET THE ENVIRONMENT (EXAMPLE OF A SAMPLE DOCKERHUB REPO), CHECK OUT IMAGE CODE FROM GITHUB, BUILD THE IMAGE WITH A BUILD NUMBER, DEPLOY THE IMAGE TO A DOCKER ENVIRONMENT, PUSH THE IMAGE TO A SAMPLE DOCKER REPO, PUSH THE IMAGE TO THE CBIIT NEXSUS DOCKER REPO) - EACH STAGE INCLUDES AN MSTEAM WEBHOOK INTERGRATION FOR PUBLISHING BUILD RELATED MESSAGES TO A TEAMS CHANNEL - PLEASE NOT THAT WEBHOOKS ARE NOT ENABLED ON THE NCI TEAMS PLATFORM, SO TEAM CAN REPLACE THAT CODE WITH OTHER TYPE OF NOTIFIATION SUCH AS EMAILS.

# Pull Image from CBIIT Nexus Docker Repo
1. login to CBIIT Nexus Docker Repo with your Nexus Docker credentials

   docker login -u userID -p yourPassword -uO ncidockerhub.nci.nih.gov/docker-linux-poc

2. Pull the image

   docker pull ncidockerhub.nci.nih.gov/docker-linux-poc/centos-base-image:1.0

# Build your own Image from this baseline
   
   When you create your own Dockerfile for your project, include this statement below on top of your Dockerfile
   
   FROM ncidockerhub.nci.nih.gov/docker-linux-poc/centos-base-image:1.0
   
# CBIIT Nexus Docker Repo
<img width="1468" alt="image" src="https://user-images.githubusercontent.com/61884139/126378621-ab8d6880-e336-41b2-aee4-509d46560c64.png">

