#!/usr/bin/env bash

set -x

base_dir=/var/tmp/stone
image=${base_dir}/stone_raw.img
dev=/dev/loop200

pkill -9 stone
sleep 3
umount ${dev}p2
losetup -d $dev
rm -rf $base_dir
