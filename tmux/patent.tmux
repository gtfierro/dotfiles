#!/bin/sh

tmux has-session -t patent 2> /dev/null

if [ $? != 0 ]
then
    tmux new-session -s patent -d
    tmux send-keys -t patent 'cd ~/Documents/Patent/patentprocessor' C-m
    tmux send-keys -t patent 'vim' C-m
    tmux split-window -h -p 50 -t patent
    tmux send-keys -t patent:0.1 'cd ~/Documents/Patent/patentprocessor' C-m
    tmux send-keys -t patent:0.1 'ls' C-m

    tmux new-window -t patent -d
    tmux send-keys -t patent:1 'cd ~/Documents/Patent/patentprocessor' C-m
    tmux send-keys -t patent:1 'ls' C-m
    tmux split-window -h -p 50 -t patent:1
    tmux send-keys -t patent:1.1 'cd ~/Documents/Patent/patentprocessor' C-m
    tmux send-keys -t patent:1.1 'ipython' C-m
    tmux send-keys -t patent:1.1 'ls' C-m
fi

tmux attach-session -t patent
