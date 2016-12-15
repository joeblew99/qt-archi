# setup (once only)
$GOPATH/bin/qtsetup ios
$GOPATH/bin/qtsetup ios-simulator

# build
qtdeploy build ios

# run
