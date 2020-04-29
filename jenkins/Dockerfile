FROM ubuntu as init

## Run the custom installation script 
COPY script.sh /script.sh
RUN chmod +x /script.sh
RUN /script.sh

FROM jenkins/jenkins:lts

## set user to 'root' to allow following tasks 
USER root
ENV USER_TIMEZONE=Asia/Kolkata
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
RUN /usr/local/bin/install-plugins.sh git sonar

## copy maven and sonar downloaded and extracted by "init" image
COPY --from=init /app /opt

## Reset default USER to jenkins (reduced privilleges)
USER jenkins
