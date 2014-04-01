install-vim:
	rm -f ~/.vimrc
	ln -s `pwd`/.vimrc ~/.vimrc

install-zsh:
	rm -f ~/.zshrc
	ln -s `pwd`/.zshrc ~/.zshrc


install-all: install-vim install-zsh
