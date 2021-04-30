# Magento setup

## Permissions

Give permissions to scripts

Run:
```shell script
chmod -R +x bin/
mkdir web
```

## Container installation
Run:
```shell script
bin/setup
```

# Create a new Magento project
Run:
```shell script
bin/setup-magento-new
```
For other Magento version change MAGE_VERSION in bin/setup-magento-new


# For an existing project
Run:
```shell script
cd web && git clone myproject
```

## Fix file and folder permissions

Run:
```shell script
bin/fix-permissions
```

## Available commands

### Start containers
```shell script
bin/start
```

### Stop containers
```shell script
bin/stop
```

### Restart containers
```shell script
bin/restart
```

### Required: Elastic search configutarions
Set vm.max_map_count to at least 262144edit
The vm.max_map_count kernel setting must be set to at least 262144 for production use.

How you set vm.max_map_count depends on your platform:

Linux

The vm.max_map_count setting should be set permanently in /etc/sysctl.conf:
```shell script
grep vm.max_map_count /etc/sysctl.conf
vm.max_map_count=262144
```
To apply the setting on a live system, run:
```shell script
sysctl -w vm.max_map_count=262144
```

### Create admin user

Go to `bin/create-admin-user` file and edit admin user data, save and run:

```shell script
bin/create-admin-user
```

### Run `bin/magento` commands

To run any `bin/magento` command, just run:

```shell script
bin/magento command
```

### Run any command in php container

```shell script
bin/cli command
```

### Acess php container

```shell script
bin/php
```

### Use composer in php containers

```shell script
bin/composer command
```

