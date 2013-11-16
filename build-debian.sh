#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

# Example breakpoint
# export break=before-pre-install
# export break=before-install
# export break=after-install
# export break=after-finalise

export DIB_RELEASE=${DIB_RELEASE:-$(sed 's/build-debian-\(.*\).sh/\1/' <<< `basename $0`)}
export DIB_MIRROR=http://mirror.aarnet.edu.au/debian/
export IMAGE_NAME="image-debian-$DIB_RELEASE"
export IMAGE_TYPE=raw
export ELEMENTS_PATH=$DIR/image-elements:$DIR/diskimage-builder/elements

./diskimage-builder/bin/disk-image-create debian vm aarnet nectar $@
