#cd
alias cd-2='cd ../..'
alias cd-3='cd ../../..'
alias cd-4='cd ../../../..'
alias cd-5='cd ../../../../..'
#ls
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
#puppet
alias ee='eyaml edit'
#kubectl
alias k=kubectl
complete -F __start_kubectl k
alias kctx='kubectl ctx'
alias kns='kubectl ns'
alias kdf='kubectl df-pv'
alias ksniff='kubectl sniff'
alias kb='kustomize build .'
#div
alias myip='curl ifconfig.me'
