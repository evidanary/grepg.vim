# grepg.vim #

grepg.vim shows results from [GrepPage](https://www.greppage.com) in a scratch buffer. It saves you from the expensive context switch of opening the browser while programming in Vim.

This plugin is a front for [grepg](https://github.com/tejal29/grepg). grepg is a commandline tool for [GrepPage](https://www.greppage.com).

![](http://i.imgur.com/wcoDRL8.png)

## Usage ##

    :G {topic_name} [options]

grepg.vim is triggered by typing :G followed by the topic name (-t argument for grepg) followed by options such as -s (for search string e.g. -s "tmux pane"). The first argument is always the topic name.

Microdocuments containing the search term will be listed in a scratch buffer. grepg client returns a description followed by the code on the other line. Each microdocument is separated by an empty line.

## Examples ##

    :G markdown -s image

Searches the markdown cheatsheet for string "image".

    :G vim -s "new tab"

Searches the vim cheatsheet for string "new tab". Multi keyword searches should be surrounded with a quote.

## Installation ##

See [grepg's README](https://github.com/tejal29/grepg) for its installation instructions (if you haven't installed it already).

Most people use a plugin to manage their vim plugins. I prefer [vim-pathogen](https://github.com/tpope/vim-pathogen#readme). Installation is dead simple, you just need 2 lines in your .vimrc. Here are some other plugin managers:

- [vim-plug](https://github.com/junegunn/vim-plug#readme)
- [Vundle.vim](https://github.com/gmarik/Vundle.vim#readme)

Or, if you don't use any sort of Vim plugin manager:

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

### Troubleshooting ###

**Escape Sequences for Color:**
If you see escape sequences in the split window such as `^[[0;32;49m` or `[[0m`, turn off colorization in your grepg client by adding  `colorize: false`  in your `~/.grepg.yml` file.
