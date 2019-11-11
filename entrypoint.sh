#!/bin/sh

cd "$GITHUB_WORKSPACE"

if [ "${INPUT_INCLUDE_DEV}" = true ]
then
    FLAGS="$FLAGS -d"
fi

mix sbom.cyclonedx -o "${INPUT_OUTPUT:-bom.xml}" ${FLAGS} -f
