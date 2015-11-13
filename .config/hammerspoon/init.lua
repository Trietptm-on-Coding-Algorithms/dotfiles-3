-- [[
-- Author: Nathan Farrar <nfarrar@crunk.io>
-- Description: hammerspoon config
-- ]]


-- add timestamps to the print function
oldPrint = print
print = function(...)
  oldPrint(os.date("%H:%M:%S: "), ...)
end

-- setup an alert sound
-- local alert_sound = hs.sound.getByFile("alert.wav")
-- local tink_sound  = hs.sound.getByName("Tink")


-- the additional configuration files we want to load
local configuration_files = {
  -- 'console',
  -- 'grid',
  'wm',
}


for i, file in ipairs(configuration_files) do
  -- fp = hs.configdir .. '/' .. file
  print ("registered configuration file: ", file)
  require(file)
end


local hyper = { "cmd", "alt", "ctrl" }

-- automatically reload the configuration when it changes
-- function reload_config(files)
--   hs.reload()
-- end

-- hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
-- hs.alert.show("hammerspoon configuration reloaded")

-- auto reload files, this needs to be adjusted to use the configuration files
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
