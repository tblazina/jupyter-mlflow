mkdir -p data
mkdir -p data/raw
mkdir -p data/interim
mkdir -p data/processed
mkdir -p data/external

export GROUP_NAME="$(id -gn $USER)"
export GROUP_ID="$(id -g $USER)"
export USER_ID="$(echo $UID)"

docker-compose down