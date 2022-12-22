local status_ok, autopair = pcall(require, "nvim-autopairs")
if not status_ok then
    return
end

autopair.setup {
    check_ts = true,
    ts_config = {
        lua = {"string", "source"},
    },
    fast_wrap = {
        map = "<M-e>",
        chars = { "{", "[", "(", '"', "'" },
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
        offset = 0, -- Offset from pattern match
        end_key = "$",
        keys = "qwertyuiopzxcvbnmasdfghjkl",
        check_comma = true,
        highlight = "PmenuSel",
        highlight_grey = "LineNr",
    },
}

local cmp_autopairs = require("nvim-autopairs.completion.cmp")

local status_ok1, cmp = pcall(require, "cmp")
if not status_ok1 then
    return
end

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done {map_char = {tex = ""}})
