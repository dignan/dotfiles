Dotfiles
============

Installation
---------------

    git clone git@github.com:dignan/dotfiles.git dotfiles_tmp
	mv dotfiles_tmp/.git $HOME/
	cp -r dotfiles_tmp/* $HOME/
	cd $HOME
    git submodule update --init
    vim -u bundles.vim +BundleInstall +q
