#!/usr/bin/env bash
# Copyright (c) 2024 Kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

set -o errexit
set -o nounset
set -o pipefail

kshell::install-nginx::install() {
    echo "call ${FUNCNAME}"
}

kshell::install-nginx::config() {
    echo "call ${FUNCNAME}"
}

kshell::install-nginx::service() {
    echo "call ${FUNCNAME}"

}

kshell::install-nginx::check() {
    echo "call ${FUNCNAME}"
}

kshell::install-nginx::run() {
    kshell::install-nginx::install
    kshell::install-nginx::config
    kshell::install-nginx::service
    kshell::install-nginx::check
}
