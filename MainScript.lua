local ver = "v0.1.55"
local wantraw = true
gui = loadstring(game:HttpGet("https://raw.githubusercontent.com/kiemfp/FotonFleeTheFacility/refs/heads/main/GuiScript.lua", wantraw))()
RunService = game:GetService("RunService")
Players = game:GetService("Players")
--lazyMethod is here
FotonFTF = gui.FotonFTF
MenusTabFrame = gui.MenusTabFrame
CheatButton = gui.CheatButton
TextLabel = gui.TextLabel
ESPMenuWindow = gui.ESPMenuWindow
Body = gui.Body
TitleLabel = gui.TitleLabel
ButtonsFrame = gui.ButtonsFrame
BestPCESPButton = gui.BestPCESPButton
PCESPButton = gui.PCESPButton
TbdButton = gui.TbdButton
PlayerESPButton = gui.PlayerESPButton
PodsESPButton = gui.PodsESPButton
ExitsESPButton = gui.ExitsESPButton
UIGridLayout = gui.UIGridLayout
TopBar = gui.TopBar
CloseButton = gui.CloseButton
BackButton = gui.BackButton
CreditTotalText = gui.CreditTotalText
PageTitleText = gui.PageTitleText
MainMenuWindow = gui.MainMenuWindow
TopBar_2 = gui.TopBar_2
CloseButton_2 = gui.CloseButton_2
CreditTotalText_2 = gui.CreditTotalText_2
PageTitleText_2 = gui.PageTitleText_2
Body_2 = gui.Body_2
UIGridLayout_2 = gui.UIGridLayout_2
ESPButton = gui.ESPButton
BottomText = gui.BottomText
TempIcon = gui.TempIcon
ToolsButton = gui.ToolsButton
BottomText_2 = gui.BottomText_2
TempIcon_2 = gui.TempIcon_2
ToolsMenuWindow = gui.ToolsMenuWindow
Body_3 = gui.Body_3
TitleLabel_2 = gui.TitleLabel_2
ButtonsFrame_2 = gui.ButtonsFrame_2
UIGridLayout_3 = gui.UIGridLayout_3
NeverFailButton = gui.NeverFailButton
AutoPlayButton = gui.AutoPlayButton
AutoInteractButton = gui.AutoInteractButton
BeastCamButton = gui.BeastCamButton
TopBar_3 = gui.TopBar_3
CloseButton_3 = gui.CloseButton_3
BackButton_2 = gui.BackButton_2
CreditTotalText_3 = gui.CreditTotalText_3
PageTitleText_3 = gui.PageTitleText_3
ViewportFrame = gui.ViewportFrame



CheatButton.MouseButton1Down:Connect(function()
	ESPMenuWindow.Visible = false
	ToolsMenuWindow.Visible = false
	MainMenuWindow.Visible = not MainMenuWindow.Visible
end)

CloseButton_2.MouseButton1Down:Connect(function()
	MainMenuWindow.Visible = false
end)

CloseButton.MouseButton1Down:Connect(function()
	ESPMenuWindow.Visible = false
end)

CloseButton_3.MouseButton1Down:Connect(function()
	ToolsMenuWindow.Visible = false
end)

BackButton.MouseButton1Down:Connect(function()
	ESPMenuWindow.Visible = false
	ToolsMenuWindow.Visible = false
	MainMenuWindow.Visible = true
end)

BackButton_2.MouseButton1Down:Connect(function()
	ESPMenuWindow.Visible = false
	ToolsMenuWindow.Visible = false
	MainMenuWindow.Visible = true
end)

ESPButton.MouseButton1Down:Connect(function()
	ESPMenuWindow.Visible = true
	ToolsMenuWindow.Visible = false
	MainMenuWindow.Visible = false
end)

ToolsButton.MouseButton1Down:Connect(function()
	ESPMenuWindow.Visible = false
	ToolsMenuWindow.Visible = true
	MainMenuWindow.Visible = false
end)


local podstoggle = false
local pctoggle = false
local playertoggle = false
local bestpctoggle = false
local exitstoggle = false
local beastcamtoggle = false


local neverfailtoggle = false
local autointeracttoggle = false
local autoplaytoggle = false


PodsESPButton.MouseButton1Down:Connect(function()
	if podstoggle == false then
		podstoggle = true
		PodsESPButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
		reloadESP()
	else
		podstoggle = false
		PodsESPButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
		reloadESP()
	end
end)

PCESPButton.MouseButton1Down:Connect(function()
	if pctoggle == false then
		pctoggle = true
		PCESPButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
		reloadESP()
	else
		pctoggle = false
		PCESPButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
		reloadESP()
	end
end)


