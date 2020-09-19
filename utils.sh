function assertInstalled() {
  for var in "$@"; do
    if ! which $var &>/dev/null; then
      echo "This script requires you to install '$var'"
      exit 1
    fi
  done
}

function assertInstalledWithBrew() {
  for var in "$@"; do
    if ! which "$var" &>/dev/null; then
      read -p "$var appears to be missing.  Install now? [y/N]: " confirm
      if [[ ${confirm} =~ ^[yY]$ ]]; then
        brew install "$var"
      elif [[ ${confirm} =~ ^[nN]$ ]]; then
        echo "please install $var before continuing"
        exit 1
      fi
    fi
  done
}