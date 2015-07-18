FROM ubuntu

RUN apt-get install -y git-core python
RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /CouchPotatoServer
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 5050

VOLUME ["/config", "/movies", "/data/complete"]

ENTRYPOINT ["python", "/CouchPotatoServer/CouchPotato.py", "--data_dir", "/config"]
