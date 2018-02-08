# Build Geth in a stock Go builder container
FROM debian:9.3-slim
RUN  apt-get update &&  apt-get -y upgrade
RUN  apt-get install -y wget

RUN wget https://storage.googleapis.com/golang/go1.9.2.linux-amd64.tar.gz

RUN  tar -xvf go1.9.2.linux-amd64.tar.gz && mv go /usr/local

ADD . /go-ethereum
ENV GOROOT /usr/local/go
ENV PATH $GOPATH/bin:$GOROOT/bin:$PATH

RUN  apt-get install -y build-essential && cd /go-ethereum && make geth



EXPOSE 8545 8546 30303 30303/udp 30304/udp
ENTRYPOINT ["/go-ethereum/build/bin/geth"]
