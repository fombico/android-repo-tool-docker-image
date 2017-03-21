FROM gliderlabs/alpine:latest

# Set the timezone.
RUN apk add --update tzdata
ENV TZ=America/Toronto

RUN apk add --update curl python git openssh bash && \
    rm -rf /var/cache/apk/*

ADD scripts/install_repo.sh install_repo.sh
RUN ./install_repo.sh

# can't `git merge` unless we set these
RUN git config --global user.email "git@localhost" && \
      git config --global user.name "git"