set guifont=Menlo\ Regular:h16

" Unbind cmd+t
if has("gui_macvim")
  macmenu &File.New\ Tab key=<D-S-t>
  macmenu &File.Open\ Tab\.\.\. key=<nop>
endif
