require('bufferline').setup ({
    options = {
        separator_style = "slant",
        show_buffer_close_icons = true,
        view = "multiwindow",
		offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
})

