mkdir -p data
mkdir -p data/raw
mkdir -p data/interim
mkdir -p data/processed
mkdir -p data/external

export GROUP_NAME="$(id -gn $USER)"
export GROUP_ID="$(id -g $USER)"
export USER_ID="$(echo $UID)"
if [ -n "$1" ]; then
    docker-compose build --force-rm $1
elif [ "$1" == 'all' ]; then
    docker-compose --force-rm build
else
    echo "You must pass either: notebook, mlflow, postgres or all as an argument"
fi