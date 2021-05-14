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
- Percona PMM Server ([Percona Monitoring and Management](https://www.percona.com/software/database-tools/percona-monitoring-and-management))

## Compatibility

- Linux
- macOS
- Windows (WSL2)

## Prerequisites

This setup assumes you are running Docker on a computer with at least 4GB of allocated RAM, a dual-core, and an SSD hard drive. [Download & Install Docker Desktop](https://www.docker.com/products/docker-desktop).

This configuration has been tested on Linux.

## Getting Started

This docker compose project is intended to make the developer's life easier when it comes to Magento 2 development environment. The Magento 2 installation process is very straightforward by using this project.

### Installing Everything Automatically

In many cases, when we are starting a new project or we just want to play around with Magento 2, we just need to setup a new environment without any complexity, configuration or anything like that. The problem is that most of the times we struggle so much with setting up a new environment that we give up in the middle of the process.

This docker compose has an automation to avoid any headaches when it comes to having a Magento 2 running in your local machine. Just follow the following steps:

#### Setup a Virtual Host

With a vhost it becomes easier to install and run Magento 2.

- Open your terminal;
- Run `> sudo vim /etc/hosts`;
- Add the follwing line if it does not exist: `127.0.0.1 ::1  magento2.test`;
- Save the document.

#### Install Magento 2

This is very simple!

- Run `bin/setup`

#### Test the New Installation

Now go to your default browser and type the following address in the address bar:

`https://magento2.test`

Because of the SSL was a self-signed one the browser will complain about the risk of accessing this resource, blá, blá, blá. Just keep on accessing the website.

#### Setup Self Signed SSL

For each installation of this project you'll have a new Certified Authority (CA) file generated. You probably don't know exactly what this means and what's it importance of this file but, in a nutshell, I can say that this file makes your browser to trust your self-signed SSL certificate as if you had bought one.

To import the CA file you need to take the following steps:

##### For Google Chrome

- Go to `Settings > Privacy and Security > Security > Manage Certificates > Authorities > Import`.
- Navigate to the root project where your Magento was installed and go to `var/ssl/ca` and choose the auto-generated file `rootCA.pem`.

##### For Firefox

- Go to `Preferences > Privacy & Security > Certificates > View Certificates > Authorities > Import`.
- Navigate to the root project where your Magento was installed and go to `var/ssl/ca` and choose the auto-generated file `rootCA.pem`.

- That's it! Now the little locks in the left side of your browser's address bar is green and you are not going to be warned again about self-signed certificates for this project.

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
