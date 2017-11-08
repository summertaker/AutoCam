local frame = CreateFrame("Frame", "AutoCam");

frame:RegisterEvent("PLAYER_LOGIN");
--frame:RegisterEvent("ZONE_CHANGED_NEW_AREA");
UIParent:UnregisterEvent("EXPERIMENTAL_CVAR_CONFIRMATION_NEEDED");

function EnableCam()
    ConsoleExec("ActionCam full"); -- full, basic, default, off,
    ConsoleExec("ActionCam headMove"); -- headMove, heavyHeadMove, lowHeadMove, noHeadMove;
    ConsoleExec("ActionCam focusOff"); -- focusOn, focusOff,
end

function DisableCam()
    ConsoleExec("ActionCam off");
end

function frame:OnEvent(event, ...)
    if (event == "PLAYER_LOGIN") then
        EnableCam();
    --elseif (event == "ZONE_CHANGED_NEW_AREA") then
    --    local instanceBool, instanceType = IsInInstance();
    --    if (instanceBool == true or not instanceType == "none") then
    --        DisableCam();
    --    else
    --        EnableCam();
    --    end
    end
end
frame:SetScript("OnEvent", frame.OnEvent);
