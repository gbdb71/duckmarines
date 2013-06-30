--- Converts directional vector into integer direction
function vecToDir(dx, dy)
	local pi = math.pi
	local angle = math.atan2(-dy, dx)
	if math.abs(angle) <= pi/4 then
		return 1
	elseif math.abs(angle) >= 3*pi/4 then
		return 3
	elseif angle > 0 then
		return 0
	else
		return 2
	end
end
