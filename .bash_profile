
/usr/bin/setxkbmap -option ctrl:swapcaps
. "$HOME/.cargo/env"
eval $(systemctl --user show-environment | grep SSH_AUTH_SOCK)
export SSH_AUTH_SOCK
export LOCALE_ARCHIVE=/usr/lib/locale/locale-archive

