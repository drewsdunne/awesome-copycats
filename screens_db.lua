screens = {
	['default'] = {
		['connected'] = function (xrandrOutput)
			return '--output ' .. xrandrOutput .. ' --auto --same-as LVDS1'
		end,
		['disconnected'] = function (xrandrOutput)
			return '--output ' .. xrandrOutput .. ' --off --output LVDS1 --auto'
		end
	},
	['55250827610'] = {
		['connected'] = function (xrandrOutput)
			return '--output ' .. xrandrOutput .. ' --auto --above LVDS1'
		end,
		['disconnected'] = nil
	}
}

--	['1607667574933'] = {
--		['connected'] = function ()
--			return nil
--		end,
--		['disconnected'] = function ()
--			return nil
--		end
--	}
