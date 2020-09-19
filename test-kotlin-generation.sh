BASEDIR=$(dirname "$0")

function assertInstalled() {
  for var in "$@"; do
    if ! which $var &>/dev/null; then
      echo "This script requires you to install '$var'"
      exit 1
    fi
  done
}

assertInstalled gradle openapi-generator

INPUT=$BASEDIR/generated-openapi-spec.json
OUTPUT=$BASEDIR/generated-client

openapi-generator generate \
  --input-spec "$INPUT" \
  --generator-name kotlin \
  --output "$OUTPUT" \
  --skip-validate-spec