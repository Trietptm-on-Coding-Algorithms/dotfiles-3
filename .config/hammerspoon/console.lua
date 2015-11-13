--
-- Basic console auto-hide when Hammerspoon loses focus
--
-- ConsoleWatcher:start()
--   Turns on the watcher, and the Hammerspoon console, if open, will close when you enter another application
-- ConsoleWatcher:stop()
--   Turns off the watcher; Hammerspoon console open/close state is left untouched.

ConsoleWatcher = hs.application.watcher.new(function(name,event,hsapp)
    if name then
        if name:match("Hammerspoon") and event == hs.application.watcher.deactivated then
            local test = hs.appfinder.windowFromWindowTitle("Hammerspoon Console")
            if test then test:close() end
        end
    end
end)
