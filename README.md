#  catzilla's `.dotfiles`

* `如果你从未使用过vim来编程，那你从来也没有真正活过`
* `If you nerver used vim, you never lived!`
---

- 0 to 1 vim + lua + lsp
- Vim is the best!
- You're going to fly by using vim + lsp
- Enjoy!

## required

- neovim 8.0+
- tmux
- vim-plug
- packer.nvim
- lua
- python3

## plugins prefer

- telescope(BurntSushi/ripgrep is required)
- lsp
- treesitter
- undotree 
- toggleterm
- dap + dapui
- nvim-autopairs
- nerdtree 
- git-blame
- lazygit
- diffview
- vim-snippets
- vim-pug(if necessary)

## theme

- tokyonight
- power10k
- [iterm2](https://iterm2.com/)
- font&icon: MesloLGS NF
- zsh

## iterm2 plugin

- [fig](https://fig.io/) ofcourse it's Free
- enjoy!

## how to use

- nvim init.vim
- only use lua: required('lanvim')
- done

## Plugins

- [awesom-neovim](https://github.com/rockerBOO/awesome-neovim)
- [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)

## proxy

```bash
npm config set http-proxy http://127.0.0.1:8889
npm config set https-proxy http://127.0.0.1:8889/
```
```bash
git config --global http.proxy 127.0.0.1:8889
git config --global http.sslverify false
```

