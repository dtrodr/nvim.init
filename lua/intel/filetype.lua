vim.filetype.add({
    extension = {
        opt = 'perl', -- legacy ace stuff
        ['do'] = 'tcl',
        pdl = 'tcl',-- TODO: Make ICL/PDL ft plugin
        f = 'nosyntax', -- Filelists
        cth = 'ini',
    },
    pattern = {
        -- Matching model config files
        [".*verif/[%w_]+/[%w_]+.cfg"] = 'yaml',
        [".*crif2?.xml"] = 'nosyntax',
    }
})
