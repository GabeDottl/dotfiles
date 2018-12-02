This repo contains some basic configuration files for setting up a new development environment.

On a new machine, this setup would look something like:
* Change default shell to zsh: `chsh -s /usr/bin/zsh`
* Install oh-my-zsh for neat features like autocomplete.
    https://github.com/robbyrussell/oh-my-zsh
* Create a git repo for your configuration files, e.g. in ~/dotfiles, and move your various configuration files to there. This way, if you muck up a configuration (which is all too easy), it's easy to revert back to an earlier state and have diffs and such. 
  To make you're newly located config files work properly, you'll simply want to soft-link to them from your old location.
For example ln -s ~/dotfiles/public/zshrc ~/.zshrc.
* Inside ~/dotfiles/public, clone this repo and then soft-link the files in it to your home directory (with the usual '.' prefix) as desired.
Broad tool overview:
1) zsh is much better than bash - zsh offers much more flexibility than bash and if you use your terminal at all, then you'll find the autocomplete functionality a huge timesaver
2) Atom (atom.io) for development - it's a highly hackable text editor that works well for quick editing. It works pretty well for Python development at least.
3) ptpython (or really, ptipython) - a great interactive python shell that has advanced history support, history-based autocomplete, autosuggestions, docstrings, etc. https://github.com/jonathanslenders/ptpython. If you use ptipython (and have pip-installed iPython already), then if you're code throws and exception it won't exit the interpreter which is extremely helpful.

A nice guide to some other useful CLI tools:
https://remysharp.com/2018/08/23/cli-improved
- fzf (fuzzy history searching)
- bat (better cat)
- tldr (tldr of man)

To do some quick setup on a Mac, try running intial_setup.sh which will install homebrew, python3, and some python packages.

Zsh + oh-my-zsh with 'fishy' theme:
![zsh](fish_zsh.png?raw=true "Title")

PtIPython with docstring, autosuggest and autocomplete enabled:
![ptipython](ptipython.png?raw=true "Title")

