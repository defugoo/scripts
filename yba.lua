-- Instances for the GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Bottomtext = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local TitleUnderline = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local toggleSelling = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local tpToItems = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UICorner_5 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.300
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.01, 0, 0.16, 0)
Frame.Size = UDim2.new(0, 300, 0, 250)  -- Increased size for less squishing

Bottomtext.Name = "Bottom text"
Bottomtext.Parent = Frame
Bottomtext.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bottomtext.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bottomtext.BorderSizePixel = 0
Bottomtext.Position = UDim2.new(0.085, 0, 0.84, 0)  -- Adjusted position
Bottomtext.Size = UDim2.new(0, 230, 0, 25)  -- Increased size
Bottomtext.Font = Enum.Font.SourceSansSemibold
Bottomtext.Text = "Made by x2p3m8 - Teleport and Item Management"
Bottomtext.TextColor3 = Color3.fromRGB(101, 24, 107)
Bottomtext.TextSize = 16.000  -- Larger font size

UICorner.CornerRadius = UDim.new(0.200000003, 0)
UICorner.Parent = Bottomtext

TitleUnderline.Name = "TitleUnderline"
TitleUnderline.Parent = Frame
TitleUnderline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleUnderline.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleUnderline.BorderSizePixel = 0
TitleUnderline.Position = UDim2.new(0.024, 0, 0.05, 0)  -- Adjusted position
TitleUnderline.Size = UDim2.new(0, 260, 0, 55)  -- Increased size
TitleUnderline.Font = Enum.Font.SourceSansBold
TitleUnderline.Text = "YBA GUI - Item Teleportation"
TitleUnderline.TextColor3 = Color3.fromRGB(101, 24, 107)
TitleUnderline.TextScaled = true
TitleUnderline.TextSize = 18.000  -- Larger font size
TitleUnderline.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0.150000006, 0)
UICorner_2.Parent = TitleUnderline

toggleSelling.Name = "toggleSelling"
toggleSelling.Parent = Frame
toggleSelling.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
toggleSelling.BorderColor3 = Color3.fromRGB(0, 0, 0)
toggleSelling.BorderSizePixel = 0
toggleSelling.Position = UDim2.new(0.115, 0, 0.6, 0)  -- Adjusted position
toggleSelling.Size = UDim2.new(0, 220, 0, 45)  -- Larger size for button
toggleSelling.Font = Enum.Font.SourceSansSemibold
toggleSelling.Text = "Toggle selling: off"
toggleSelling.TextColor3 = Color3.fromRGB(101, 24, 107)
toggleSelling.TextScaled = true
toggleSelling.TextSize = 16.000  -- Larger text size
toggleSelling.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0.150000006, 0)
UICorner_3.Parent = toggleSelling

tpToItems.Name = "tpToItems"
tpToItems.Parent = Frame
tpToItems.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tpToItems.BorderColor3 = Color3.fromRGB(0, 0, 0)
tpToItems.BorderSizePixel = 0
tpToItems.Position = UDim2.new(0.115, 0, 0.36, 0)  -- Adjusted position
tpToItems.Size = UDim2.new(0, 220, 0, 45)  -- Larger size for button
tpToItems.Font = Enum.Font.SourceSansSemibold
tpToItems.Text = "TP to items: off"
tpToItems.TextColor3 = Color3.fromRGB(101, 24, 107)
tpToItems.TextScaled = true
tpToItems.TextSize = 16.000  -- Larger text size
tpToItems.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0.150000006, 0)
UICorner_4.Parent = tpToItems

UICorner_5.CornerRadius = UDim.new(0.0299999993, 0)
UICorner_5.Parent = Frame

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.024, 0, 0.05, 0)  -- Adjusted position
Title.Size = UDim2.new(0, 260, 0, 50)  -- Increased size
Title.Font = Enum.Font.SourceSansBold
Title.Text = "YBA GUI - Item Teleportation"
Title.TextColor3 = Color3.fromRGB(101, 24, 107)
Title.TextScaled = true
Title.TextSize = 18.000  -- Larger text size
Title.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0.150000006, 0)
UICorner_6.Parent = Title

-- Scripts:

