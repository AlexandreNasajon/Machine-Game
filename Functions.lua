local Player = require("Player")
local Functions = {}

Functions.shuffle = function(a)
	local c = #a
	for i = 1, c do
		local ndx0 = math.random( 1, c )
		a[ ndx0 ], a[ i ] = a[ i ], a[ ndx0 ]
	end
	return a
end

Functions.copiar = function(card,b)
    for k,v in pairs(card) do
        b[k] = v
    end
    return b
end

Functions.find = function(a,n)
    for k,v in pairs(a) do
        if v == n then
        return k
        end
    end
end

return Functions
