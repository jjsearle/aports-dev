#!/bin/ash
su dev -c "/usr/bin/git config --global user.name \"$FULLNAME\""
su dev -c "/usr/bin/git config --global user.email \"$EMAIL\""
su dev -
