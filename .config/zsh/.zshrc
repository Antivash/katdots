# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#==============================================================#
#               .zshrc                                         #
#==============================================================#

# profile
if [ "$ZSHRC_PROFILE" != "" ]; then
	zmodload zsh/zprof && zprof > /dev/null
fi

#--------------------------------------------------------------#
##          Base Configuration                                ##
#--------------------------------------------------------------#
source-safe() { if [ -f "$1" ]; then source "$1"; fi }
source "$ZRCDIR/base.zsh"


#--------------------------------------------------------------#
##          Options                                           ##
#--------------------------------------------------------------#
source "$ZRCDIR/option.zsh"


#--------------------------------------------------------------#
##          Completion                                        ##
#--------------------------------------------------------------#
source "$ZRCDIR/completion.zsh"


#--------------------------------------------------------------#
##          Prompt Configuration                              ##
#--------------------------------------------------------------#
#source "$ZRCDIR/prompt.zsh"


#--------------------------------------------------------------#
##          Function                                          ##
#--------------------------------------------------------------#
source "$ZRCDIR/function.zsh"


#--------------------------------------------------------------#
##          Aliases                                           ##
#--------------------------------------------------------------#
source "$ZRCDIR/alias.zsh"


#--------------------------------------------------------------#
##          Key Bindings                                      ##
#--------------------------------------------------------------#
source "$ZRCDIR/bindkey.zsh"

source-safe "$ZHOMEDIR/zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE}"
source "$ZHOMEDIR/zkbd/bindkey.zsh"


#--------------------------------------------------------------#
##          Plugin                                            ##
#--------------------------------------------------------------#
source "$ZRCDIR/pluginlist.zsh"


#--------------------------------------------------------------#
##          Post Execution                                    ##
#--------------------------------------------------------------#
source "$ZRCDIR/post_load.zsh"


#--------------------------------------------------------------#
##          Execute Script                                    ##
#--------------------------------------------------------------#
source-safe "$ZHOMEDIR/.zshrc.local"


if [ -n "$ZSHRC_CI_TEST" ]; then
	echo "zshrc load complete"
	exit
fi

#--------------------------------------------------------------#
##          Powerline 10K                                     ##
#--------------------------------------------------------------#
# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

#--------------------------------------------------------------#
##          Conda question mark?                              ##
#--------------------------------------------------------------#
source ~/.bashrc
