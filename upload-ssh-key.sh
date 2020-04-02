#!/bin/sh

if [ $# -ne 1 ]
then
    echo "usage:\n\t$0 <ssh-key string>"
    exit -1
fi

for filename in hosts/*.txt; do
    echo "read hosts from $filename ..."
    eval "pssh -h $filename 'echo \"$1\" >> ~/.ssh/authorized_keys'"
done
