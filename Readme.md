# Durango C Example

This is an example of use of DurangoLib with a C Example.

With this example you can generate a new ROM for the Durango Computer using the DurangoLib FrameWork.

To generate a new Rom You will need one of:

1. CC65 suite, and Durango Lib Installed in your System (You need Durango Lib 0.0.3 or later).
2. [Durango Dev Kit Docker Image](https://hub.docker.com/r/zerasul/durangodevkit/tags) (You need Tag 0.0.3 or later).

After install Durango Lib or pull Docker Image you can generate a new ROM.

1. using ```make```

```bash
make # use make make16 to generate a 16K ROM.
```

2. using Docker


```bash
docker run --rm -v $PWD:/src/durango zerasul/durangodevkit:latest #add make make16 to generate 16K ROM.
```
