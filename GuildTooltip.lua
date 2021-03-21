_G.GameTooltip:HookScript("OnTooltipSetUnit", function(self)
    local _, unit = self:GetUnit()
    if not unit then
        return
    end

    local guildName, rank = _G.GetGuildInfo(unit);
    if (guildName and _G.UnitExists(unit) and _G.UnitPlayerControlled(unit)) then
        _G.GameTooltip:AddLine(string.format('%s of %s', rank, guildName))
    end
end)