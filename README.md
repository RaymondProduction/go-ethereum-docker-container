# go-ethereum in Docker container

## Simple variant

Run container from _Docker Hub_

```sh
$ docker run <docker options>  raymondperminov/go-ethereum <geth options>
```

For example
```sh
$ docker run -it -p 8545:8545 -p 8546:8546 -p 30303:30303  raymondperminov/go-ethereum console
```

## Build variant

Make clone of _go-ethereum_ from _Git Hub_
```sh
$ git clone https://github.com/ethereum/go-ethereum.git
```

Change Dockerfile

```sh
$ cp Dockerfile go-ethereum
```
Build container
```
$ docker build -t go-ethereum .
```

Run
```sh
$ docker run <docker options>  raymondperminov/go-ethereum <geth options>
```

For example
```sh
$ docker run -it -p 8545:8545 -p 8546:8546 -p 30303:30303  raymondperminov/go-ethereum console
```