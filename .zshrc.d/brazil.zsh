b()      { brazil-build "$@" }
br()     { brazil-build release "$@" }
bp()     { brazil-path "$@" }
use()    { . ~/.bin/use "$@" }
cr1()    { cr --parent HEAD~1 "$@" }
c()      { vi `pkgroot`/Config }
R()      { vi `pkgroot`/Rakefile }
x()      { vi `pkgroot`/build.xml }
pa()     { vi `wsroot`/packageInfo }
bs()     { bdo git status -s }
bss()    { bdo git status -sb }
bwc()    { brazil ws clean }
bcb()    { b clean && b "$@" }
bra()    { brazil-recursive-cmd --allPackages brazil-build }
bbr()    { brazil ws clean && brazil-recursive-cmd brazil-build }
bbra()   { brazil ws clean && brazil-recursive-cmd --allPackages brazil-build }
bbbr()   { brazil ws clean && bsync && brazil-recursive-cmd brazil-build }
bbbra()  { brazil ws clean && bsync && brazil-recursive-cmd --allPackages brazil-build }
bbbrar() { brazil ws clean && bsync && brazil-recursive-cmd --allPackages brazil-build release }
bsync()  { brazil ws --sync --md }

alias bws='brazil ws'
