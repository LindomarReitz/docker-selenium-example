# docker-selenium-example
Example project running selenium with docker.

## Setup

Run `bundle install` and `docker-compose up -d` to initialize the containers.

To Run the tests, type `bundle exec rspec grid.rb`.

### VNC

To view the tests running inside the container (both firefox and chrome) with [RealVNC](https://www.realvnc.com/), you just need to run the tests and access the VNC terminal with the password `secret`.

More information about selenium docker containers can be viewed [here](https://github.com/SeleniumHQ/docker-selenium).
