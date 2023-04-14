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
files["lua/z/**/*.lua"].std = "+nvim"
files["lua/z/**/*_spec.lua"].std = "+nvim+busted"
