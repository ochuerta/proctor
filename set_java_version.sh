# Set the Java version for this project
unset JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/java-11-11.0.10_9-zulu-11.45.27
export PATH=$JAVA_HOME/bin:$PATH
echo $PATH
which java
java -version

# Start a new shell session with these variables
exec "$SHELL"
