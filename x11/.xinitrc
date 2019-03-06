# xinit session-manager
session=${1:-wmaker}

case $session in
    bspwm		) exec bspwm;;
    wmaker|windowmaker	) exec wmaker;;

    # No known session, try to run it as command
    *                 ) exec $1;;
esac
