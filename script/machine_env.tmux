#!/bin/bash

main() {
   MACHINE_ENV="$HSDK_ENV_DESCRIPTION"

   if [ -z "$MACHINE_ENV" ]; then
      MACHINE_ENV="none"
   fi

   echo "$MACHINE_ENV" | tr '[:upper:]' '[:lower:]'
}

main
