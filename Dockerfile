FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.9

RUN gem install cfnpp --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cfnpp"]
CMD ["--help"]
