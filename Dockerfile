FROM alpine

RUN apk add  --update git python && rm -rf /var/cache/apk/*
RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /CouchPotatoServer

EXPOSE 5050

VOLUME ["/couchpotato_data", "/movies", "/data/complete"]

ENTRYPOINT ["python", "/CouchPotatoServer/CouchPotato.py", "--data_dir", "/couchpotato_data"]
