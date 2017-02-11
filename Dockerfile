FROM therickys93/ubuntu14
RUN apt-get update && apt-get upgrade -y
RUN apt-get install ncftp apt-transport-https -y
RUN add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
RUN curl -L https://cli-assets.heroku.com/apt/release.key | apt-key add -
RUN apt-get update && apt-get install heroku -y