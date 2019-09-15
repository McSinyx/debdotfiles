# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias stow='stow -t /home/436e58'
alias gcc='gcc -Wall -Werror -O2 -lm'
alias g++='g++ -Wall -Werror -O2 -lm'
alias fpc='fpc -O1 -XS -gl'
alias raku='rlwrap perl6'
alias backup='rsync -avh --delete /home/ /data/Home/'

PATH="/home/436e58/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/436e58/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/436e58/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/436e58/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/436e58/perl5"; export PERL_MM_OPT;