PlayerESPButton.MouseButton1Down:Connect(function()
	if playertoggle == false then
		playertoggle = true
		PlayerESPButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
		reloadESP()
	else
		playertoggle = false
		PlayerESPButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
		reloadESP()
	end
end)


BestPCESPButton.MouseButton1Down:Connect(function()
	if bestpctoggle == false then
		bestpctoggle = true
		BestPCESPButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
		reloadESP()
	else
		bestpctoggle = false
		BestPCESPButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
		reloadESP()
	end
end)

ExitsESPButton.MouseButton1Down:Connect(function()
	if exitstoggle == false then
		exitstoggle = true
		ExitsESPButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
		reloadESP()
	else
		exitstoggle = false
		ExitsESPButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
		reloadESP()
	end
end)

NeverFailButton.MouseButton1Down:Connect(function()
	if neverfailtoggle == false then
		neverfailtoggle = true
		NeverFailButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
	else
		neverfailtoggle = false
		NeverFailButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
	end
end)

AutoInteractButton.MouseButton1Down:Connect(function()
	if autointeracttoggle == false then
		autointeracttoggle = true
		AutoInteractButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
	else
		autointeracttoggle = false
		AutoInteractButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
	end
end)


BeastCamButton.MouseButton1Down:Connect(function()
	if beastcamtoggle == false then
		beastcamtoggle = true
		ViewportFrame.Visible = true
		BeastCamButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
		reloadBeastCam()
	else
		ViewportFrame:ClearAllChildren()
		beastcamtoggle = false
		ViewportFrame.Visible = false
		BeastCamButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
	end
end)



AutoPlayButton.MouseButton1Down:Connect(function()
	if autoplaytoggle == false then
		autoplaytoggle = true
		AutoPlayButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
	else
		autoplaytoggle = false
		AutoPlayButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
	end
end)

function reloadESP()
	task.spawn(function()
		local map = game.ReplicatedStorage.CurrentMap.Value
		if map ~= nil then
			local mapstuff = map:getChildren()
			for i = 1, #mapstuff do
				if mapstuff[i].Name == "ComputerTable" then
					if mapstuff[i]:findFirstChild("Highlight") and not pctoggle then
						mapstuff[i].Highlight:remove()
					end
					if pctoggle and not mapstuff[i]:findFirstChild("Highlight") then
						local a = Instance.new("Highlight", mapstuff[i])
						a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
						a.FillColor = Color3.fromRGB(13, 105, 172) -- avoid display bugs as soon as loads :)
						a.OutlineColor = Color3.fromRGB(20, 165, 270) -- avoid display bugs as soon as loads :)
						task.spawn(function()
							repeat
								if bestpctoggle and mapstuff[i]:findFirstChild("Screen") then
									if getBestPC()[1].pc ~= nil and mapstuff[i] == getBestPC()[1].pc then
										a.FillColor = mapstuff[i]:findFirstChild("Screen").Color
										a.OutlineColor = Color3.fromRGB(200, 0, 255)
									else
										a.FillColor = mapstuff[i]:findFirstChild("Screen").Color
										a.OutlineColor = Color3.fromRGB(a.FillColor.R * 400,
										a.FillColor.G * 400, a.FillColor.B * 400)
									end
								else
									a.FillColor = mapstuff[i]:findFirstChild("Screen").Color
									a.OutlineColor = Color3.fromRGB(a.FillColor.R * 400, a.FillColor.G * 400,
									a.FillColor.B * 400)
								end
								task.wait(2.5)
							until mapstuff[i] == nil or a == nil
						end)
					end
				end
				if mapstuff[i].Name == "FreezePod" then
					if mapstuff[i]:findFirstChild("Highlight") and not podstoggle then
						mapstuff[i].Highlight:remove()
					end
					if podstoggle and not mapstuff[i]:findFirstChild("Highlight") then
						local a = Instance.new("Highlight", mapstuff[i])
						a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
						a.FillColor = Color3.fromRGB(120, 200, 255)
						a.OutlineColor = Color3.fromRGB(160, 255, 255)
					end
				end
				if mapstuff[i].Name == "ExitDoor" then
					if mapstuff[i]:findFirstChild("Highlight") and not exitstoggle then
						mapstuff[i].Highlight:remove()
					end
					if exitstoggle and not mapstuff[i]:findFirstChild("Highlight") then
						local a = Instance.new("Highlight", mapstuff[i])
						a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
						a.FillColor = Color3.fromRGB(252, 255, 100)
						a.OutlineColor = Color3.fromRGB(255, 255, 160)
					end
				end
			end
		end
	end)
	local player = game.Players:GetChildren()
	for i = 1, #player do
		if player[i] ~= game.Players.LocalPlayer and player[i].Character ~= nil then
			local character = player[i].Character
			if character:findFirstChild("Highlight") and not playertoggle then
				character.Highlight:remove()
			end
			if playertoggle and not character:findFirstChild("Highlight") then
				local a = Instance.new("Highlight", character)
				a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				a.FillColor = Color3.fromRGB(0, 255, 0) -- avoid display bugs as soon as loads :)
				a.OutlineColor = Color3.fromRGB(127, 255, 127) -- avoid display bugs as soon as loads :)
				task.spawn(function()
					repeat
						task.wait(0.5)
						if player[i] == getBeast() then
							a.FillColor = Color3.fromRGB(255, 0, 0)
							a.OutlineColor = Color3.fromRGB(255, 127, 127)
						else
							a.FillColor = Color3.fromRGB(0, 255, 0)
							a.OutlineColor = Color3.fromRGB(127, 255, 127)
						end
					until character == nil or a == nil
				end)
			end
		end
	end
