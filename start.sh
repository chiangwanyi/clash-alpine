#!/bin/bash

docker run -d \
    --name my-clash \
    -p 7890:7890 \
    -p 7891:7891 \
    -p 7892:7892 \
    -p 9090:9090 \
    clash-alpine:v1.0.0    
