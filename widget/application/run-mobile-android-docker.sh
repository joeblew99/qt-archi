# status - does not work.

# For cross compiling to Android

# stats

echo ""
echo "## GO stats"
go env
go version

echo ""
echo "## DOCKER stats"
docker --version
docker-compose --version
docker-machine --version
docker ps -a

# Variables

DIR=$(pwd)
echo ""
echo "## Running Android-Docker build of Application at: " $DIR


# Grab the docker image (leave this on all the time, so you get changes)
docker pull therecipe/qt:base_android

# Share your GOPATH folder with the docker.
# I have done this globally with the Docker for Desktop Preferense GUI.
#docker run -v $GOPATH/src:/<container path>


# Setup QT for it (once only)
$GOPATH/bin/qtsetup android-docker

# Deploy applications with `$GOPATH/bin/qtdeploy build android path/to/your/project docker`
$GOPATH/bin/qtdeploy build android $DIR docker

# Stop the container
#docker stop $NAME

