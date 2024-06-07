local screenW, screenH = guiGetScreenSize()
local sx, sy = guiGetScreenSize()
local px, py = 1366, 768
local x, y = (sx / px), (sy / py)
local MicOn = false

addEventHandler("onClientPlayerVoiceStart", root,
    function()
        if source == localPlayer then
            MicOn = true
        end
    end
)

addEventHandler("onClientPlayerVoiceStop", root,
    function()
        if source == localPlayer then
            MicOn = false
        end
    end
)

addEventHandler("onClientRender", root,
    function()
       if getElementData(localPlayer, "loggedin") == 1 then
            local hp = math.floor(getElementHealth(getLocalPlayer()))
            local hunger = getElementData(localPlayer, "Hunger") or 100
            local thirst = getElementData(localPlayer, "Thirst") or 100
            local armor = getPlayerArmor(localPlayer) or 100

       


           
            dxDrawCircle(screenW * 0.0850, screenH * 0.9600, screenW * 0.0418, screenH * 0.0653, tocolor(20, 102, 58), 90, 360 / 100 * hp) 
            dxDrawImage(x * 95, y * 717, x * 43, y * 40, "assets/0.png", 0, 0, 0, tocolor(255, 255, 255, 255), true) 
            dxDrawImage(x * 105, y * 728, x * 23, y * 17, "assets/1.png", 0, 0, 0, tocolor(255, 255, 255, 255), true) 

           
            dxDrawCircle(screenW * 0.1360, screenH * 0.9600, screenW * 0.0418, screenH * 0.0653, tocolor(0, 300, 250), 90, 360 / 100 * armor) 
            dxDrawImage(x * 165, y * 717, x * 43, y * 40, "assets/0.png", 0, 0, 0, tocolor(255, 255, 255, 255), true) 
            dxDrawImage(x * 175, y * 728, x * 23, y * 17, "assets/2.png", 0, 0, 0, tocolor(255, 255, 255, 255), true) 

           
            dxDrawCircle(screenW * 0.188, screenH * 0.9600, screenW * 0.0418, screenH * 0.0653, tocolor(202, 108, 0), 90, 360 / 100 * hunger) 
            dxDrawImage(x * 235, y * 717, x * 43, y * 40, "assets/0.png", 0, 0, 0, tocolor(255, 255, 255, 255), true) 
            dxDrawImage(x * 246, y * 728, x * 23, y * 17, "assets/3.png", 0, 0, 0, tocolor(255, 255, 255, 255), true) 
			
			dxDrawCircle(screenW * 0.24, screenH * 0.9600, screenW * 0.0418, screenH * 0.0653, tocolor(0, 166, 250), 90, 360 / 100 * thirst) 
            dxDrawImage(x * 306, y * 717, x * 43, y * 40, "assets/0.png", 0, 0, 0, tocolor(255, 255, 255, 255), true) 
            dxDrawImage(x * 316, y * 728, x * 23, y * 17, "assets/4.png", 0, 0, 0, tocolor(255, 255, 255, 255), true) 
			


           
            if MicOn then
            dxDrawCircle(screenW * 0.0335, screenH * 0.9600, screenW * 0.0418, screenH * 0.0653, tocolor(255, 250, 255), 90, 360)
            dxDrawImage(x * 25, y * 717, x * 43, y * 40, "assets/0.png", 0, 0, 0, tocolor(255, 255, 255, 255), true) 
            dxDrawImage(x * 35, y * 728, x * 23, y * 17, "assets/5.png", 0, 0, 0, tocolor(255, 255, 255, 255), true) 
				
		    else
				
				 
		    dxDrawImage(x * 25, y * 717, x * 43, y * 40, "assets/0.png", 0, 0, 0, tocolor(255, 255, 255, 255), true)
            dxDrawImage(x * 35, y * 728, x * 23, y * 17, "assets/5.png", 0, 0, 0, tocolor(255, 255, 255, 255), true)
            end
        end
    end
)




function isMouseInPosition ( x, y, width, height ) 

    if ( not isCursorShowing ( ) ) then 

        return false 

    end 

  

    local sx, sy = guiGetScreenSize ( )

    local cx, cy = getCursorPosition ( )

    local cx, cy = ( cx * sx ), ( cy * sy )

    if ( cx >= x and cx <= x + width ) and ( cy >= y and cy <= y + height ) then 

        return true 

    else 

        return false 

    end 

end







setTimer(function()

   if getElementData(localPlayer,"loggedin") == 1 then

    local thirst = getElementData(localPlayer, "Thirst") or 100

    setElementData(localPlayer, "Thirst", thirst-1) 

   end

end, 50000, 0)



setTimer(function()

     if getElementData(localPlayer,"loggedin") == 1 then

    local hunger = getElementData(localPlayer, "Hunger") or 100

    setElementData(localPlayer, "Hunger", hunger-1) 

	end

end, 50000, 0)




function die()

     if getElementData(localPlayer,"loggedin") == 1 then

    local thirst = getElementData(localPlayer, "Thirst")

    local hunger = getElementData(localPlayer, "Hunger")



    if (thirst==0) then

        setElementData(localPlayer, "Thirst", 100)

        setElementHealth(localPlayer, 0)

    end

    if (hunger==0) then

        setElementData(localPlayer, "Hunger", 100)

        setElementHealth(localPlayer, 0)

    end

	end

end

addEventHandler("onClientElementDataChange", root, die)







local stamina = 100

local stamina_MAX = 100



function staminaCycle()

	local tired = getElementData(localPlayer, "tired")

	if tired then

		stamina = stamina+7

	elseif getPedMoveState(localPlayer) == "stand" then

		stamina = stamina+1

	elseif getPedMoveState(localPlayer) == "walk" then

		stamina = stamina+1

	elseif getPedMoveState(localPlayer) == "powerwalk" then

		stamina = stamina+3

	elseif getPedMoveState(localPlayer) == "jog" then

		stamina = stamina-0.5

	elseif getPedMoveState(localPlayer) == "sprint" then

		stamina = stamina-1

	elseif getPedMoveState(localPlayer) == "jump" then

		stamina = stamina-1

	elseif getPedMoveState(localPlayer) == "crouch" then

		stamina = stamina+5

	elseif getPedMoveState(localPlayer) == "crawl" then

		stamina = stamina-3

	else

		stamina = stamina+1

	end



	if stamina > stamina_MAX then

		stamina = stamina_MAX

	end

	if stamina > 20 then

		toggleControl("jump", true)

	end

	if stamina >= 100 then

		toggleControl("sprint", true)

	end

	if stamina < 0 then

		toggleControl("jump", false)

		toggleControl("sprint", false)

		stamina = 0

		triggerServerEvent("setTiredAnimation", root, localPlayer)

	end

	setElementData(localPlayer, "stamina", stamina)

	setTimer(staminaCycle, 250, 1)

end

setTimer(staminaCycle, 200, 1)

function lmot (source)
	setElementData(source,"armor", 0 )
	setElementData(source,"Hunger", 0 )
	setElementData(source,"Thirst", 0 )
end
addEventHandler("onPlayerWasted", root. lmot)