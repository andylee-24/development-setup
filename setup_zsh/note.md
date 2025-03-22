### tmux commands
``tmux new-session -d -s mysession './run.sh'``

-d means start detached (in the background).

-s mysession names the session mysession.

./run.sh is the command that will run inside the tmux session.

