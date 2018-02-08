#!/bin/sh
docker login -e anmorgul@gmail.com -u anmorgul -p DoPa541fyv
if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi

echo $TRAVIS_REPO_SLUG:$TAG

docker build -f Dockerfile -t $TRAVIS_REPO_SLUG:$TAG .

docker push $TRAVIS_REPO_SLUG

echo "end"
#$TRAVIS_REPO_SLUG
