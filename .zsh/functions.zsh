function setdua() {
  local str="$1"
  local part1=${str:0:14}
  local part2=${str:14}
  local newstr="$part1-duacodex$part2"
  eval "git remote add origin $newstr"
  eval "gum use duacodex --global"
}
function clonedua() {
  local str="$1"
  local part1=${str:0:14}
  local part2=${str:14}
  local newstr="$part1-duacodex$part2"
  eval "git clone $newstr"
  eval "gum use duacodex --global"
}
