#!/bin/bash

# -*- mode: bash; tab-width: 4; indent-tabs-mode: nil -*-

EC2_META_API_ENDPOINT=http://169.254.169.254/1.0/meta-data

function easy2-instance-meta() {

    local key value

    key=$1
    wget --timeout=0 -qO- $EC2_META_API_ENDPOINT/$key 2>/dev/null

    return $?
}

function easy2-info() {
    logger -t easy2 -p syslog.info $1
}

function easy2-error() {
    logger -t easy2 -p syslog.error $1
}