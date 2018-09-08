#!/bin/bash
set -euox pipefail

BACKUP_DIR=/tmp/dotconfig_backup/fontconfig
DIR="$(cd "$(dirname "$0")";pwd -P)"

rm -rf $BACKUP_DIR
mkdir -p $BACKUP_DIR
[ -e ~/.fonts ] && mv ~/.fonts $BACKUP_DIR
ln -sf $DIR/fonts ~/.fonts
