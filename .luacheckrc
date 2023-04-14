stds.nvim = {
  globals = {
    "_G",
  },
  read_globals = {
    "vim",
  },
}

codes = true
self = false

std = "luajit"
files[".luacheckrc"].std = "+luacheckrc"
files["**/*.lua"].std = "+nvim"
files["**/*_spec.lua"].std = "+nvim+busted"
