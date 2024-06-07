
function urination(source)
	  setTimer ( function()
		 setElementData(source, "urination", 0)
	  end, 3000, 1 )
 
 end
 addCommandHandler("piss",urination)

addEvent("setTiredAnimation",true)
addEventHandler("setTiredAnimation", root, function(target)
	if isElement(target) then
		setPedAnimation(target, "FAT", "IDLE_tired", -1, true, false)
		setElementData(target, "tired", true)
		setTimer(triggerEvent, 5000, 1, "switchToNormal", root, target)
	end
end)

addEvent("switchToNormal",true)
addEventHandler("switchToNormal", root, function(target)
	if isElement(target) then
		setPedAnimation(target, "ped", "IDLE_tired", 200)
		setElementData(target, "tired", false)
		setPedAnimation(target, false)
		--triggerClientEvent(target, "sayInformation", root, "en", "You can go now.")
	end
end)

