local unanchoredparts = {}
		local movers = {}
		local tog = true
		local move = false
		local Player = game:GetService("Players").LocalPlayer
		local Character = Player.Character
		local mov = {};
		local mov2 = {};


local lol1 = game.Workspace.USERNAME:FindFirstChild("Bang w bun")
lol1.Name = "lol1"
wait(0.4)
local lol2 = game.Workspace.USERNAME:FindFirstChild("Bang w bun")
lol2.Name = "lol2"
wait(0.5)
local lol3 = game.Workspace.USERNAME:FindFirstChild("Bang w bun")
lol3.Name = "lol3"
wait(0.2)

local S1 = game.Workspace.USERNAME.lol1.Handle.SpecialMesh:Destroy()
local S2 = game.Workspace.USERNAME.lol2.Handle.SpecialMesh:Destroy()
local S3 = game.Workspace.USERNAME.lol3.Handle.SpecialMesh:Destroy()
local R1 = game.Workspace.USERNAME:FindFirstChild("Racing Helmet")
R1.Handle.Mesh:Destroy()
local A1 = Character.AccessoryAccessory
A1.Handle.SpecialMesh:Destroy()
local C1 = game.Workspace.USERNAME:FindFirstChild("Cyber Peacock Tail 2.0")
C1.Handle.SpecialMesh:Destroy()

loadstring(game:HttpGet(('https://raw.githubusercontent.com/fesdfe23456/Selexty-Reanimate/main/Selexty'),true))()


wait(1)

 
     local unanchoredparts = {}
		local movers = {}
		local tog = true
		local move = false
		local Player = game:GetService("Players").LocalPlayer
		local Character = Player.Character
		local mov = {};
		local mov2 = {};

		local Hats = {Hat1  = Character:WaitForChild("lol1"),
     Hat2 = Character:WaitForChild("lol2"),
     Hat3 = Character:WaitForChild("lol3"),
     Hat4 = Character:WaitForChild("Cyber Peacock Tail 2.0"),
     Hat5 = Character:WaitForChild("AccessoryAccessory"),
     Hat6 = Character:WaitForChild("RedHood"),
     Hat7 = Character:WaitForChild("macaron"),
     Hat8 = Character:WaitForChild("CookieTreatAccessory"),
		}


	
	
		for i,v in next, Hats do
v.Handle.AccessoryWeld:Remove()
for _,mesh in next, v:GetDescendants() do
if mesh:IsA("Mesh") or mesh:IsA("Mesh") then
mesh:Remove()
end
end
end

		function ftp(str)
			local pt = {};
			if str ~= 'me' and str ~= 'random' then
				for i, v in pairs(game.Players:GetPlayers()) do
					if v.Name:lower():find(str:lower()) then
						table.insert(pt, v);
					end
				end
			elseif str == 'me' then
				table.insert(pt, plr);
			elseif str == 'random' then
				table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);
			end
			return pt;
		end

		local function align(i,v)
			local att0 = Instance.new("Attachment", i)
			att0.Position = Vector3.new(0,0,0)
			local att1 = Instance.new("Attachment", v)
			att1.Position = Vector3.new(0,0,0)
			local AP = Instance.new("AlignPosition", i)
			AP.Attachment0 = att0
			AP.Attachment1 = att1
			AP.RigidityEnabled = false
			AP.ReactionForceEnabled = false
			AP.ApplyAtCenterOfMass = false
			AP.MaxForce = 9999999
			AP.MaxVelocity = math.huge
			AP.Responsiveness = 65
			local AO = Instance.new("AlignOrientation", i)
			AO.Attachment0 = att0
			AO.Attachment1 = att1
			AO.ReactionTorqueEnabled = false
			AO.PrimaryAxisOnly = false
			AO.MaxTorque = 9999999
			AO.MaxAngularVelocity = math.huge
			AO.Responsiveness = 50
		end




		align(Hats.Hat1.Handle, Character["Left Arm"])
		align(Hats.Hat2.Handle, Character["Right Arm"])
		align(Hats.Hat3.Handle, Character["Right Leg"])
			align(Hats.Hat4.Handle, Character["Torso"])
align(Hats.Hat5.Handle, Character["Left Leg"])
align(Hats.Hat6.Handle, Character["Head"])
align(Hats.Hat7.Handle, Character["Torso"])
align(Hats.Hat8.Handle, Character["Torso"])



		Hats.Hat1.Handle.Attachment.Rotation = Vector3.new(0,0,0)
    Hats.Hat4.Handle.Attachment.Rotation = Vector3.new(90,0,0)
      
    
    
		Character:WaitForChild("Left Arm"):FindFirstChild("Attachment").Name = "Attachment1" 
