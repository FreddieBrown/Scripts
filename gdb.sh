#!/bin/bash
docker_image_name="ubuntu:latest"
executable="$1"
shift
arguments="$@"

read -r -d '' COMMANDS << EOM
        cd /test/;
        make clean debug;
        gdb $executable;
EOM

docker run --security-opt seccomp=unconfined -ti -v $PWD:/test $docker_image_name bash -c "$COMMANDS"
