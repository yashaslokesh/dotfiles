install: install-zsh install-git
#  install-brew

install-zsh:
	rm -f ~/.zshrc
	ln -sf `pwd`/zsh/zshrc ~/.zshrc
	ln -sf `pwd`/zsh/custom ~/.zsh-custom

install-git:
	rm -f ~/.gitconfig
	ln -sf `pwd`/git/gitconfig ~/.gitconfig

install-brew:
	chmod +x brew.sh
	./brew.sh

# Install separately
install-haskell:
	curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
