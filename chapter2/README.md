# Introduction
Welcome to Spring Microservices in Action, Chapter 2.  Chapter 2 focuses on what exactly is a microservice and goes into more detail on how to build a microservice using Spring Boot.  This chapter in this code focuses on building a single service called the licensing service.  After you have compiled and started the code you should have a service called the licensing service up and running.

# Software needed
1.	Apache Maven (http://maven.apache.org). I used version 3.3.9 of the Maven. I chose Maven because, while other build tools like Gradle are extremely popular, Maven is still the pre-dominate build tool in use in the Java ecosystem. All of the code examples in this book have been compiled with Java version 1.8.
2.	Docker (http://docker.com). I built the code examples in this book using Docker V1.12 and above. I am taking advantage of the embedded DNS server in Docker that came out in release V1.11. New Docker releases are constantly coming out so it's release version you are using may change on a regular basis.
3.	Git Client (http://git-scm.com). All of the source code for this book is stored in a GitHub repository. For the book, I used version 2.8.4 of the git client.

# Environment

These samples expect a SMIA_USER environment variable to be set to something unique for the user (username perhaps).  The value of this variable will be included in the
repository name for the image to uniquely identify it.  This is useful when multiple people attempt to build a Docker image for the same sample.

# Building the Docker Images for Chapter 2
To build the code examples for Chapter 1 as a docker image, open a command-line window change to the directory where you have downloaded the chapter 1 source code.

Run the following maven command.  This command will execute the [Spotify dockerfile-maven plugin](https://github.com/spotify/dockerfile-maven) defined in the pom.xml file.  

   **mvn clean package**

If everything builds successfully you should see a message indicating that the build was successful.

# Running the Application for Chapter 2

Now we are going to use docker-compose to start the actual image.  To start the docker image,
change to the docker-compose directory in your chapter 1 source code.  Issue the following docker-compose command:

   **docker-compose up**

If everything starts correctly you should see a bunch of spring boot information fly by on standard out.  At this point all of the services needed for the chapter code examples will be running.

To determine the port on the host which Docker has mapped the container port (8080) to use:

  **docker ps**
  
This will show the port mapping, for example: 0.0.0.0:32769->8080/tcp indicating that port 32768 on the host is mapped to 8080n (Tomcat) on the container.
