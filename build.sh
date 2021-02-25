cd spigot
check_eula() {
    if [ ! -e eula.txt ]
    then
        java -jar spigot.jar
        sed -i 's/false/true/g' eula.txt
    fi
}

buildTools=https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
if [ -f "BuildTools.jar" ]; then
    if [[ $(find . -maxdepth 1 -name 'spigot*.jar') ]];
    then
        mv spigot*.jar spigot.jar
        check_eula
    else
        java -jar BuildTools.jar --rev ${SPIGOT_VERSION}
        check_eula
    fi
else
    wget $buildTools
fi

exec java -server -Xms${MC_RAM} -Xmx${MC_RAM} ${JAVA_OPTS} -jar spigot.jar nogui