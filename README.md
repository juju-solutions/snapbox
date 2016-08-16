# Snapbox

A Docker container that contains the tools to create 
[snaps](http://snapcraft.io).

# Usage

This image is conveniently located on the docker hub

```
docker pull jujusolutions/snapbox:onbuild
```

Now you can run the container by the following command:

```bash
docker run --rm  -v $PWD:/snaps jujusolutions/snapbox:onbuild
```
This assumes you're in your snapcraftable directory which contains `snapcraft.yaml`
and will execute the full build routine via `snapcraft`

# Pro Tip

If you're like me and hate typing in long form docker commands, this can be
aliased:

```
alias snapbuild=`docker run --rm -v $PWD:/snaps jujusolutions/snapbox:onbuild
```


Get snapping!
