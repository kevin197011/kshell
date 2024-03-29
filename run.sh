#!/usr/bin/env bash
# Copyright (c) 2024 Kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

set -o errexit
set -o nounset
set -o pipefail

source lib/install-nginx.sh
source lib/install-mysql.sh

krun::main() {
    local functions=$(declare -F | awk '{print $3}')
    local pattern="run$"

    for func in ${functions}; do
        [[ ${func} =~ ${pattern} ]] && eval "${func}"
    done
}

# Run main
krun::main "$@"
