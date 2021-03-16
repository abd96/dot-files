# dot-files (Feel free to steal anything)
This is my personal configs for a fast workflow. Please wear your seat belt before using the configs, as you are going to fly while coding!   



### TMUX (`~/.tmux.conf`)
I use TMUX to open two panes, one for compiling source code and the other for writing code. Yes keep it minimal. 
* Prefix key : <CTRL + a>
* Vim Mode enabled using : <CTRL + a + [> 

**ATTENSION** : i can't figure out how to copy from vim in the first pane into the other. If you know an easy way, please hit me up! 

### VIM (`~/.vimrc`) or NVIM (`~/.config/nvim/init.vim`)

fzf, coc, goyo, markdown-preview, vim-latex-live-preview and more! 

* Install vim-plug in order to be able to use the config.
* `:PlugInstall` to install the plugins 
* `:PlugClean` to remove delted plugins 
* `:PlugUpdate` to update current plugins

#### Markdown 

* Enable with `:MarkdownPreview` or with `<leader> md` 
* Opens a markdown in your browser and it will update while typing. Also cursor will be tracked. Thanks markdown-preview!

#### Latex 

* Enable with `<F>` 
* Opens pdf youre working on and can live update while coding in latex. 

#### COC 
 * COC is added as a Plugin and will be installed (See Instructions)
 * For setting up COC for a programming language use: `:CocInstall coc-python coc-java coc-json .....`
 * After installing language support set the linter to flake8 using `:CocCommand python.setInterpreter`
 * Currently installed extensions : coc-html, coc-texlab, coc-java, coc-json, coc-pyright, coc-tsserver
 * `:CocList` : list all possible features (CTRL-{j,k} to navigate)
 * `:CocConfig` : to open config for coc (coc-settings.json)
 * `CocInstall` : to install extension 
 * `CocUninstall` : to uninstall extension 
#### Bracey 
 * Open current html page you you are working on in browser and live updating it. 
 * Enable with `:Bracey`
 * `:BraceyStop` to stop server 

#### Use jkhl globally 
* Save Xmodmap_GlobalvimStyle to your home directory
* Copy startup.conf to /etc/init/
