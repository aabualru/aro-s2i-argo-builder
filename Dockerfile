FROM s2ipoc.azurecr.io/jboss-webserver-6/jws60-openjdk17-openshift-rhel8

USER root
ADD --chown=1001:0 src /tmp/src

USER 1001
RUN /usr/local/s2i/assemble
CMD /usr/local/s2i/run