end

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

-- Configurações
local RENDER_DISTANCE = 50 -- Distância máxima para renderizar partes e jogadores
local UPDATE_INTERVAL = 0.3 -- Intervalo de atualização para clones de jogadores e portas

function reloadBeastCam()
    ViewportFrame:ClearAllChildren()
    
    if not beastcamtoggle or game.ReplicatedStorage.CurrentMap.Value == nil then
        return
    end

    local beast = getBeast()
    local cam = Instance.new("Camera")
    cam.CameraType = Enum.CameraType.Scriptable
    cam.FieldOfView = 70
    cam.Parent = ViewportFrame
    ViewportFrame.CurrentCamera = cam

    local map = game.ReplicatedStorage.CurrentMap.Value
    local mapclone = map:Clone()
    mapclone.Name = "map"

    -- Remove partes desnecessárias do clone do mapa
    for _, descendant in ipairs(mapclone:GetDescendants()) do
        if descendant.Name == "SingleDoor" or descendant.Name == "DoubleDoor" or descendant:IsA("Sound") or descendant:IsA("LocalScript") or descendant:IsA("Script") then
            descendant:Destroy()
        end
    end

    mapclone.Parent = ViewportFrame

    local dummy = Instance.new("Folder", ViewportFrame)
    dummy.Name = "dummy"
    local doors = Instance.new("Folder", ViewportFrame)
    doors.Name = "doors"

    local function updateCamera()
        if not beastcamtoggle or not cam or not mapclone or beast ~= getBeast() then
            return
        end

        local beastCharacter = getBeast().Character
        if beastCharacter and beastCharacter:FindFirstChild("Head") then
            cam.CFrame = beastCharacter.Head.CFrame
        end
    end

    local function updateDummyAndDoors()
        if not beastcamtoggle or not cam or not mapclone or beast ~= getBeast() then
            return
        end

        -- Atualiza as portas
        doors:ClearAllChildren()
        for _, door in ipairs(map:GetChildren()) do
            if door.Name == "SingleDoor" or door.Name == "DoubleDoor" then
                local doorPosition = door:GetPivot().Position
                local camPosition = cam.CFrame.Position
                if (doorPosition - camPosition).Magnitude <= RENDER_DISTANCE then
                    local doorClone = door:Clone()
                    doorClone.Parent = doors
                end
            end
        end

        -- Atualiza os clones dos jogadores
        dummy:ClearAllChildren()
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= getBeast() and player.Character then
                local charPosition = player.Character:GetPivot().Position
                local camPosition = cam.CFrame.Position
                if (charPosition - camPosition).Magnitude <= RENDER_DISTANCE then
                    player.Character.Archivable = true
                    local dummyClone = player.Character:Clone()
                    for _, part in ipairs(dummyClone:GetDescendants()) do
                        if part:IsA("Sound") or part:IsA("LocalScript") or part:IsA("Script") then
                            part:Destroy()
                        end
                    end
                    dummyClone.Parent = dummy
                end
            end
        end
    end

    -- Conecta ao Heartbeat para atualizações contínuas
    local heartbeatConnection
    heartbeatConnection = RunService.Heartbeat:Connect(function()
        if not beastcamtoggle or not cam or not mapclone or beast ~= getBeast() then
            heartbeatConnection:Disconnect()
            cam:Destroy()
            mapclone:Destroy()
            dummy:Destroy()
            doors:Destroy()
            return
        end

        updateCamera()
        updateDummyAndDoors()
    end)
