FROM fedora:28
RUN dnf -y install openssl && dnf -y update && dnf clean all
ADD oc /usr/bin
ADD generate /usr/bin/cersec

USER cersec
WORKDIR /home/cersec
ENTRYPOINT ["cersec"]
