local awful     = require("awful")
local naughty   = require("naughty")
local unpack = table.unpack

-- Get active outputs
local function outputs()
   local outputs = {}
   local xrandr = io.popen("xrandr -q --current")

   if xrandr then
      for line in xrandr:lines() do
         local output = line:match("^([%w-]+) connected ")
         if output then
            outputs[#outputs + 1] = output
                                   end
      end
      xrandr:close()
   end

   return outputs
end

function updateScreens(changedCard)
  naughty.notify({ text='Output ' .. changedCard .. ' changed' })

	-- local newCardDev = dev .. changedCard
	-- local newOutputs = connectedOutputs(newCardDev, changedCard)
	-- local mergedOutputs = mergeTables(outputs, newOutputs)
  --
	-- for out in pairs(mergedOutputs) do
	-- 	if not outputs[out] then -- connected
	-- 		enableOutput(out, changedCard)
	-- 	elseif not newOutputs[out] then -- disconnected
	-- 		disableOutput(out, changedCard)
	-- 	end
	-- end
	-- outputs = newOutputs
end
