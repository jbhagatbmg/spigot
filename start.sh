#!/bin/sh

cd "$( dirname "$0" )"
java -Xms512M -Xmx1536M -XX:MaxPermSize=128M -cp "scala-library-2.10.2.jar:spigot-1.8.jar" org.bukkit.craftbukkit.Main

