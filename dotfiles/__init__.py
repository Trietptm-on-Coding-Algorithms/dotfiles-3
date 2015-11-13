# -*- coding: utf-8 -*-

"""
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
"""

import datetime

_author = 'Nathan Farrar'
_year = datetime.date.today().year
_version = '0.0.1'

__meta__ = {
    'pkgname':      'dotfiles',
    'version':      _version,
    'platform':     'OSX',
    'summary':      'dotfiles management suite',
    'description':  'dotfiles management suite',
    'keywords':     'dotfiles, osx',
    'author':       _author,
    'email':        'nfarrar@crunk.io',
    'uri':          'https://github.com/nfarrar/dotfiles',
    'license':      'BSDv3',
    'copyright':    'Copyright %s, %s' % (_year, _author),
    'docformat':    'reStructuredText'
}

for key, value in __meta__.iteritems():
    globals()['__%s__' % key] = value


if __name__ == '__main__':
    blue, gray, reset, sep = '\x1b[34m', '\x1b[2;37m', '\x1b[0m', '='*83
    print(blue + sep + __doc__ + sep + reset)
    for key, value in __meta__.iteritems():
        print(gray + '%-12s %s' % (key.title() + ':', value) + reset)
