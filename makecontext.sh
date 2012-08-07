#!/bin/bash

## make EC-CUBE context

BIN_RM="/bin/rm -rf"
BIN_TAR="/usr/bin/tar"
BIN_CD="cd"

## create archive
${BIN_CD} ./contexts/krm/
${BIN_TAR} czf web_root.tar.gz public_html docs data test COPYING
${BIN_RM} public_html docs data test COPYING
${BIN_TAR} czf ../krm.tar.gz web_root.tar.gz nginx.conf
${BIN_RM} ./contexts/krm/

## end


