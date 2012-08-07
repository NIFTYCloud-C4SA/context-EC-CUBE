#!/bin/bash

## make EC-CUBE context

BIN_RM="/bin/rm -rf"
BIN_TAR="/usr/bin/tar"


## create archive
${BIN_TAR} czf ./contexts/krm/web_root.tar.gz ./contexts/krm/public_html ./contexts/krm/doc ./contexts/krm/data ./contexts/krm/test ./contexts/krm/COPYING
${BIN_RM} ./contexts/krm/public_html ./contexts/krm/doc ./contexts/krm/data ./contexts/krm/test ./contexts/krm/COPYING
${BIN_TAR} czf ./contexts/krm.tar.gz ./contexts/krm
${BIN_RM} ./contexts/krm/

## end


