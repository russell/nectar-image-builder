#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

# Initialise a build environment for images
if [ ! -d ./diskimage-builder ]
then
    git clone https://github.com/openstack/diskimage-builder.git diskimage-builder
fi

# Might be useful in the future
# if [ ! -d ./tripleo-image-elements ]
# then
#     git clone https://git.openstack.org/openstack/tripleo-image-elements tripleo-image-elements
# fi
