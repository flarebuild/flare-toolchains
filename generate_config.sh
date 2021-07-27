#!/bin/bash

exec "$@" -output_src_root $(dirname $(readlink $0))