local function QLMOT_fake_script() -- ScreenGui.LocalScript
	local script = Instance.new('LocalScript', ScreenGui)

	-- Function for teleporting with chunks and a delay
	local function travelTo(place)
		local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
		local vector = place.Position - plr.Position

		local length = vector.Magnitude
		local chunkSize = 25 -- Adjust this value to control the chunk size
		local num_tp = math.ceil(length / chunkSize)

		for i = 1, num_tp do
			plr.CFrame = plr.CFrame + (vector / num_tp) -- Move the player incrementally
			task.wait(0.25) -- Introduce a delay of 0.25 seconds between each teleportation step
		end
	end

	local tpOn = false
	local sell = false
	
	function mainTP() -- Finds the item
		while tpOn do
			maxItems() -- Checks if I have max items before starting
			for _, v in pairs(game.Workspace.Item_Spawns.Items:GetChildren()) do
				local item = v:FindFirstChild("MeshPart")
				if item and item:FindFirstChild("PointLight") then -- Checks if there is an item in this location
					local proxPrompt = v.ProximityPrompt
					while item:IsDescendantOf(game.Workspace) and tpOn do
						local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
						travelTo(item)
						if (item.Position - plr.Position).Magnitude < 5 then
							maxItems()
							fireproximityprompt(proxPrompt, 4)
						end
						task.wait(0.05)
					end
					maxItems()
				end
			end
			task.wait(1)
		end
	end
	
	-- Function to manage max item limits and sell items
	function maxItems()
		items = {
			["Mysterious Arrow"] = 0,
			["Rokakaka"] = 0,
			["Gold Coin"] = 0,
			["Diamond"] = 0,
			["Pure Rokakaka"] = 0,
			["Quinton's Glove"] = 0,
			["Steel Ball"] = 0,
			["Rib Cage of The Saint's Corpse"] = 0,
			["Zepellin's Headband"] = 0,
			["Zeppeli's Hat"] = 0,
			["Caesar's Headband"] = 0,
			["Clackers"] = 0,
			["Stone Mask"] = 0,
			["Ancient Scroll"] = 0,
			["Dio's Diary"] = 0,
			["Pure Rokakaka"] = 0,
			["Lucky Stone Mask"] = 0,
			["Gold Umbrella"] = 0
		}

		local maxLimits = {  
			["Mysterious Arrow"] = 25,
			["Rokakaka"] = 25,
			["Gold Coin"] = 5,
			["Diamond"] = 25,
			["Pure Rokakaka"] = 5,
			["Quinton's Glove"] = 5,
			["Steel Ball"] = 5,
			["Rib Cage of The Saint's Corpse"] = 5,
			["Zepellin's Headband"] = 5,
			["Zeppeli's Hat"] = 5,
			["Caesar's Headband"] = 5,
			["Clackers"] = 5,
			["Stone Mask"] = 5,
			["Ancient Scroll"] = 5,
			["Dio's Diary"] = 5,
			["Pure Rokakaka"] = 5,
			["Lucky Stone Mask"] = 5,
			["Lucky Arrow"] = 5,
			["Gold Umbrella"] = 5,
			["Left Arm of The Saint's Corpse"] = 5,
			["Heart of The Saint's Corpse"] = 5,
			["Pelvis of The Saint's Corpse"] = 5
		}

		-- Check inventory for max items
		for _, item in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if items[item.Name] then
				items[item.Name] = items[item.Name] + 1
				if (items[item.Name] >= (maxLimits[item.Name] or 25)) and sell then
					sellItem(item)
				end
			end
		end
	end
	
	-- Function to sell an item
	function sellItem(item)
		local plrName = game.Players.LocalPlayer.Name
		local itemName = game.Players.LocalPlayer.Backpack:FindFirstChild(item.Name)
		itemName.Parent = game.Workspace.Living:FindFirstChild(plrName)

		local args = {
			[1] = "EndDialogue",
			[2] = {
				["NPC"] = "Merchant",
				["Option"] = "Option2",
				["Dialogue"] = "Dialogue5"
			}
		}

		game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
	end
	
	-- Toggle selling functionality
	local sellingButton = script.Parent.Frame.toggleSelling
	sellingButton.MouseButton1Click:Connect(function()
		sell = not sell
		if sell then
			sellingButton.Text = "Toggle selling: on"
		else
			sellingButton.Text = "Toggle selling: off"
		end
		maxItems()
	end)
	
	-- Toggle teleportation functionality
	local tpButton = script.Parent.Frame.tpToItems
	tpButton.MouseButton1Click:Connect(function()
		tpOn = not tpOn
		if tpOn then
			tpButton.Text = "TP to items: on"
			coroutine.wrap(mainTP)()
		else
			tpButton.Text = "TP to items: off"
		end
		print("TP to items is now " .. tostring(tpOn))
	end)
end

coroutine.wrap(QLMOT_fake_script)()
