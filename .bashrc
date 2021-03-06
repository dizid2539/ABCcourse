# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll="ls -lah"
alias c="clear"
alias v="vim"
alias g="git"
alias gs="git status"
alias gl="git log --oneline"
alias ga="git add"
alias gc="git commit -m"
alias gps="git push" 
alias gpl="git pull" 
PS1="[\h] \W > "

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# For git bash
if [[ "$(uname)" == "MINGW64_NT-10.0-19042" ]]; then
	alias abc="cd ~/Documents/ABCcourse"
fi

# For windows subsystem for linux (wsl)
if [[ "$(uname)" == "Linux" && "$(hostname)" == "DESKTOP-ACL26QC" ]]; then
	alias abc="cd ~/ABCcourse"
	export PATH="/home/dizid2539/.local/bin"
	export PATH="/usr/sbin"
fi

if [ -f /opt ]; then 
############################################################
### Intel Compiler
############################################################
#
	source /opt/intel/bin/compilervars.sh intel64
	source /opt/intel/mkl/bin/mklvars.sh intel64

############################################################
### SGE
############################################################
#
	export SGE_ROOT=/opt/sge
	. $SGE_ROOT/default/common/settings.sh

fi

############################################################
### Python
############################################################
#
#export PYTHONHOME=/opt/python/3.6.4
#export PYTHONPATH=${PYTHONHOME}/lib/python3.6/site-packages:$PYTHONPATH
export PATH=${PYTHONHOME}/bin:$PATH
export LD_LIBRARY_PATH=${PYTHONHOME}/lib:$LD_LIBRARY_PATH


############################################################
### MPI
############################################################
#
#export MPI_HOME=/opt/mpi/gcc-4.8/mpich2-1.5
#export MPI_HOME=/opt/mpi/gcc-4.8/mpich-3.2
#export MPI_HOME=/opt/mpi/gcc-4.8/openmpi-1.6.5
#export MPI_HOME=/opt/mpi/gcc-4.8/openmpi-1.10.1
#export MPI_HOME=/opt/mpi/intel-14.0/mpich2-1.5
#export MPI_HOME=/opt/mpi/intel-14.0/mpich-3.2
#export MPI_HOME=/opt/mpi/intel-14.0/openmpi-1.6.5
export MPI_HOME=/opt/mpi/intel-14.0/openmpi-1.10.1

export PATH=$MPI_HOME/bin:$PATH
export MANPATH=$MPI_HOME/man:$MANPATH
export LD_LIBRARY_PATH=$MPI_HOME/lib:$LD_LIBRARY_PATH

#For gnome in wsl
if [[ "$(uname)" == "Linux" && "$(hostname)" == "DESKTOP-ACL26QC" ]]; then
	export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
	export LIBGL_ALWAYS_INDIRECT=1
fi
