#!/bin/bash
PHANTOM='./node_modules/.bin/mocha-phantomjs http://127.0.0.1:3000/'
ENB=./node_modules/.bin/enb
JSHINT=./node_modules/.bin/jshint
RUN_LINT=


function lint {
    find blocks -type f | grep -vEe 'deps.js' | xargs $JSHINT 1>&2
}

if [ $1 ]; then
    while test $# -gt 0; do
        case "$1" in
            -l|--lint|--jslint)
                #lint;
                RUN_LINT=true;
                ;;
            *)
                echo Unknown option: "$1"
                echo "Use: -l (--lint|--jslint)"
                ;;
        esac;
        shift;
    done;
else
    RUN_LINT=true
    RUN_MAKE=true
fi;

if [ $RUN_LINT ]; then
    lint;
fi;
