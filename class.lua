--
-- Code by Piotr Machowski <piotr@machowski.co>
--

local Class = {}
Class.__name  ='Game'
Class.__index = Class
setmetatable(Class, { __call = function(_, ...) return Class:new(...) end })
------------------------------------------------------------

--dependencies

-- forward reference

------------------------------------------------------------

function Class:new( __o )
	assert( self, 'use : instead of .' )
	self = setmetatable( __o, Class )

	print('['..self.__name..'] created')
	return self
end

function Class:removeSelf( )
	print('['..self.__name..'] destroyed')
	self = nil
end

return Class
