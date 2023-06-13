FROM alpine

LABEL "repository"="http://github.com/devitocodespro/git-sync"
LABEL "homepage"="http://github.com/devitocodespro/git-sync"
LABEL "maintainer"="Gerard Gorman <gerard@devitocodes.com>"

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
