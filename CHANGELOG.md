# CHANGELOG

## [1.0.20]

- @adam-prickett Use the default region if no region configured for a profile

## [1.0.19]

- @meirshal Exit with an error if the SSM command does not complete successfully

## [1.0.18]

- @davegallant Let the shell find bash for better portability

## [1.0.17]

- @Lugoues support tunnels other than ssh (via use of `-f` flag) 

## [1.0.16]

- @Lugoues Better handling of regions and reading of AWS_REGION env var

## [1.0.15]

- @jValdron Allow passing a document to all sessions

## [1.0.14]

- Hotfixed a default profile bug

## [1.0.13]

- Added sha256 auto generation to version releases. 
- Added the ability to specify if the command is long running

## [1.0.12]

- Added addition feature to be able to run ssm documents on an instance

## [1.0.11]

- @JonaC22 check for session manager plugin in additional location

## [1.0.10]

- Support for specifying an instance by tag

## [1.0.9]

- Update readme

## [1.0.8]

- Change interactive flag to be consistent with other tooling

## [1.0.7]

- added -x flag to pass in instance ID directly

## [1.0.6]

- Added some additional help

## [1.0.5]

- added github action to release

## [1.0.4]

- Added version flag

## [1.0.3]

- Moved session manager check

## [1.0.2]

- Check for AWS CLI version
- Install session manager plugin if not present

## [1.0.1]

- Fixed session manager plugin check

## [1.0.0]

- Inital release
