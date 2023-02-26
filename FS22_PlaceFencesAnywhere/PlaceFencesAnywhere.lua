PlaceFencesAnywhere = {}

--[[
	This mod uses a somewhat hacky way to allow placing fences (nearly) everyhwere, but
	doing it this way should make it more compatible with future game updates. The
	alternative would have been overriding base game functions, which is not ideal.
	
	Internally, the game checks whether a face can be place at a position and if the
	"checker"-functions return a non-nil value, an error will be displayed to the user.
	
	By setting these error values to nil, the checks will alaways pass.
	
	This mod does not remove the restriction of only placing fences on farmland the
	player has access to by design to allow using this in a multiplayer game safely.
]]

-- "Collides with another item"
ConstructionBrushFence.ERROR.COLLISION = nil

-- "Distance too short"
ConstructionBrushFence.ERROR.MININUM_LENGTH = nil

-- "Cannot be placed here"
ConstructionBrushFence.ERROR.CANNOT_BE_PLACED_HERE = nil

-- "Terrain too steep"
ConstructionBrushFence.ERROR.MAXIMUM_ANGLE = nil

-- "Corner angle too large"
ConstructionBrushFence.ERROR.MINIMUM_ANGLE = nil