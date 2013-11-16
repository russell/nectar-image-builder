#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

# Example breakpoint
# export break=before-pre-install

export DIB_RELEASE=${DIB_RELEASE:-$(sed 's/build-ubuntu-\(.*\).sh/\1/' <<< `basename $0`)}
export IMAGE_NAME="image-$DIB_RELEASE"
export IMAGE_TYPE=raw
export ELEMENTS_PATH=$DIR/image-elements:$DIR/diskimage-builder/elements

./diskimage-builder/bin/disk-image-create ubuntu vm aarnet nectar $@
