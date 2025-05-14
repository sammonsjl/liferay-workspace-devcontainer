#!/bin/bash

curl -L https://raw.githubusercontent.com/liferay/liferay-blade-cli/master/cli/installers/local | sh

npm set prefix ~/.npm-global
npm install -g yo@4.x.x gulp generator-liferay-theme@10

sudo chsh -s /usr/bin/zsh vscode
