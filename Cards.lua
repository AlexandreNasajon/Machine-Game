local Player = require("Player")
local Functions = require("Functions")
local Cards = {}

Cards.move = function(self)

end

Cards.draw = function(self)
    print(,self.name,)
    print(self.left,self.text,self.right)
end

Cards.pb01 = {
    name = "PB-0.1",
    left = nil,
    right = "T",
    text = "T = 1",
    effect = function()
        return t = 1
    end
}

Cards.p01 = {
    name = "P-0.1",
    left = "T",
    right = "Q",
    text = "If T = 1, then Q = true.",
    effect = function(self.left)
        if self.left == 1 then
            return q = true
        end
    end
}

Cards.pf01 = {
    name = "PF-01",
    left = "Q",
    right = "C",
    text = "If Q = true, then draw a card.",
    effect = function(player,enemies,self.left)
        if self.left == true then
            Functions.draw(player,1)
        end
    end
}

return Cards
