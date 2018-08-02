tmux-net
===========

This is a mini plugin for [TPM](https://github.com/tmux-plugins/tpm).

This plugin just display current IP address. Only do it.

## Usage

Add `#{machine_env}` format string to your existing status-right tmux option.

```shell
set-option -g status-right '#{machine_env}'
```

## Install

You can install the plugin via tpm by adding the following line in your
`.tmux.conf` file:

```shell
set -g @plugin 'svett/tmux-env'
```

[Detailed Installation Guidelines](https://github.com/tmux-plugins/tpm#installation)

## LICENSE

[MIT](https://github.com/svett/tmux-env/blob/master/LICENSE.md)


