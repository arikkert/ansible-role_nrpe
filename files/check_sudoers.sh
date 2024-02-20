#!/bin/sh
# File managed by Puppet or Ansible

# check_sudo.sh ownership/permission:
#  owner : root
#  group : root
#  perms : 0755
#
# sudo config:
#  /etc/sudoers.d/nrpe:
#   owner : root
#   group : root
#   perms : 0400
#
# if selinux enabled:
#  install nrpe-selinux

VERBOSE=true

OS=$(uname)
case ${OS} in
	FreeBSD)
		VISUDO=/usr/local/sbin/visudo
		;;
	*)
		VISUDO=/usr/sbin/visudo
		;;
esac

# Code that should not be altered
if [ ${LOGNAME} != 'root' ]
then
        EXITCODE=3
        STATUS='Unknown'
	STATUSMESSAGE="$0 should run as root"
else
	OUTPUT=$(${VISUDO} --check 2>&1)
	EC=$?	# EC is exitcode of visudo command
	case ${EC} in
		# according to https://nagios-plugins.org/doc/guidelines.html
	        0)
			EXITCODE=0	# This is the exitcode of this plugin
			STATUS='OK'
			STATUSMESSAGE="yay, sudo config fine"
			;;
		1)
			EXITCODE=1 # warning
			EXITCODE=2 # critical, visudo does not make difference between warn and crit
			STATUS='NOK'
			STATUSMESSAGE="some errors encountered"
			;;
		else)
			EXITCODE=3
			STATUS='Unknown'
			STATUSMESSAGE="Plugin error : visudo exit code is ${EC}"
			;;
	esac
fi

echo "${STATUS} - ${STATUSMESSAGE}"	# short bla
if ${VERBOSE}
then
	echo "${OUTPUT}"		# verbose bla
fi
exit ${EXITCODE}			# the result that makes it green/yellow/red
