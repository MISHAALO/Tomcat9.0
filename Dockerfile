FROM tomcat:9.0
RUN apt update -y
RUN apt install default-jdk -y && apt install maven -y && apt install git -y
RUN cd .. && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello && cd boxfuse-sample-java-war-hello/ && mvn package
RUN cd /usr/local/boxfuse-sample-java-war-hello/target && cp hello-1.0.war /usr/local/tomcat/webapps/