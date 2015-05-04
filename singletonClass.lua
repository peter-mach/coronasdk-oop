--
-- Code by Piotr Machowski <piotr@machowski.co>
--

local Class = {}
Class.__name  ='Game'
Class.__index = Class
Class.__instance = nil
setmetatable(Class, { __call = function(_, ...) return Class:new(...) end })
------------------------------------------------------------

--dependencies

-- forward reference

------------------------------------------------------------

function Class:new( __o )
	assert( self, 'use : instead of .' )
	if self.__instance then return self.__instance end
	self = setmetatable( __o, Class )
	Class.__instance = self

	print('['..self.__name..'] created')
	return self
end

function Class:removeSelf( )
	Class.__instance = nil
	print('['..self.__name..'] destroyed')
	self = nil
end

return Class
