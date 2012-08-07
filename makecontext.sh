#!/bin/bash

## make EC-CUBE context

BIN_RM="/bin/rm -rf"
BIN_TAR="/usr/bin/tar"
BIN_MKDIR="/bin/mkdir"
BIN_CD="cd"

## make context

## create archive
${BIN_CD} ./contexts/krm/
${BIN_TAR} czpf ./web_root.tar.gz {public_html,docs,data,test,COPYING}
${BIN_RM} ./{public_html,docs,data,test,COPYING}
${BIN_CD} ../
${BIN_TAR} czpf ./krm.tar.gz ./krm/*
#${BIN_RM} ./krm

## end


