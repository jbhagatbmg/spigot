# spigot
spigot installer and run scripts + install craftbukkit in local repo

## Install

In order to install spigot, run:

```./install <DIR>```

where ```<DIR>``` is the target directory (must exist).

This script will download the spigot installer and run it (it downloads the minecraft server, and creates the bukkit api compatible version).

The script will insall the craftbukkit jar in the maven local repo.

## Run the server

After installing the target directory contains a start.sh script to start the minecraft server:

```./start.sh ```

The server has the scala api in its class path for cool plugins developments...

