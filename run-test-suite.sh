#!/usr/bin/env bash
echo "FROM rawkode/ansible-test-runner:${LINUX_DISTRIBUTION-centos}-${LINUX_DISTRIBUTION_VERSION-6.7}" > Dockerfile

if [[ ! -z $1 && $1 == "--pull" ]];
then
  docker-compose pull
fi

docker-compose build
docker-compose run --rm test_runner

rm Dockerfile
