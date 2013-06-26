#!/bin/sh

tmux has-sesson -t om2p 2> /dev/null

if [ $? != 0 ]
then
    tmux new-session -s om2p -n vbox -d
    tmux send-keys -t om2p 'VBoxHeadless --startvm "centos6"' C-m
    tmux split-window -h -p 50 -t om2p
    tmux send-keys -t om2p:0.1 'top' C-m

    tmux new-window -t om2p -d
    tmux send-keys -t om2p:1 'ssh -p 2222 openwrt@127.0.0.1'

    tmux new-window -t om2p -d
    tmux send-keys -t om2p:2 'ssh -p 2222 openwrt@127.0.0.1'

fi
tmux attach-session -t om2p
