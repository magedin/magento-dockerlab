# Magento DockerLab

A development environment for Magento 2.

[![Build Status](https://travis-ci.org/magedin/magento-dockerlab.svg?branch=master)](https://travis-ci.org/magedin/magento-dockerlab)

Magento DockerLab is intended to be an easy and fast Magento 2 Docker development environment setup. Some of the key features of this environment are:

- Setup a Magento 2 development environment in seconds.
- You can have the latest Magento 2 version (or whatever version you need) with one single line of command.
- Everything you need when it comes to Magento 2 dependencies.
- Turn on and off XDebug automatically with only one command.
- Many more features!

## What's included?

Magento DockerLab is a complete stack just for your convenience and it includes the following services out of the box:

- PHP
- Nginx
- MySQL (You can use MariaDB and Percona too)
- Redis
- RabbitMQ with RabbitMQ Management
- MailHog
- ElasticSearch
- Kibana (for data visualization in ElasticSearch)

## Compatibility

- Linux

## Prerequisites

This setup assumes you are running Docker on a computer with at least 4GB of allocated RAM, a dual-core, and an SSD hard drive. [Download & Install Docker Desktop](https://www.docker.com/products/docker-desktop).

This configuration has been tested on Linux.

## Getting Started

TBD

## Debugging Magento 2 with XDebug

TBD

## Linux

Running Docker on Linux should be pretty straight-forward. Note that you need to run some [post install commands](https://docs.docker.com/install/linux/linux-postinstall/) as well as [installing Docker Compose](https://docs.docker.com/compose/install/). These steps are taken care of automatically with Docker Desktop, but not on Linux.

You may have to increase a virtual memory map count on the host system. It is required by [Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/vm-max-map-count.html).

Add following line to `/etc/sysctl.conf`:

```bash
vm.max_map_count=262144
```

## License

[MIT](https://opensource.org/licenses/MIT)
