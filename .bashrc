# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

alias usedevtools='scl enable devtoolset-7 bash; source ~/.bash_profile'
alias Kreader='/ascldap/users/jloe/kokkos-tools/kp_reader'
alias Ktimer='export KOKKOS_PROFILE_LIBRARY=/ascldap/users/jloe/kokkos-tools/profiling/simple-kernel-timer/kp_kernel_timer.so'

# User specific aliases and functions
#list current screen sessions at startup:
screen -ls
