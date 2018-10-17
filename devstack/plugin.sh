BDIR=$DEST/stx-gui/devstack/lib

source $LIBDIR/starlingx-dashboard.sh
# check for service enabled
if is_service_enabled stx-gui; then

    if [[ "$1" == "stack" && "$2" == "install" ]]; then
	# Perform installation of service source
	echo_summary "Installing stx-gui"
	install_stx-dashboard

    elif [[ "$1" == "stack" && "$2" == "post-config" ]]; then
	echo_summary "Configuring stx-gui"
    fi

    if [[ "$1" == "unstack" ]]; then
	echo_summary "Unstack stx-gui"
	clean_stx-dashboard
    fi
fi
