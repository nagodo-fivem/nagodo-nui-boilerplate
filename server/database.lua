function Database()
    local self = {}
    self.isReady = false

    self.Init = function()
        

        self.isReady = true
    end

    return self
end


