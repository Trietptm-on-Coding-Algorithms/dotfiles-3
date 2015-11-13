-- [[
-- Author: Nathan Farrar <nfarrar@crunk.io>
-- Website: https://crunk.io/dotfiles/
-- Description: hammerspoon window manager
-- ]]

local hyper = { "cmd", "alt", "ctrl" }

-- disable window animations (default: 0.2)
hs.window.animationDuration = 0

-- reposition the current window in the top-left quarter of the screen
hs.hotkey.bind(hyper, "r", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
  else
    hs.alert.show("no active window")
  end
end)

-- reposition the current window in the top-right quarter of the screen
hs.hotkey.bind(hyper, "t", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
  else
    hs.alert.show("no active window")
  end
end)

-- reposition the window in the right-half of the current screen
hs.hotkey.bind(hyper, "d", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("no active window")
  end

end)


-- reposition the current window on the right-half of the screen
hs.hotkey.bind(hyper, "g", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("no active window")
  end
 end)

-- maximize the current window
hs.hotkey.bind(hyper, "f", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h
    win:setFrame(f)
  else
    hs.alert.show("no active window")
  end
end)

-- reposition the current window in the bottom-left quarter of the screen
hs.hotkey.bind(hyper, "c", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    f.x = max.x
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
  else
    hs.alert.show("no active window")
  end
end)


-- reposition the current window in the bottom-right quarter of the current screen
hs.hotkey.bind(hyper, "v", function()
  if hs.window.focusedWindow() then
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    f.x = max.x + (max.w / 2)
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
  else
    hs.alert.show("no active window")
  end
end)

hs.hotkey.bind(hyper, "i", function()
  hs.hints.windowHints()
end)

hs.hotkey.bind(hyper, 'k', function()
  if hs.window.focusedWindow() then
		hs.window.focusedWindow():focusWindowNorth()
	else
		hs.alert.show("No active window")
	end
end)

hs.hotkey.bind(hyper, 'j', function()
	if hs.window.focusedWindow() then
		hs.window.focusedWindow():focusWindowSouth()
	else
		hs.alert.show("No active window")
	end
end)

hs.hotkey.bind(hyper, 'l', function()
	if hs.window.focusedWindow() then
		hs.window.focusedWindow():focusWindowEast()
	else
		hs.alert.show("No active window")
	end
end)

hs.hotkey.bind(hyper, 'h', function()
	if hs.window.focusedWindow() then
		hs.window.focusedWindow():focusWindowWest()
	else
		hs.alert.show("No active window")
	end
end)

