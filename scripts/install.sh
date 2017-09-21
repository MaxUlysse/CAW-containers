#!/bin/bash
TOOL="nextflow"

while [[ $# -gt 1 ]]
do
  key="$1"
  case $key in
    -t|--tool)
    TOOL="$2"
    shift
    ;;
    *) # unknown option
    ;;
  esac
  shift
done

# Install Nextflow
if [[ "$TOOL" = nextflow ]]
then
  cd $HOME
  curl -fsSL get.nextflow.io | bash
  chmod +x nextflow
  sudo mv nextflow /usr/local/bin/
fi
