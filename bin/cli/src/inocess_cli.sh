source ../src/loader

load_plugins
banner
echo "Welcome To Inocess; tip; command: 'help_menu' for help"

while true; do

  read -e -p $'\e[1;35mInocess >\e[0m ' input
  [[ -n "$input" ]]
  cmd="${input%% *}"
  args="${input#* }"

  if declare -f "$cmd" >/dev/null; then
    "$cmd" "$args"
  elif command -v "$cmd" >/dev/null; then
    "$cmd" "$args"
  else
    echo "[-] Command '$cmd' not available."
  fi
done
