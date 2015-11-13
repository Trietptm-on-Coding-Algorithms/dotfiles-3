-- [[
-- Author: Nathan Farrar <nfarrar@crunk.io>
-- Website: https://crunk.io/dotfiles/
-- Description: 
-- ]]

-- init grid
hs.grid.MARGINX = 0
hs.grid.MARGINY = 0
hs.grid.GRIDWIDTH = 7
hs.grid.GRIDHEIGHT = 3

-- disable animation
hs.window.animationDuration = 0


local hyper = { "cmd", "alt", "ctrl" }


-- global operations
hs.hotkey.bind(hyper, ';', function() hs.grid.snap(hs.window.focusedWindow()) end)
hs.hotkey.bind(hyper, "'", function() hs.fnutil.map(hs.window.visibleWindows(), hs.grid.snap) end)

-- adjust grid size
hs.hotkey.bind(hyper, '=', function() hs.grid.adjustWidth( 1) end)
hs.hotkey.bind(hyper, '-', function() hs.grid.adjustWidth(-1) end)
hs.hotkey.bind(hyper, ']', function() hs.grid.adjustHeight( 1) end)
hs.hotkey.bind(hyper, '[', function() hs.grid.adjustHeight(-1) end)

