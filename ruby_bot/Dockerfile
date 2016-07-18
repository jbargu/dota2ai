FROM rails:4.2.5

# Additional packages required for RVM user level installation
RUN apt-get update -qq && apt-get install -y default-jre-headless unison sudo --no-install-recommends && rm -rf /var/lib/apt/lists/*

# install gems
COPY Gemfile* /tmp/
WORKDIR /tmp
RUN bundle install

# create app directory
ENV APP_HOME /usr/src/app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# container user
RUN groupadd rubist
RUN useradd -ms /bin/bash -g rubist rubist
USER rubist

CMD rails s -b 0.0.0.0
