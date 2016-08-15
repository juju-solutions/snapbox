FROM ubuntu:16.04

ENV RUN_USER=snapper

VOLUME "/home/${RUN_USER}/snap"

ADD install-tools.sh /install-tools.sh
RUN /install-tools.sh

ADD add-user.sh /add-user.sh
RUN /add-user.sh

RUN rm -f /install-tools.sh /add-user.sh

ADD run.sh /run.sh

WORKDIR "/home/${RUN_USER}"
ENTRYPOINT "/run.sh"
