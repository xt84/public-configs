#!/bin/bash
tmux new-session -d -s work

tmux rename-window -t work:0 shell
tmux new-window -t work:1 -n log
tmux new-window -t work:2 -n sudo 'sudo su -'
tmux new-window -t work:3 -n top 'htop'

tmux select-window -t work:0 
tmux -2 attach-session -t work
