# /bin/bash

set -ex

cd /app

bash ./compose_scripts/test.sh valgrind
