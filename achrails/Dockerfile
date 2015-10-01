FROM learninglayers/ror
MAINTAINER Jukka Purma <jukka.purma ÄT aalto.fi>

# Doing the bundle install with local files so that its result gets cached.
# If these are not up to date with the github version of achrails, it spells trouble,
# but couldn't get COPY or ADD working with files downloaded from the Dockerfile.  
WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install


RUN mkdir achrails

RUN curl -SL https://github.com/learning-layers/achrails/archive/v0.4-alpha.tar.gz \
    | tar -zxC achrails --strip-components=1

ADD . /achrails
WORKDIR /achrails


VOLUME /achrails
CMD ["rails","server","-b","0.0.0.0"]