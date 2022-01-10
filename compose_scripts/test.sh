# /bin/bash

set -ex

WRAPPER=""

if [ $# -gt 0 ]; then
	WRAPPER="$1"
	echo "Wrapping test commands with: ${WRAPPER}"
fi

cd /app

bash ./compose_scripts/build.sh template-repo-c

${WRAPPER} ./bin/template-repo-c
