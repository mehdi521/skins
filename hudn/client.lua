
local l_0_0, l_0_1 = guiGetScreenSize()
addEventHandler("onClientRender", root, function()
  if not getElementData(localPlayer, "money") then
    local l_1_0 = not getPlayerTeam(localPlayer) or 0
  end
   -- DECOMPILER ERROR: Confused at declaration of local variable

  --dxDrawText(getTeamName(getPlayerTeam(localPlayer)), l_0_0 * 0.923, l_0_1 * 0.196, l_0_0 * 0.986, l_0_1 * 0.227, tocolor(255, 255, 255, 255), 1.5, "default-bold", "center", "center", false, false, false, false, false)
   -- DECOMPILER ERROR: Confused about usage of registers for local variables.

   -- DECOMPILER ERROR: Overwrote pending register.

   -- DECOMPILER ERROR: Confused at declaration of local variable

   -- DECOMPILER ERROR: Confused about usage of registers for local variables.

   -- DECOMPILER ERROR: Confused at declaration of local variable

   -- DECOMPILER ERROR: Confused about usage of registers for local variables.

  dxDrawText((getElementData(localPlayer, "money") or 0) .. "", l_0_0 * 0.925, l_0_1 * 0.058, l_0_0 * 0.983, l_0_1 * 0.094, tocolor(255, 251, 251, 255), 1.5, "default", "left", "center", false, false, true, false, false)
 dxDrawText((getElementData(localPlayer, "bankmoney") or 0) .. "", l_0_0 * 0.925, l_0_1 * 0.103, l_0_0 * 0.983, l_0_1 * 0.139, tocolor(255, 251, 251, 255), 1.5, "default", "left", "center", false, false, true, false, false)
  --dxDrawText((getElementData(localPlayer, "dirtymoney")or 0), l_0_0 * 0.927, l_0_1 * 0.179, l_0_0 * 0.983, l_0_1 * 0.210, tocolor(255, 0, 0, 255), 1.5, "default", "left", "center", false, false, false, false, false)
  dxDrawImage(l_0_0 * 0.906, l_0_1 * 0.058, l_0_0 * 0.075, l_0_1 * 0.036, "backm.png", 0, 0, 0, tocolor(255, 255, 255, 120), false)
  dxDrawImage(l_0_0 * 0.906, l_0_1 * 0.103, l_0_0 * 0.075, l_0_1 * 0.036, "backm.png", 0, 0, 0, tocolor(255, 255, 255, 120), false)
  --dxDrawImage(l_0_0 * 0.906, l_0_1 * 0.180, l_0_0 * 0.075, l_0_1 * 0.036, "backm.png", 0, 0, 0, tocolor(255, 255, 255, 120), false)
  dxDrawImage(l_0_0 * 0.911, l_0_1 * 0.063, l_0_0 * 0.011, l_0_1 * 0.021, "cc.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
  dxDrawImage(l_0_0 * 0.911, l_0_1 * 0.109, l_0_0 * 0.011, l_0_1 * 0.021, "cc2.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
  --dxDrawImage(l_0_0 * 0.911, l_0_0 * 0.146, l_0_0 * 0.015, l_0_0 * 0.021, "cc3.png", 0, 0, 0, tocolor(255, 0, 0, 255), false)
  
  
end
)


