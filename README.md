# Snapbox

A Docker container that contains the tools to create 
[snaps](http://snapcraft.io).

## Usage

If you already have Docker installed, then you must build the container.

```bash
docker build -t snapbox .
```

Now you can run the container by the following command:

```bash
docker run --rm -it -v host/snap/directory:/home/snapper/snaps snapbox 
```

When inside the container you have all the snapcraft tools installed and 
can build snaps. Using the volume mount to a directory on the host will save 
the built snaps to your host and persist after the snapbox is removed.

Get snapping!