end

function old_reloadBeastCam()
	ViewportFrame:ClearAllChildren()
	if beastcamtoggle and game.ReplicatedStorage.CurrentMap.Value ~= nil then
		local beast = getBeast()
		local cam = Instance.new("Camera", ScreenGui)
		cam.CameraType = Enum.CameraType.Scriptable
		cam.FieldOfView = 70
		local map = game.ReplicatedStorage.CurrentMap.Value
		local mapclone = map:clone()
		mapclone.Name = "map"
		local mcstuff = mapclone:getDescendants()
		for i = 1, #mcstuff do
			if mcstuff[i].Name == "SingleDoor" or mcstuff[i].Name == "DoubleDoor" or mcstuff[i].ClassName == "Sound" or mcstuff[i].ClassName == "LocalScript" or mcstuff[i].ClassName == "Script" then
				mcstuff[i]:Destroy()
			end
		end

		mapclone.Parent = ViewportFrame
		ViewportFrame.CurrentCamera = cam

		task.spawn(function()
			repeat
				task.wait()
				if not beastcamtoggle then
					break
				end
				repeat
					task.wait()
				until getBeast().Character ~= nil
				cam.CFrame = getBeast().Character.Head.CFrame
				task.wait()
			until cam == nil or mapclone == nil or beast ~= getBeast()
		end)

		task.spawn(function()
			local dummy = Instance.new("Folder", ViewportFrame)
			dummy.Name = "dummy"
			dummy.Parent = ViewportFrame
			local doors = Instance.new("Folder", ViewportFrame)
			doors.Name = "doors"
			doors.Parent = ViewportFrame

			repeat
				task.wait()
				if not beastcamtoggle then
					break
				end
				local doorsstuff = map:GetChildren()
				for i = 1, #doorsstuff do
					if doorsstuff[i].Name == "SingleDoor" or doorsstuff[i].Name == "DoubleDoor" then
						local a = doorsstuff[i]:clone()
						a.Parent = doors
					end
				end

				local players = game.Players:getChildren()
				for i = 1, #players do
					if players[i] ~= getBeast() then
						if players[i].Character ~= nil then
							players[i].Character.Archivable = true
							local dummyclone = players[i].Character:clone()
							local bodyparts = dummyclone:getDescendants()

							for i = 1, #bodyparts do
								if bodyparts[i].ClassName == "Sound" or bodyparts[i].ClassName == "LocalScript" or bodyparts[i].ClassName == "Script" then
									bodyparts[i]:remove()
								end
							end


							dummyclone.Parent = dummy
						end
					end
				end


				task.wait(0.3)

				dummy:ClearAllChildren()
				doors:ClearAllChildren()
			until cam == nil or mapclone == nil or beast ~= getBeast()
		end)
	end
end

function getBeast()
	local player = game.Players:GetChildren()
	for i = 1, #player do
		local character = player[i].Character or player[i].CharacterAdded
		if player[i]:FindFirstChild("TempPlayerStatsModule"):FindFirstChild("IsBeast").Value == true or (character ~= nil and character:findFirstChild("BeastPowers")) then
			return player[i]
		end
	end
end

function getBestPC()
	local beast = getBeast()
	local pcs = {}

	local map = game.ReplicatedStorage.CurrentMap.Value
	if map ~= nil then
		local mapstuff = map:GetChildren()
		for i = 1, #mapstuff do
			if mapstuff[i].Name == "ComputerTable" then
				if mapstuff[i].Screen.BrickColor ~= BrickColor.new("Dark green") then
					local magnitude = ((mapstuff[i].Screen.Position - beast.Character:FindFirstChild("HumanoidRootPart").Position).magnitude)
					table.insert(pcs, { magnitude = magnitude, pc = mapstuff[i] })
				end
			end
		end
	end

	table.sort(pcs, function(a, b) return a.magnitude > b.magnitude end)
	return pcs
end

function isPlayerTyping()
	local hum = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	local anims = hum:GetPlayingAnimationTracks()
	for i = 1, #anims do
		if anims[i].Name == "AnimTyping" then
			return true
		end
	end
	return false
end

task.spawn(function() -- reload esp when new map
	game.ReplicatedStorage.CurrentMap.Changed:Connect(function()
		--repeat task.wait() until -- idk what to put for a good method to wait for map to load
		task.wait(5)  -- hopefully enough time for map to load ;)
		reloadESP()
		if beastcamtoggle then
			reloadBeastCam()
		end
	end)
