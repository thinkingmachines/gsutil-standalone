#!/usr/bin/env bash
if [ ! -f ./gsutil/gsutil ]; then
    tar xfz gsutil.tar.gz
fi
chmod 600 $1
./gsutil/gsutil -m -o Credentials:gs_service_key_file=$1 cp $2 $3
