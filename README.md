# Food Delivery Server

A server app built using [Shelf](https://pub.dev/packages/shelf),
configured to enable running with [Docker](https://www.docker.com/).

# Running the server

## Running with the Dart SDK

You can run the server app with the [Dart SDK](https://dart.dev/get-dart)
like this:

```
$ dart run bin/server.dart
Server listening on port 8080
```

## Running with Docker

If you have [Docker Desktop](https://www.docker.com/get-started) installed, you
can build and run with the `docker` command:

```
$ docker build . -t myserver
$ docker run -it -p 8080:8080 myserver
Server listening on port 8080
```

# Routes

## Get products
```
http://localhost:8080/products
```

## Get product by id
```
http://localhost:8080/products/p1
```

## Get image by id
```
http://localhost:8080/images/i1
```