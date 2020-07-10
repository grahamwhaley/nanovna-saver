# How to build and run with `docker`

First, you will need to clone this github repository to your local machine.

## Build the image

Build the image using the [`dockerbuild.sh`](./dockerbuild.sh) file:

```bash
./dockerbuild.sh
```

Which runs a command such as:

```bash
docker build --label "nanovnasaver" --tag "nanovnasaver" .
```

## Run the image

Now run the below command to execute the image you built, which should get you the nanovna-saver
GUI up on your host screen:

```bash
./dockerrun.sh
```

Note, running this image mounts your nanovna-source into the image under the `/nanovna-saver`
subdirectory - this is so you can save and re-load configurations and export images and have
them visible to your host, and not deleted when you close your docker sesssion.

The Actual docker run command looks similar to:

```bash
docker run -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd):/nanovna-saver \
    -e DISPLAY=$DISPLAY \
    -u qtuser:dialout \
    --device=/dev/ttyACM0 \
    nanovnasaver python3 /nanovna-saver/nanovna-saver.py
```

