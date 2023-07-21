# Durango C Example (Template)

This is template of use for DurangoLib Initial Project with a C Example.

With this example you can generate a new ROM for the Durango Computer using the DurangoLib FrameWork.

To generate a new Rom You will need one of:

1. CC65 suite, and Durango Lib Installed in your System (You need Durango Lib 0.1.1 or later).
2. [Durango Dev Kit Docker Image](https://hub.docker.com/r/zerasul/durangodevkit/tags) (You need Tag 1.0.1 or later).

After install Durango Lib or pull Docker Image you can generate a new ROM.

1. using ```make```

```bash
make # use make make16 to generate a 16K ROM.
```

2. using Docker


```bash
docker run --rm -v $PWD:/src/durango zerasul/durangodevkit:latest
```

You can use [Perdita](https://github.com/zuiko21/minimOS/tree/master/emulation) Emulator to see your ROM running.

**NOTE**: You can use Github CodeSpaces to generate a Durango ROM using Durango Docker image
