# This script is to be used when the source for therecipe/qt has changed
# It pulls the latest code, and sets everything up.
# Its for an OSX user with Qt installed with HomeBrew


# ENV
export QT_DIR=/usr/local/opt/qt5/

# get latest, without stomping on any changes i have

echo "## removing old GO binaries"
rm $GOPATH/bin/qt*

echo "## getting latest source"
cd $GOPATH/src/github.com/therecipe/qt
git pull

echo "## bootstrapping qtsetup"
cd $GOPATH/src/github.com/therecipe/qt/cmd
go install ./...


echo "## checking dependencies for desktop & ios"
qtsetup check desktop
#qtsetup check ios

# run build (takes 15 minutes)
# How to turn off the widget tests ? Just clrt-c for now.
echo "## building desktop environment"
qtsetup desktop

echo "## building mobile-ios environment"
# Fails at the moment !
qtsetup ios








