FROM rails:onbuild
MAINTAINER Mook <mookjpy@gmail.com>

ENV RAILS_ENV=production

# Set it from run command if you need to run specific job
ENV QUEUE=*

CMD ["bundle exec rake environment resque:work"]
