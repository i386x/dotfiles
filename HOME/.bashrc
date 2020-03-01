# .bashrc

function pdfmrg() {
  if [[ $# -eq 2 ]]; then
    cp $2 $1
  elif [[ $# -ge 3 ]]; then
    O="$1"
    shift
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default -dNOPAUSE -dQUIET -dBATCH -dDetectDuplicateImages -dCompressFonts=true -r150 -sOutputFile="$O" $@
  fi
}

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias la='ls -la'
alias md=mkdir
alias brq='nmcli --ask con up id "Brno (BRQ)"'
export PS1='\033[32m[\u@\h \W]\$ \033[0m'
