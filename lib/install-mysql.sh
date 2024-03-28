#!/usr/bin/env bash
# Copyright (c) 2024 Kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

set -o errexit
set -o nounset
set -o pipefail

kshell::install-mysql::install() {
    echo "call ${FUNCNAME}"
}

kshell::install-mysql::config() {
    echo "call ${FUNCNAME}"
}

kshell::install-mysql::service() {
    echo "call ${FUNCNAME}"
}

kshell::install-mysql::check() {
    echo "call ${FUNCNAME}"
}

kshell::install-mysql::run() {
    kshell::install-mysql::install
    kshell::install-mysql::config
    kshell::install-mysql::service
    kshell::install-mysql::check
}
