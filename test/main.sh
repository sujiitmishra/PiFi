#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && source <(curl -s "https://raw.githubusercontent.com/nicholasadamou/bash-utils/master/utils.sh")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    # ' At first you're like "shellcheck is awesome" but then you're
    #   like "wtf[,] [why] are we still using bash[?]" '.
    #
    #  (from: https://twitter.com/astarasikov/status/568825996532707330)

    find \
        ../src \
        -type f \
        -exec shellcheck \
                -e SC1090 \
                -e SC1091 \
                -e SC2155 \
                -e SC2164 \
        {} +

    print_result $? "Run code through ShellCheck"

}

main