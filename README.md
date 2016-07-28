# grepg.vim #

This plugin is a front for [grepg](https://github.com/tejal29/grepg). grepg is a commandline tool for [GrepPage](https://www.greppage.com).  grepg can
be used to search your greppage content. You will run grepg from vim, and this plugin will show the results in a split window.

![](http://i.imgur.com/wcoDRL8.png)

## Installation ##

See [grepg's README](https://github.com/tejal29/grepg) for its installation instructions (if you haven't installed it already).

Vim has various ways of installing plugins, the standard way is in [the documentation](http://vimdoc.sourceforge.net/htmldoc/usr_05.html#plugin), but most people use a plugin to manage their plugins. If you don't already have a preferred plugin mangrepger plugin, why not try one of the following?

- [vim-plug](https://github.com/junegunn/vim-plug#readme)
- [vim-pathogen](https://github.com/tpope/vim-pathogen#readme)
- [Vundle.vim](https://github.com/gmarik/Vundle.vim#readme)
- Or, if you don't use any sort of Vim plugin manager:

```sh
cd ~/.vim/bundle && git clone https://github.com/evidanary/grepg.vim grepg && echo "set runtimepath^=~/.vim/bundle/grepg" >> ~/.vimrc
```

## Requirements ##
[grepg](https://github.com/tejal29/grepg) version 0.0.6 and higher

### Configuration ###

Make sure the grepg client works correctly

```sh
$ grepg --user evidanary --topic vim --search "replay macro"
Replay Macro
@name of macro e.g. @q
```
To avoid typing --user, set the defaults in the ~/.grepg.yml file (see [grepg's README](https://github.com/tejal29/grepg) for more defaults).

## Usage ##

    :G {topic_name} [options]

grepg.vim is triggered by typing :G followed by the topic name (-t argument for grepg) followed by options such as -s (for search string e.g. -s "tmux pane"). The first argument is always the topic name.

Microdocuments containing the search term will be listed in the split window. grepg client returns a description followed by the code on the other line. Each microdocument is separated by an empty line.

### Troubleshooting ###

**Escape Sequences for Color:**
If you see escape sequences in the split window such as `^[[0;32;49m` or `[[0m`, turn off colorization in your grepg client by adding  `colorize: false`  in your `~/.grepg.yml` file.
