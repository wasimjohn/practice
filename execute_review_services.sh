#!/bin/bash

if ! ps -eaf | grep mechturk-review.jar | grep -v grep  > /dev/null; then

java -jar ~/deploy/review-services/mechturk-review.jar

fi

if ! ps -eaf | grep premium-review.jar | grep -v grep > /dev/null; then

java -jar ~/deploy/review-services/premium-review.jar

fi

#if ! ps -eaf | grep update-lead-score.jar | grep -v grep > /dev/null; then

#java -jar ~/deploy/update-lead-score/update-lead-score.jar

#fi
