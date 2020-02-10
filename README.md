# aws-connect

Wrapper script around AWS session manager to establish remote shell connections or SSH tunnels

## Usage

```bash
Usage:

/usr/local/bin/aws-connect -a ssh|tunnel -n <instance name> [-r region] [-p profile name] [-o port] [-x instance id] [-s] [-h] [-v]

  -a   Connect interactive session or establish ssh tunnel (default: ssh)
  -n   Value for the Name tag of an EC2 instance
  -r   AWS region (default: us-east-1)
  -p   AWS profile (default: none)
  -o   Local ssh tunnel port (only applicable in tunnel mode; default: 9999)
  -x   override Name tag and connect direct to given instance ID
  -s   Pick a specific instance ID
  -h   Display this help
  -v   Display version
  ```

## Prerequisites

* AWS CLI version 1.16.299 or higher
* AWS session manager plugin ([see the install documentation](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html))
  * NOTE: Do not install the session manager plugin from brew as it does not grant gatekeeper access on the Mac

## Sample Commands

1. Establish an interactive shell session with an instance tagged with the Name of my-app in the us-east-2 region using the AWS CLI profile `staging`

`aws-connect -a ssh -n my-app -r us-east-2 -p staging`

NOTE: If there are multiple instances with the same tag, one is chosen

2. Establish an interactive shell session with a specfic instance tagged with a Name of my-app in the us-east-2 region using the AWS CLI profile

`aws-connect -a ssh -n my-app -r us-east-2 -p staging -s`

In this case, a list of instance IDs will be provided and one can be chosen to connect to

3. Establish an SSH tunnel with an instance tagged with the Name of my-app in the us-east-2 region using the AWS CLI profile `staging`. The local port is 8888

`aws-connect -a tunnel -n my-app -r us-east-2 -p staging -o 8888`

The SSH tunnel can then be used for things like connecting to an RDS database that the instance may have access to. Just point your DB client to localhost, port 8888 for the SSH forwarding.
