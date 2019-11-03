GameTooltip:HookScript("OnTooltipSetUnit", function(self)
    local _, unit = self:GetUnit()
    if not unit then
        return
    end

    local guildName, rank = GetGuildInfo(unit);
    if (guildName and UnitExists(unit) and UnitPlayerControlled(unit)) then
        GameTooltip:AddLine(string.format('%s of %s', rank, guildName))
    end
end)