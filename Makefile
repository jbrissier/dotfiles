install-vim:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	rm -f ~/.vimrc
	mkdir -p ~/.vim/colors
	rm -f ~/.vim/colors/solarized.vim
	ln -s `pwd`/.vim/colors/solarized.vim ~/.vim/colors/solarized.vim
	ln -s `pwd`/vimrc ~/.vimrc

install-tmux:
	rm -r ~/.tmux.conf
	ln -s `pwd`/tmux.conf ~/.tmux.conf


install-zsh:
	rm -f ~/.zshrc
	ln -s `pwd`/zshrc ~/.zshrc





install-all: install-vim install-zsh install-tmux
