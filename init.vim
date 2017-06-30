" Pathogen plugin manager
set nocompatible
filetype off
source $HOME/.config/nvim/config/init.vimrc
source $HOME/.config/nvim/config/general.vimrc
autocmd BufWinEnter '__doc__' setlocal bufhidden=delete" " latex
source $HOME/.config/nvim/config/plug.vimrc
source $HOME/.config/nvim/config/map.vimrc
source $HOME/.config/nvim/config/hili.vimrc
