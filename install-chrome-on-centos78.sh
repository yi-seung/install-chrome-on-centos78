#!/usr/bin/env bash
if [ -f /etc/yum.repos.d/google-chrome.repo ]; then
	sudo cp -p /etc/yum.repos.d/google-chrome.repo /etc/yum.repos.d/google-chrome.repo-'date+%Y%m%d%H%M'
fi	
sudo cp ./google-chrome.repo /etc/yum.repos.d/
sudo yum update -y
sudo yum install -y google-chrome-stable
google-chrome --verion

