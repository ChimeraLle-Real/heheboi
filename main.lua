local genv = getgenv()

local meta = getrawmetatable(genv)

local old = meta.__index
meta.__index = function(t, n)
    local v = old(t, n)
    if v then
        return v
    else
        warn("UNKNOWN UNC DETECTED ", n)
    end
end
