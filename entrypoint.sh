#!/usr/bin/env bash

set -e
set -u
set -o pipefail

#if [ -n "${PARAMETER_STORE:-}" ]; then
 # export PERSONAS_CRUD__PGUSER="$(aws ssm get-parameter --name /${PARAMETER_STORE}/personas_crud/db/username --output text --query Parameter.Value)"
 # export PERSONAS_CRUD__PGPASS="$(aws ssm get-parameter --with-decryption --name /${PARAMETER_STORE}/personas_crud/db/password --output text --query Parameter.Value)"
#fi

exec ./main "$@"
