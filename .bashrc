# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
#screen -ls # Using this at startup causes error with ssh. 

# This is to use gdb and other tools on RHEL7
alias usedevtools='scl enable devtoolset-7 bash; source ~/.bash_profile'

# Aliases for Kokkos Profiling
alias Knone='export KOKKOS_PROFILE_LIBRARY='''
alias Kreader='/ascldap/users/jloe/Kokkos/kokkos-tools/kp_reader'
alias Ktimer='export KOKKOS_PROFILE_LIBRARY=/ascldap/users/jloe/Kokkos/kokkos-tools/kp_kernel_timer.so'
alias Knvprof='export KOKKOS_PROFILE_LIBRARY=/ascldap/users/jloe/Kokkos/kokkos-tools/kp_nvprof_connector.so'
alias Kfocnvprof='export KOKKOS_PROFILE_LIBRARY=/ascldap/users/jloe/Kokkos/kokkos-tools/kp_nvprof_focused_connector.so'
alias Klogger='export KOKKOS_PROFILE_LIBRARY=/ascldap/users/jloe/Kokkos/kokkos-tools/kp_kernel_logger.so'
alias KmemUse='export KOKKOS_PROFILE_LIBRARY=/ascldap/users/jloe/Kokkos/kokkos-tools/kp_memory_usage.so'
alias KmemEvent='export KOKKOS_PROFILE_LIBRARY=/ascldap/users/jloe/Kokkos/kokkos-tools/kp_memory_events.so'

# Shortcut for interactive node on White
alias internode='bsub -Is -n 16 -q rhel7G bash'

# Shortcut so ssget unzips the matrix
# file and outputs the final location
alias ssget='~/ssget/ssget -f -e'

# Shortcut combo functions:
cdls() { cd "$@" && ls; }
#cp and cd in one command
cpcd (){
  if [ -d "$2" ];then
    cp $1 $2 && cd $2
  else
    cp $1 $2
  fi
}
#mv and cd in one command
mvcd (){
  if [ -d "$2" ];then
    mv $1 $2 && cd $2
  else
    mv $1 $2
  fi
}

