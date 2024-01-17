FROM <acr-registry-name>.azurecr.io/jboss-webserver-6/jws60-openjdk17-openshift-rhel8

USER root
ENV S2I_HOME=/home/jboss
WORKDIR ${S2I_HOME}

ADD --chown=1001:0 test-app-service/src /tmp/src
ADD --chown=185:0 ./.s2i/bin/ ${S2I_HOME}/.s2i/bin

RUN chmod -R 775 ${S2I_HOME}/.s2i/bin && ${S2I_HOME}/.s2i/bin/assemble

USER 1001
CMD ${S2I_HOME}/.s2i/bin/run
