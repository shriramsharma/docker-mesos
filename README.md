Apache Mesos Docker
==================

### Steps to follow: ###
1. Clone the project.
   `git clone https://github.com/shriramsharma/docker-mesos.git`
2. Build the DockerFile.
   `sudo docker build -t <user_name>/<image_name> .`
3. Run the docker image.
   `sudo docker run -d -p 2222:22 -p 5050:5050 <user_name>/<image_name>`
4. SSH
   `ssh root@<ip_address> -p 2222`

### The following commands are to configure and run the Mesos cluster ###
1. From inside the Mesos run:
   `./configure`
2. Run make
   `make`
3. Launch the master
   `bin/mesos-master.sh`
4. To launch a slave
   `bin/mesos-slave.sh --master=<ip_address>:5050`


Check Readme here for more info -> https://github.com/apache/mesos/blob/master/docs/getting-started.md 
