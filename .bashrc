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
alias ga="git add"
alias gc="git commit -m"
alias gl="git log --all --graph --decorate --oneline"
alias gps="git push origin master" 
alias gpl="git pull origin master" 
PS1="\w > "

if [[ "$(hostname)" == "DESKTOP-ACL26QC" ]]; then
	alias abc="cd ~/Documents/ABCcourse"
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
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
export PYTHONHOME=/opt/python/3.6.4
export PYTHONPATH=${PYTHONHOME}/lib/python3.6/site-packages:$PYTHONPATH
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

