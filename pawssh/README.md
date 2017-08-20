pawssh
======

A script that performs parallel execution of ssh commands on running aws instances.

#### Dependencies

* aws - Aws command line interface (https://aws.amazon.com/cli/)
* orgalorg - Parallel ssh commands executioner (https://github.com/reconquest/orgalorg)
* jq - Lightweight command line json processor (https://stedolan.github.io/jq/)

#### Usage

    ./pawssh <private-key> <user> <filter> <command>


#### How it works

`pawssh`uses the aws cli tools to query all running ec2 instances matching the provided `query` argument to filter based on the 'Name' tag for each server. It then uses orgalorg to execute the provided `command` on each instance using the `private-key` and `user` arguments to authenticate with each instance. `pawssh` additionally colorizes the server names in the output and maps the hostnames back to their tagged names.
