#!/bin/sh

$(which docker) run -d -rm \
    --name ocrmypdf \
    --entrypoint python3 \
    -p 5000:5000 \
    jbarlow83/ocrmypdf webservice.py
