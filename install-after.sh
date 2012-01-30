#!/bin/sh
# Copyright (C) 2007 Jari Aalto; Licenced under GPL v2 or later
#
# install-after.sh -- Custom installation
#
# The script will receive one argument: relative path to
# installation root directory. Script is called like:
#
#    $ install-after.sh .inst/
#
# This script is run after [install] command.

Cmd()
{
    echo $*
    "$@"
}

Main()
{
    root=${1:-".inst"}

    if [ ! -z "$root"  ] && [ -d "$root" ]; then
        echo ">> Install all documentation"
        Cmd cd $root/.. && cp -r htdocs mda mua $root/usr/share/doc/bs*/
    fi
}

Main "$@"

# End of file
