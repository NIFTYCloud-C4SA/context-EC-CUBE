#!/bin/bash

## make EC-CUBE context

BIN_CURL="/usr/bin/curl -L"
BIN_GIT="/usr/bin/git"
BIN_MV="/bin/mv"
BIN_RM="/bin/rm -rf"
BIN_TAR="/usr/bin/tar"
BIN_UNZIP="/usr/bin/unzip"
BIN_MKDIR="/bin/mkdir"

URL_REPO=""
#URL_ARCHIVE="http://ja.wordpress.org/latest-ja.tar.gz"

PATH_WORKDIR="./workdir"

## make context
${BIN_MKDIR} ${PATH_WORKDIR}

#${BIN_CURL} -o ${PATH_WORKDIR}/tmp_eccube.tar.gz ${URL_ARCHIVE}
${BIN_TAR} zxf ${PATH_WORKDIR}/tmp_eccube.tar.gz -C ${PATH_WORKDIR}/
${BIN_MV} ${PATH_WORKDIR}/eccube*/* ./contexts/krm/public_html/
${BIN_RM} ${PATH_WORKDIR}

## edit context


## create archive
${BIN_TAR} czf ./contexts/krm/web_root.tar.gz ./contexts/krm/public_html
${BIN_RM} ./contexts/krm/public_html
${BIN_TAR} czf ./contexts/krm.tar.gz ./contexts/krm
${BIN_RM} ./contexts/krm/

## end


