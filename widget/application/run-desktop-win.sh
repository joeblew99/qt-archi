# For cross compiling to Windows 64bit:

DIR=$(pwd)
echo "Running Windows build of: " $DIR

# Grab the docker image (leave this on all the time, so you get changes)
docker pull therecipe/qt:base_windows_64

# * **Optional:** Install [Wine](https://www.winehq.org) to test your applications.

# define `QT_MXE_ARCH=386` to deploy 32-bit applications or `QT_MXE_ARCH=amd64` to deploy 64-bit applications
SET QT_MXE_ARCH=amd64

# Setup QT for it (once only)
$GOPATH/bin/qtsetup windows-docker

# Deploy applications with `$GOPATH/bin/qtdeploy build android path/to/your/project docker`
$GOPATH/bin/qtdeploy build windows $DIR docker
