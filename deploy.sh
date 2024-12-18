#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u umakola -p dckr_pat_P4VLdmm-o4kBmqtwAmkKvzVZYWc
    docker tag test ar8888/dev
    docker push ar8888/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u umakola -p dckr_pat_P4VLdmm-o4kBmqtwAmkKvzVZYWc
    docker tag test ar8888/prod 
    docker push ar8888/prod
fi
