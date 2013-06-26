#!/bin/sh

tmux has-session -t journal 2> /dev/null

if [ $? != 0 ]
then
    tmux new-session -s journal -n server -d
    tmux send-keys -t journal 'cd ~/Documents/journal' C-m
    tmux send-keys -t journal 'bundle exec rake watch' C-m
    tmux split-window -h -p 50 -t journal
    tmux send-keys -t journal:0.1 'cd ~/Documents/journal' C-m
    tmux send-keys -t journal:0.1 'ls source/_posts' C-m

    tmux new-window -t journal -n editor -d
    tmux send-keys -t journal:editor 'cd ~/Documents/journal/source' C-m
    tmux send-keys -t journal:editor 'vim' C-m
fi
tmux attach-session -t journal