Character:WaitForChild("Right Arm"):FindFirstChild("Attachment").Name = "Attachment2" 
		Character:WaitForChild("Right Leg"):FindFirstChild("Attachment").Name = "Attachment3" 
			Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment4" 
		Character:WaitForChild("Left Leg"):FindFirstChild("Attachment").Name = "Attachment5"
			Character:WaitForChild("Head"):FindFirstChild("Attachment").Name = "Attachment6"
			Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment7"
			Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment8"
		
		
		
         Character:WaitForChild("Left Arm").Attachment1.Position = Vector3.new(-1.5,1,0)
         Character:WaitForChild("Right Arm").Attachment2.Position = Vector3.new(1.5,1,-0)
           Character:WaitForChild("Right Leg").Attachment3.Position = Vector3.new(0.5,0,0)
      Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(0,1,0)
    Character:WaitForChild("Left Leg").Attachment5.Position = Vector3.new(-0.5,0,0)
       Character:WaitForChild("Head").Attachment6.Position = Vector3.new(0,2.4,0)
          Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(3,5,0)
        
        
        
        		
 Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(3,999,0)

		
 Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(3,999,-2)
	

       
         
        local UIS = game:GetService("UserInputService")


UIS.InputBegan:Connect(function(Input)
    if Input.KeyCode == Enum.KeyCode.Eight then
        
        
        Hats.Hat2.Handle.Attachment.Rotation = Vector3.new(90,0,0)
  Character:WaitForChild("Right Arm").Attachment2.Position = Vector3.new(1.5,1,-1.5)
  
   Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(3,2.2,0)

		
 Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(3,2.3,-2)
 
 game.Workspace.USERNAME.Dummy.Dummy.Animate.Parent = game.Workspace
        
        
    end
    end)



UIS.InputEnded:Connect(function(Input)
    if Input.KeyCode == Enum.KeyCode.Eight then
        Hats.Hat2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
        
               Character:WaitForChild("Right Arm").Attachment2.Position = Vector3.new(1.5,1,-0)
      
  Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(3,999,0)

		
 Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(3,999,-2)
 game.Workspace.Animate.Parent = game.Workspace.USERNAME.Dummy.Dummy
        
        
    end
    end)




UIS.InputBegan:Connect(function(Input)
    if Input.KeyCode == Enum.KeyCode.Zero then
    
    local music = Instance.new("Sound", game.Workspace)
	music.Name = "lol"
	music.Volume = 1.25
	music.SoundId = "rbxassetid://162837439"
	music:Play()
    
    
    
    
			   Character:WaitForChild("Left Arm").Attachment1.Position = Vector3.new(-1.5,1,0)
         Character:WaitForChild("Right Arm").Attachment2.Position = Vector3.new(1.5,1,0)
           Character:WaitForChild("Right Leg").Attachment3.Position = Vector3.new(0,0,1)
      Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(0,1,0)
    Character:WaitForChild("Left Leg").Attachment5.Position = Vector3.new(-0,0,1)
       Character:WaitForChild("Head").Attachment6.Position = Vector3.new(0,2,2)
 wait(0.5)
 Character:WaitForChild("Right Leg").Attachment3.Position = Vector3.new(1,0,1)
       Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(0,1,1.4)
          Character:WaitForChild("Left Leg").Attachment5.Position = Vector3.new(-1,0,1)
         wait(0.2)
Hats.Hat1.Handle.Anchored = true
Hats.Hat2.Handle.Anchored = true
Hats.Hat3.Handle.Anchored = true
Hats.Hat4.Handle.Anchored = true
Hats.Hat5.Handle.Anchored = true
Hats.Hat6.Handle.Anchored = true

        
          
        end
end)

    
    
    
       UIS.InputBegan:Connect(function(Input)
    if Input.KeyCode == Enum.KeyCode.Nine then
        
        
        local lel = Instance.new("Sound", game.Workspace)
	lel.Name = "xd"
	lel.Volume = 1
	lel.SoundId = "rbxassetid://431405534"
	lel:Play() 
        
         
           Character:WaitForChild("Left Arm").Attachment1.Position = Vector3.new(-1.5,1,0)
         Character:WaitForChild("Right Arm").Attachment2.Position = Vector3.new(1.5,1,0)
           Character:WaitForChild("Right Leg").Attachment3.Position = Vector3.new(0.5,0,0)
      Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(0,1,0)
    Character:WaitForChild("Left Leg").Attachment5.Position = Vector3.new(-0.5,0,0)
       Character:WaitForChild("Head").Attachment6.Position = Vector3.new(0,2,0)
              
Hats.Hat1.Handle.Anchored = false
Hats.Hat2.Handle.Anchored = false
Hats.Hat3.Handle.Anchored = false
Hats.Hat4.Handle.Anchored = false
Hats.Hat5.Handle.Anchored = false
Hats.Hat6.Handle.Anchored = false
    end
       end)
