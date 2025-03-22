### tmux commands
``tmux new-session -d -s mysession './run.sh'``

-d means start detached (in the background).

-s mysession names the session mysession.

./run.sh is the command that will run inside the tmux session.

* Ctrl-b n p: go the next / prev window
* Ctrl-b w: list all windows
