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
There is a simple script that you can launch that will send a hand full of requests to the server. Execute `bin/send-request.sh` to run it.
You can edit the `bin/request.json` to experiment with different latency settings.  Valid values include `fast`, `normal` and `slow`.

##Health Check
The application can respond to health checks and report back whether or not connectivity is available to its required services.  Run
`bin/check-health.sh` to check on the application's status. This can be used to verify the configuration settings for RabbitMQ and PostgreSQL are
correct.

##Use Docker
There is a [companion project](https://github.com/kurron/docker-monitor-postgresql) that wraps the application into a Docker container and is
probably a more convenient way to launch the application.

##Configuration
The application's configuration settings are controlled via `src/main/resources/config/application.yml`.  You can change the values and rebuild
the application, if desired.  A simpler way is to override those settings at application launch time.  For example:

```bash
$JAVA_HOME/bin/java -jar build/libs/monitor-postgresql-0.0.0-RELEASE.jar --server.port=1234 --spring.rabbitmq.host=192.168.1.10
```

#Troubleshooting

#License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

#List of Changes
