#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u umakola -p dckr_pat_q_xg9rAiWwLynWr4b4pZMwZlmM4
    docker tag test umakola/dev
    docker push umakola/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u umakola -p dckr_pat_q_xg9rAiWwLynWr4b4pZMwZlmM4
    docker tag test umakola/prod 
    docker push umakola/prod
fi
