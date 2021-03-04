# dot-files
This is my personal configs for a fast workflow. Please wear your seat belt before using the configs, as you are going to fly while coding! 


### TMUX
I use TMUX to open two panes, one for compiling source code and the other for writing code. Yes keep it minimal. 
* Prefix key : <CTRL + a>
* Vim Mode enabled using : <CTRL + a + [> 

**ATTENSION** : i can't figure out how to copy from vim in the first pane into the other. If you know an easy way, please hit me up! 

### VIM

fzf, coc, goyo, markdown-preview, vim-latex-live-preview and more! 

* Install vim-plug in order to be able to use the config.
* `:PlugInstall` to install the plugins 
* `:PlugClean` to remove delted plugins 
* `:PlugUpdate` to update current plugins

#### Markdown 

* Enable with :MarkdownPreview 
* Opens a markdown in your browser and it will update while typing. Also cursor will be tracked. Thanks markdown-preview!

#### Latex 

* Enable with <F> 
* Opens pdf youre working on and can live update while coding in latex. 

### COC 
 * COC is added as a Plugin and will be installed (See Instructions)
 * For setting up COC for a programming language use: `:CocInstall coc-python coc-java coc-json .....`
 * After installing language support set the linter to flake8 using `:CocCommand python.setInterpreter`
