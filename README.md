# inotify

This project will allow for deploying a docker container which utilizes inotifywait to monitor a given dir. \

This expects a docker client and uses centos7 container images.\


FILES:\
inotify.sh - shell script which monitors a given dir and upon change compresses and saves the contents of said dir. \
This script uses 3 variables:\
$watchdir - The directory you would like to monitor with inotifywait\
$logfile - the location and name of desired output logfile\
$outputdir - the location of the resulting compressed archive of files\

Dockerfile - this is the dockerfile which builds the docker image on the docker host. Currently it pulls the 1.5 version from docker hub spink10 repository. \




Playbooks:\
main.yml \
this play builds the image and then starts the container running the inotify shell script monitoring a preconfigured directory inside the container itself.\



Usage:\
Ensure docker is installed on a Centos host\
edit inventory\
run main.yml\
