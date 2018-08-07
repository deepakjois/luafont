rockspec_format = "3.0"
package = "luafont"
version = "dev-1"
source = {
  url = "git+https://github.com/deepakjois/luafont.git"
}
description = {
  summary = "Font handling in Lua",
  license = "MIT",
  homepage = "https://github.com/deepakjois/luafont"
}
build = {
  type = "builtin"
}
dependencies = {
  "lua >= 5.2, < 5.4",
  "luarestructure >= 1.0.0"
}
test = {
  type = 'busted'
}
