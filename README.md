# grepg.vim #

grepg.vim shows results from [GrepPage](https://www.greppage.com) in a scratch buffer. It saves you from the expensive context switch of opening the browser while programming in Vim.

This plugin is a front for [grepg](https://github.com/evidanary/grepg-python). grepg is a commandline tool for [GrepPage](https://www.greppage.com).

![screenshot](http://i.imgur.com/omr7wsd.png)

## Usage ##

    :G search_query

grepg.vim is triggered by typing :G followed by the search query.

Microdocuments / snippets containing the search term will be listed in a scratch buffer. grepg client returns a description followed by the code on the other line. Each microdocument is separated by an empty line.

## Examples ##

    :G markdown image

Searches for "markdown image" in all publicly contributed snippets if no auth is set. To search private data you need to set up auth in the command line client using `grepg configure`

    :G vim new tab

Searches the for string "vim new tab".

## Requirements ##
[grepg](https://github.com/evidanary/grepg-python) version 0.1.4 and higher

See [grepg's README](https://github.com/evidanary/grepg-python) for its installation instructions.

But basically, you will do:

```sh
$ pip install grepg
```

## Installation ##


Most people use a plugin to manage their vim plugins. I prefer [vim-pathogen](https://github.com/tpope/vim-pathogen#readme). Installation of vim pathogen is dead simple, you just need 2 lines in your .vimrc. Here are some other plugin managers:[vim-plug](https://github.com/junegunn/vim-plug#readme), [Vundle.vim](https://github.com/gmarik/Vundle.vim#readme)

To install with pathogen:

```sh
cd ~/.vim/bundle && git clone https://github.com/evidanary/grepg.vim grepg
```

Note: If you don't use any sort of Vim plugin manager, then do this:

```sh
cd ~/.vim/bundle && git clone https://github.com/evidanary/grepg.vim grepg && echo "set runtimepath^=~/.vim/bundle/grepg" >> ~/.vimrc
```


### Configuration ###

Make sure the grepg client works correctly. You will need to run `grepg configure` if you need to access private data.