end)

task.spawn(function() -- reload esp when game becomes active
	game.ReplicatedStorage.IsGameActive.Changed:Connect(function()
		reloadESP()
		if beastcamtoggle then
			reloadBeastCam()
		end
	end)
end)



task.spawn(function() --reload esp when character loads/deloads
	game:GetService("Players").PlayerAdded:Connect(function(player)
		player.CharacterAdded:Connect(function(character)
			reloadESP()
		end)
	end)
end)

task.spawn(function() -- never fail hacking
	local mt = getrawmetatable(game)
	local old = mt.__namecall
	if setreadonly then setreadonly(mt, false) else return end
	mt.__namecall = newcclosure(function(self, ...)
		local args = { ... }
		if getnamecallmethod() == 'FireServer' and args[1] == 'SetPlayerMinigameResult' and neverfailtoggle then
			args[2] = true
		end
		return old(self, unpack(args))
	end)
end)

function neverFailForBADexecutor()
end

task.spawn(function() -- auto interact
	game.Players.LocalPlayer.PlayerGui.ScreenGui.ActionBox:GetPropertyChangedSignal("Visible"):Connect(function()
		if autointeracttoggle then
			game.ReplicatedStorage.RemoteEvent:FireServer("Input", "Action", true)
		end
	end)
end)

task.spawn(function() -- auto play (buggy and still testing :) )
	while task.wait(3) do
		if autoplaytoggle then
			local beast = getBeast()
			local map = game.ReplicatedStorage.CurrentMap.Value
			local mapstuff = map:GetChildren()
			for i = 1, #mapstuff do
				if mapstuff[i].Name == "SingleDoor" or mapstuff[i].Name == "DoubleDoor" then
					local doorParts = mapstuff[i]:GetDescendants()
					for i = 1, #doorParts do
						if doorParts[i].ClassName == "Part" and doorParts[i].Name ~= "Frame" then
							if not doorParts[i]:FindFirstChild("PathfindingModifier") then
								local a = Instance.new("PathfindingModifier", doorParts[i])
								a.PassThrough = true
							end
							if doorParts[i].Name == "Frame" then
								local a = Instance.new("PathfindingModifier", doorParts[i])
								a.PassThrough = false
								a.Label = "avoid"
							end
						end
					end
				end
			end


			local pcs = getBestPC()
			local PathfindingService = game:GetService("PathfindingService")
			local Humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
			local Root = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
			local goal = nil
			local agentParams = {
				AgentRadius = 2.4,
				AgentHeight = 2,
				AgentCanJump = true,
				AgentWalkableClimb = 4,
				WaypointSpacing = 2,
				Costs = {
					avoid = 10.0
				}
			}


			local beastNearby = ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - beast.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 50)
			for i, pc in ipairs(pcs) do
				if beastNearby then
					print("beast nearby")
				end


				if isPlayerTyping() and not beastNearby then
					break
				end


				goal = pc.pc["ComputerTrigger1"].Position
				local goalpc = pc.pc
				local path = PathfindingService:CreatePath(agentParams)

				path:ComputeAsync(Root.Position, goal)
				warn(path.Status)
				if path.Status == Enum.PathStatus.Success then
					local waypoints = path:GetWaypoints()
					for i, waypoint in ipairs(waypoints) do
						local ray = Ray.new(waypoints[i].Position, Vector3.new(0, 1, 0) * 3)
						local part = workspace:FindPartOnRay(ray)
						if part and part.CanCollide then
							local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
							print("need to crouch :)")
						end



						Humanoid:MoveTo(waypoint.Position)
						if waypoint.Action == Enum.PathWaypointAction.Jump then
							Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
						end

						local a = Instance.new("Part", workspace)
						a.Shape = Enum.PartType.Ball
						a.Position = waypoint.Position
						a.BrickColor = BrickColor.new("Pink")
						a.Material = Enum.Material.Neon
						a.Size = Vector3.new(2, 2, 2)
						a.Anchored = true
						a.CanCollide = false
						local touch = false

						task.spawn(function()
							a.Touched:Connect(function(hit)
								if hit.Parent:FindFirstChild("Humanoid") then
									if hit.Parent.Name == game.Players.LocalPlayer.Character.Name then
										touch = true
										a:remove()
									end
								end
							end)
							task.wait(10)
							a:remove()
						end)
						repeat
							task.wait(0.05)
						until touch
					end
					break
				end
			end
		end
	end
end)
