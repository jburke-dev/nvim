function keymap(args)
    local options = { noremap = true }
    if type(args.shortcut) ~= "string" then
        error("missing shortcut")
    elseif type(args.action) ~= "string" and type(args.action) ~= "function" then
        error("missing action")
    end

    if args.opts then
        options = vim.tbl_extend('force', options, args.opts)
    end

    vim.keymap.set(args.mode or 'n', args.shortcut, args.action, options)
end

