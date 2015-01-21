#!/bin/bash
##  following 
##  http://www.spigotmc.org/wiki/buildtools/
##
##  

DIR=$1

cp ./start.sh $DIR/
cd $DIR

curl https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar >BuildTools.jar

export MAVEN_OPTS="-Xmx2G"
java -Xmx2G -Dmac.supported=true -jar BuildTools.jar
sed "s/false/true/" eula.txt | tee eula.txt

## Make sure evil is there for others to extend...

mvn install:install-file -Dfile=craftbukkit-1.8.jar -DgroupId=org.bukkit \
    -DartifactId=craftbukkit -Dversion=1.8 -Dpackaging=R0.1-SNAPSHOT

## And yep, we want to run minecraft with scala mods...

curl -L -C - -O http://repo1.maven.org/maven2/org/scala-lang/scala-library/2.10.2/scala-library-2.10.2.jar
