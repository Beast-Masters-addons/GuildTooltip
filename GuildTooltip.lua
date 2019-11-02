GameTooltip:HookScript("OnTooltipSetUnit", function(self)
    local _, unit = self:GetUnit()
    if not unit then
        return
    end

    local guildName, rank = GetGuildInfo(unit);
    if (guildName and UnitExists(unit) and UnitPlayerControlled(unit)) then
        GameTooltip:AddLine(string.format('%s of %s', rank, guildName))
    end
    if unit and false then
        local guid = UnitGUID(unit) or ""
        local id = tonumber(guid:match("-(%d+)-%x+$"), 10)
        if id and guid:match("%a+") ~= "Player" then
            addLine(GameTooltip, id, kinds.unit)
        end
    end
end)