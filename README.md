# Magento setup

## Permissions

Give permissions to scripts

Run:
```shell script
chmod -R +x bin/
chmod -R +x dev/base/
```

## Magento project

### Existing Magento project

Download Magento project and copy to "web" folder

### New Magento 2.4 project

Run:
```shell script
bin/setup
```

If you need install another version of Magento, go to `dev/base/create-project` and edit `MAGE_VERSION`.

## Setup install

Run setup install:
```shell script
bin/setup
``` 

## Fix file and folder permissions

Run:
```shell script
bin/fix-permissions
```

## Available commands

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

