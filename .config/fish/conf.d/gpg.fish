set -e SSH_AGENT_PID
set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)

set -x GPG_TTY (tty)
gpg-connect-agent updatestartuptty /bye &>/dev/null
