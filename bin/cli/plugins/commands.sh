q() {
  exit 0
}

cls() {
  clear
}

banner() {
  echo -e "Inocess\nPlayer" | figlet -f slant -c
  help_menu
}

search() {
    ytfzf "$1" ../downloads/
}

