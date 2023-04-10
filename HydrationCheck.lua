SLASH_HELLO1 = "/water"
SLASH_HELLO2 = "/helloworld"

local function showGreeting(name)
    local greeting = "Drink Water!, " .. name .. "!"

    message(greeting)
end

local function HelloWorldHandler(name)
    local nameExists = string.len(name) > 0

    if(nameExists) then
        showGreeting(name)
    else
        local playerName = UnitName("player")

        showGreeting(playerName)
    end
end

SlashCmdList["HELLO"] = HelloWorldHandler
