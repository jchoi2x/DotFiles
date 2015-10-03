#!/usr/bin/env bash



TMP=$PWD

function setNodeJS(){ 
    cd ./system/nodejs
    npm install -g
    cd $TMP
}



function setupPython(){
    pip install -r ./system/pip/requirements.txt > /dev/null
}
