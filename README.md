#Overview
This is one project in a suite of cooperating projects that are used to simulate a real world application.  This
simulation is used to evaluate different application monitoring services as well as distributed logging solutions.

This project provisions the simulation environment by pulling down and installing the numerous Docker containners 
used in the simulation.
#Prerequisites

* [Docker](https://www.docker.com/) installed and working
* [Docker Compose](https://docs.docker.com/compose/) installed and working
* Development and testing was done on [Ubuntu Linux](http://www.ubuntu.com/)

#Building
All the components of the simulation live in repositories on the internet so there is nothing to build.

#Installation
To start the environment, run `./start.sh`.  That will pull down the Docker image and start them in the background.

#Tips and Tricks

##Verifying The Setup
The API Gateway application can respond to health checks and report back whether or not connectivity is available to its required services.  Run
`./check-health.sh` to check on status of the various resources.

##Push Requests Through The Sytem
There is a simple script that you can launch that will send a hand full of requests to the server. Execute `./send-request.sh` to run it.
You can edit the `request.json`file to experiment with different latency settings.  Valid values include `fast`, `normal` and `slow`.

#Troubleshooting

## Start With A Clean Slate
If you are having problems spinning up the containers, you might want to scrub your system.  Run 
`./nuke-containers-and-images.sh` to remove Docker containers and images.  **WARNING:** this cannot be undone, is a rather drastic 
measure but usually yields positive results.


#License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

#List of Changes
