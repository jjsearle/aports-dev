#!/bin/ash
su dev -c "/usr/bin/git config --global user.name \"$FULLNAME\""
su dev -c "/usr/bin/git config --global user.email \"$EMAIL\""
su dev -c "/usr/bin/git config --local core.hooksPath .githooks"
su dev -
