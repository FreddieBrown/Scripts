#!/bin/bash
docker_image_name="ubuntu:latest"
executable="$1"
shift
arguments="$@"

read -r -d '' COMMANDS << EOM
        cd /test/;
        gcc -o $executable $executable.c
        valgrind --leak-check=full --track-origins=yes --show-leak-kinds=all ./$executable $arguments;
EOM

docker run -ti -v $PWD:/test $docker_image_name bash -c "$COMMANDS"
