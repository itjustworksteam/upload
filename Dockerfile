# default image ( git already installed )
FROM therickys93/ubuntu14
# update and upgrade the system
RUN apt-get update && apt-get upgrade -y
# install dependencies
RUN apt-get install apt-transport-https -y
# update the repositories
RUN add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
RUN curl -L https://cli-assets.heroku.com/apt/release.key | apt-key add -
# update all the system
RUN apt-get update 
# install ncftp
RUN apt-get install ncftp -y
# install heroku
RUN apt-get install heroku -y