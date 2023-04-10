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


--Need to be able to do this check on its own. PREFERABLY EVERY HOUR, as well as next addon wanting to display number of concussive shots used, +uptime kinda like DETAILS.

--also want to track usage of certain spells especially slows. to increase uptime.
