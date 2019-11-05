#!/bin/sh
if [ "$CL_INIT" == "" ]
then
   if [ "$ASDF_REPO" == "" ]
   then
       echo "Need set export CL_INIT='somepath/some/implementation/file' and ASDF_REPO='some path/' for install to work!"
       exit 1 # rip.
   fi
fi
export ASDF_REGISTRATION_DIR=$(dirname $0)
echo "" >> $CL_INIT # literal newline character.
cat $ASDF_REGISTRATION_DIR/initfile.lisp >> $CL_INIT
echo "" >> $CL_INIT # literal newline character.
