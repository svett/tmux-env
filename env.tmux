#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

MACHINE_ENV="#($CURRENT_DIR/script/machine_env.tmux)"
MACHINE_ENV_INTERPOLATION_STRING="\\#{machine_env}"

# shellcheck disable=1090
source "${CURRENT_DIR}/script/util.sh"

do_interpolation() {
  local string="$1"
  local interpolated="${string/$MACHINE_ENV_INTERPOLATION_STRING/$MACHINE_ENV}"

  echo "$interpolated"
}

update_tmux_option() {
  local option="$1"
  local option_value
  local new_option_value

  option_value="$(get_tmux_option "$option")"
  new_option_value="$(do_interpolation "$option_value")"

  set_tmux_option "$option" "$new_option_value"
}

update_tmux_option "status-right"
update_tmux_option "status-left"
