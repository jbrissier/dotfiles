install-vim:
	rm -f ~/.vimrc
	mkdir -p ~/.vim/colors
	rm -f ~/.vim/colors/solarized.vim
	ln -s `pwd`/.vim/colors/solarized.vim ~/.vim/colors/solarized.vim
	ln -s `pwd`/.vimrc ~/.vimrc

install-zsh:
	rm -f ~/.zshrc
	ln -s `pwd`/.zshrc ~/.zshrc


install-all: install-vim install-zsh
