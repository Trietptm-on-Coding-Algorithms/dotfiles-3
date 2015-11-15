
.. code-block:: none

       ..                        s                 .          ..               .x+=:.   
     dF                         :8       oec :    @88>  x .d88"               z`    ^%  
    '88bu.             u.      .88      @88888    %8P    5888R                   .   <k 
    '*88888bu    ...ue888b    :888ooo   8"*88%     .     '888R        .u       .@8Ned8" 
      ^"*8888N   888R Y888r -*8888888   8b.      .@88u    888R     ud8888.   .@^%8888"  
     beWE "888L  888R I888>   8888     u888888> ''888E`   888R   :888'8888. x88:  `)8b. 
     888E  888E  888R I888>   8888      8888R     888E    888R   d888 '88%" 8888N=*8888 
     888E  888E  888R I888>   8888      8888P     888E    888R   8888.+"     %8"    R88 
     888E  888F u8888cJ888   .8888Lu=   *888>     888E    888R   8888L        @8Wou 9%  
    .888N..888   "*888*P"    ^%888*     4888      888&   .888B . '8888c. .+ .888888P`   
     `"888*""      'Y"         'Y"      '888      R888"  ^*888%   "88888%   `   ^"F     
        ""                               88R       ""      "%       "YP'                
                                         88>                                            
                                         48                                             
                                         '8                                             

    “We become what we behold. We shape our tools, and thereafter our tools shape us.” 
    ― Marshall McLuhan


Installation
============

My dotfiles are stored in *orphaned* branches:

- `dotfiles <http://git.io/v8y45>`_
- `osx      <http://git.io/v8yBC>`_
- `ubuntu   <https://github.com/nfarrar/dotfiles/tree/ubuntu>`_
- `cygwin   <https://github.com/nfarrar/dotfiles/tree/cygwin>`_

The repos are intended to be managed with vcsh_.  The dotfiles branch is
*required* and the os-specific branches are layered on top of it.

.. code-block:: bash

    # clone the dotfiles branch & run the upgrade hooks
    $ vcsh clone -b dotfiles https://github.com/nfarrar/dotfiles.git dotfiles
    $ vcsh upgrade dotfiles

    # clone an os-specific dotfiles branch
    $ vcsh clone -b osx    https://github.com/nfarrar/dotfiles.git dotfiles-osx
    $ vcsh clone -b ubuntu https://github.com/nfarrar/dotfiles.git dotfiles-ubuntu
    $ vcsh clone -b cygwin https://github.com/nfarrar/dotfiles.git dotfiles-cygwin


Additional Steps
================

After installing the repos with vcsh, the following commands are required to finish up the configuration (OSX):

.. code-block:: bash

    # change hammerspoon configuration path
    $ defaults write org.hammerspoon.Hammerspoon MJConfigFile "~/.config/hammerspoon/init.lua"

    # change iterm prefs path
    $ defaults write com.googlecode.iterm2 PrefsCustomFolder -string "/Users/$USER/.config/iterm"
    $ defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

    # enable capslock in seil
    $ defaults write org.pqrs.Seil '{ "sysctl" = { "enable_capslock" = 1; "keycode_capslock" = 80; }; }'

    # enable karabainer hyperlock
    $ defaults write org.pqrs.Karabiner private.f19_esc -bool true


.. _vcsh: https://github.com/RichiH/vcsh

.. bookmarks:

    - http://git.io/v4kLw
