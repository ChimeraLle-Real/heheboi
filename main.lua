local genv = getgenv()

setmetatable(genv, {
    __index = function(t, n)
        warn("UNKNOWN UNC DETECTED ", n)
    end
})
