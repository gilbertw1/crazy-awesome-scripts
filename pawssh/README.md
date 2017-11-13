### pawssh

A script that performs parallel execution of ssh commands on running aws instances.

#### Dependencies

* **[aws](https://aws.amazon.com/cli/)** - Aws command line interface
* **[orgalorg](https://github.com/reconquest/orgalorg)** - Parallel ssh commands executioner
* **[jq](https://stedolan.github.io/jq/)** - Lightweight command line json processor

#### Usage

    ./pawssh <private-key> <user> <filter> <command>


#### How it works

`pawssh` uses the aws cli tools to query all running ec2 instances matching the provided `filter` argument to filter based on the 'Name' tag for each server. It then uses orgalorg to execute the provided `command` on each instance using the `private-key` and `user` arguments to authenticate with each instance. `pawssh` additionally colorizes the server names in the output and maps the hostnames back to their tagged names.
