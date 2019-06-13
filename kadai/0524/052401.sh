#!/bin/bash

# ローカルのリポジトリに移動
cd ${HOME}/rep/unix1

git diff remotes/origin/master

read -p "ok? (y/N): " yn
case "$yn" in 
    [yY]*) 
        ;; 
    *) 
        echo "abort." 
        exit 
        ;; 
esac

git push
