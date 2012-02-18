=================================
 My portable python configuration
=================================

install
=======

First install ``virtualenv`` and ``virtualenvwrapper`` (``--install-option`` is required if python has been installed using homebrew)::

    pip install virtualenv --install-option="--install-scripts=/usr/local/bin"
    pip install virtualenvwrapper --install-option="--install-scripts=/usr/local/bin"

And source ``virtualenvwrapper.sh``::

    cat >> ~/Dropbox/zsh/zshrc < EOF
    if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
        source /usr/local/bin/virtualenvwrapper.sh
    fi
    EOF

Set up a new machine like this::

    mkvirtualenv master
    cd ~/src
    git clone git@github.com:nhoffman/mypy.git
    cd mypy
    ./install.sh



