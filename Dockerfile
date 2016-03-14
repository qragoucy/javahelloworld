FROM java:7
COPY src /home/yuntac/javahelloworld/src
WORKDIR /home/yuntac/javahelloworld 
RUN mkdir bin &&  javac -d bin src/HelloWorld.java
ENTRYPOINT ["java" , "-cp" , "bin" , "HelloWorld"]
MAINTAINER quentin ragoucy
ENV FOO bar
