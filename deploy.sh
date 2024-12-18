#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u umakola -p dckr_pat_jyOQWbS09pcDJExSVpfWVQl8_Gg
    docker tag test umakola/dev
    docker push umakola/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u umakola -p dckr_pat_jyOQWbS09pcDJExSVpfWVQl8_Gg
    docker tag test umakola/prod 
    docker push umakola/prod
fi
