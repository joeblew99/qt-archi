# README #

This README would normally document whatever steps are necessary to get your application up and running.

Assuming you have done a go get on this repo...

## Setup
get latest of therecipe/qt: 

````
cd $GOPATH/src/gitbub.com/therecipe/qt
git pull
go get -u -v github.com/therecipe/qt/cmd/...
qtsetup
````

## Run an Application

From the folder with the application: 

````
# build
qtdeploy build desktop

# run
.open ./deploy/darwin_minimal/application.app
````


## Help
https://gophers.slack.com/messages/qt-binding/details/

## CI
https://github.com/therecipe/qt/blob/master/.travis.yml

https://travis-ci.org/therecipe/qt/builds
