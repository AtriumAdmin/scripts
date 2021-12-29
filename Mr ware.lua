local script = game:GetObjects("rbxassetid://8301726498")[1]
--// SHORTCUTS \\--
local RNG = (function()
    local RNG = Random.new();
    return function(min,max,int)
        return int and RNG:NextInteger(min,max) or RNG:NextNumber(min,max)
    end;
end)();
local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local CF = {
	N=CFrame.new;
	A=CFrame.Angles;
	fEA=CFrame.fromEulerAnglesXYZ;
}
local C3 = {
	N=Color3.new;
	RGB=Color3.fromRGB;
	HSV=function(...)local data={...}if(typeof(data)=='Color3')then return Color3.toHSV(...)else return Color3.fromHSV(...)end;end;
}
local V3 = {
	N=Vector3.new;
	FNI=Vector3.FromNormalId;
	A=Vector3.FromAxis;
}
local M = {
	C=math.cos;
	R=math.rad;
	S=math.sin;
	T=math.tan;
	AT=math.atan;
	AT2=math.atan2;
	AS=math.asin;
	AC=math.acos;
	A=math.abs;
	F=math.floor;
	CE=math.ceil;
	P=math.pi;
	RNG=RNG;
	H=math.huge;
	RRNG=function(...) return math.rad(RNG(...)) end
}
local R3 = Region3.new
local De = S.Debris
local WS = workspace
local Lght = S.Lighting
local RepS = S.ReplicatedStorage
local IN = Instance.new
local Plrs = S.Players

--// INITIALIZATION \\--
local Plr = Plrs.LocalPlayer
print(Plr)
local Char = Plr.Character.Dummy
local Hum = Char:FindFirstChildOfClass'Humanoid'
local Head = Char.Head
local RArm = Char["Right Arm"]
local LArm = Char["Left Arm"]
local RLeg = Char["Right Leg"]
local LLeg = Char["Left Leg"]	
local Torso= Char.Torso
local Root = Char.HumanoidRootPart
local NeutralAnims = true
local Attack = false
local legAnims = true
local Mouse = Plr:GetMouse()
local EffectFolder=Instance.new("Folder")
EffectFolder.Name='Effects'
EffectFolder.Parent=Char
local FXFolder = script:WaitForChild'Effects'
FXFolder.Parent=nil
pcall(function()
local Vector3Sequence,Vector3SequenceKeypoint = unpack(require(script:WaitForChild'Vector3Sequence'))
local CFrameSequence,CFrameSequenceKeypoint = unpack(require(script:WaitForChild'CFrameSequence'))
local SlutCol,CutieCol = Color3.fromRGB(239, 176, 87),Color3.fromRGB(239, 184, 56)
end)


local MrWare = script:WaitForChild("Mr.Ware")
local Plates = script:WaitForChild("Plates")
Plates.Parent = nil

local BuffBoy = script:WaitForChild("John_Bomb")
local JHead = BuffBoy.Head
local JRArm = BuffBoy["Right Arm"]
local JLArm = BuffBoy["Left Arm"]
local JRLeg = BuffBoy["Right Leg"]
local JLLeg = BuffBoy["Left Leg"]	
local JTorso= BuffBoy.Torso
local JRoot = BuffBoy.HumanoidRootPart

local IdData = {5332262373,5332268147}

local Movement = 10
local Sine = 0;
local Change = 1;
local wsVal = 6

--// INSTANCE CREATORS \\--
local baseSound = IN("Sound")
function Sound(parent,id,pitch,volume,looped,effect,autoPlay)
	local Sound = baseSound:Clone()
	Sound.SoundId = "rbxassetid://".. tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(autoPlay)then
		coroutine.wrap(function()
			repeat wait() until Sound.IsLoaded
			Sound.Playing = autoPlay or false
		end)()
	end
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			Sound:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent =parent or workspace
	return Sound
end
function Part(parent,color,material,size,cframe,anchored,cancollide)
	local part = IN("Part")
	part[typeof(color) == 'BrickColor' and 'BrickColor' or 'Color'] = color or C3.N(0,0,0)
	part.Material = material or Enum.Material.SmoothPlastic
	part.TopSurface,part.BottomSurface=10,10
	part.Size = size or V3.N(1,1,1)
	part.CFrame = cframe or CF.N(0,0,0)
	part.CanCollide = cancollide or false
	part.Anchored = anchored or false
	part.Parent = parent
	return part
end

function Weld(part0,part1,c0,c1)
	local weld = IN("Weld")
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = c0 or CF.N()
	weld.C1 = c1 or CF.N()
	weld.Parent = part0
	return weld
end

function Mesh(parent,meshtype,meshid,textid,scale,offset)
	local part = IN("SpecialMesh")
	part.MeshId = meshid or ""
	part.TextureId = textid or ""
	part.Scale = scale or V3.N(1,1,1)
	part.Offset = offset or V3.N(0,0,0)
	part.MeshType = meshtype or Enum.MeshType.Sphere
	part.Parent = parent
	return part
end

function SoundPart(id,pitch,volume,looped,effect,autoPlay,cf)
	local soundPart = Part(EffectFolder,C3.N(1,1,1),Enum.Material.SmoothPlastic,V3.N(.05,.05,.05),cf,true,false)
	soundPart.Transparency=1
	local Sound = IN("Sound")
	Sound.SoundId = "rbxassetid://".. tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(autoPlay)then
		coroutine.wrap(function()
			repeat wait() until Sound.IsLoaded
			Sound.Playing = autoPlay or false
		end)()
	end
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			soundPart:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent = soundPart
	return Sound
end

function Joint(name,part0,part1,c0,c1,type)
	local joint = IN(type or "Motor6D")
	joint.Part0 = part0
	joint.Part1 = part1
	joint.C0 = c0 or CF.N()
	joint.C1 = c1 or CF.N()
	joint.Parent=part0
	joint.Name=name or part0.." to "..part1.." "..joint.ClassName
	return joint
end

function Animate(joint,c0,alpha,style,dir)
	if(style=='Lerp')then
		joint.C0 = joint.C0:lerp(c0,alpha)
	else
		local info = TweenInfo.new(alpha or 1,style or Enum.EasingStyle.Linear,dir or Enum.EasingDirection.Out,0,false,0)
		local tween = S.TweenService:Create(joint,info,{C0=c0})
		tween:Play();
		return tween;
	end
end

function NewInstance(instance,parent,properties)if(properties.Parent)then properties.Parent=parent end;local new = IN(instance)if(properties)then for prop,val in next, properties do pcall(function() new[prop]=val end)end;end;new.Parent=parent;return new;end

function GetAdjacentParts(part)
	local function createLargerHitbox(part)
		local n = 0.2
		local clone = part:Clone()
		
		clone.Transparency = .8
		clone.BrickColor = BrickColor.Red()
		clone.Size = clone.Size + Vector3.new(n, n, n)
		clone.Name = "hitbox"
		clone.CFrame = part.CFrame
		clone.Anchored=true
		clone.CanCollide=true
		
		if (clone:IsA("WedgePart")) then
			clone.Size = clone.Size + Vector3.new(0, n, n)
			clone.CFrame = part.CFrame * CFrame.new(0, n / 2, -n /2)
		end
		
		if (clone:IsA("CornerWedgePart")) then
			clone.Size = clone.Size + Vector3.new(n, n, n)
			clone.CFrame = part.CFrame * CFrame.new(-n / 2, n / 2, n / 2)
		end
		clone.Parent = part
		
		return clone
	end
	
	local hitbox = createLargerHitbox(part)
	local touchingParts = hitbox:getTouchingParts()
	hitbox:Destroy()
	
	return (function()
		local adjacent={}
		for _,v in next, touchingParts do if(v~=part)then table.insert(adjacent,v)end;end
		return adjacent;
	end)()
end
--// CUSTOMIZABLE VARIABLES \\--

local DamageColor = BrickColor.new'Really red';
local MusicData = {Parent=Torso,ID=IdData[1];Pitch=1;Volume=2;}
local God = false
local WalkSpeed = 16

local Music = Sound(MusicData.Parent,MusicData.ID,MusicData.Pitch,MusicData.Volume,true,false,true)
Music.Name = 'Music'

MrWare:WaitForChild("Shirt").Parent = Char
MrWare:WaitForChild("Pants").Parent = Char

local BH = MrWare:WaitForChild("Head")
BH.Parent = Head
local BHa = BH:WaitForChild("Handle")
BHa.Anchored = false
Joint("FHead",Head,BHa,CF.N(),CF.N())

--// JOINTS \\--
local RJ = Joint("RootJoint",Root,Torso,CF.N(),CF.N())
local NK = Joint("Neck",Torso,Head,CF.N(0,1.5,0),CF.N())
local LS = Joint("Left Shoulder",Torso,LArm,CF.N(-1.5,.5,0),CF.N(0,.5,0))
local RS = Joint("Right Shoulder",Torso,RArm,CF.N(1.5,.5,0),CF.N(0,.5,0))
local LH = Joint("Left Hip",Torso,LLeg,CF.N(-.5,-2,0),CF.N(0,0,0))
local RH = Joint("Right Hip",Torso,RLeg,CF.N(.5,-2,0),CF.N(0,0,0))

local LSC0 = LS.C0
local RSC0 = RS.C0
local NKC0 = NK.C0
local LHC0 = LH.C0
local RHC0 = RH.C0
local RJC0 = RJ.C0

JRoot.Anchored = false
local JRJ = Joint("RootJoint",JRoot,JTorso,CF.N(),CF.N())
local JNK = Joint("Neck",JTorso,JHead,CF.N(0,1.5,0),CF.N())
local JLS = Joint("Left Shoulder",JTorso,JLArm,CF.N(-1.5,.5,0),CF.N(0,.5,0))
local JRS = Joint("Right Shoulder",JTorso,JRArm,CF.N(1.5,.5,0),CF.N(0,.5,0))
local JLH = Joint("Left Hip",JTorso,JLLeg,CF.N(-.5,-2,0),CF.N(0,0,0))
local JRH = Joint("Right Hip",JTorso,JRLeg,CF.N(.5,-2,0),CF.N(0,0,0))

local JLSC0 = LS.C0
local JRSC0 = RS.C0
local JNKC0 = NK.C0
local JLHC0 = LH.C0
local JRHC0 = RH.C0
local JRJC0 = RJ.C0

BuffBoy.Parent = nil

--// Artificial HB \\--

local ArtificialHB = IN("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

local tf = 0
local allowframeloss = false
local tossremainder = false
local lastframe = tick()
local frame = 1/60
ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				ArtificialHB:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end

--// STOP ANIMATIONS \\--
for _,v in next, Hum:GetPlayingAnimationTracks() do
	v:Stop();
end

pcall(game.Destroy,Char:FindFirstChild'Animate')
pcall(game.Destroy,Hum:FindFirstChild'Animator')

--// EFFECT FUNCTIONS \\--
pcall(function()
local EasingFunctions = require(script:WaitForChild'Tweens')
end)

local fromaxisangle = function(x, y, z) -- credit to phantom forces devs
	if not y then
		x, y, z = x.x, x.y, x.z
	end
	local m = (x * x + y * y + z * z) ^ 0.5
	if m > 1.0E-5 then
		local si = math.sin(m / 2) / m
		return CFrame.new(0, 0, 0, si * x, si * y, si * z, math.cos(m / 2))
	else
		return CFrame.new()
	end
end

function fakePhysics(elapsed,cframe,velocity,rotation,acceleration)
	local pos = cframe.p
	local matrix = cframe-pos
	return fromaxisangle(elapsed*rotation)*matrix+pos+elapsed*velocity+elapsed*elapsed*acceleration
end

function CastRay(startPos,endPos,range,ignoreList)
	local ray = Ray.new(startPos,(endPos-startPos).unit*range)
	local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList or {},false,true)
	return part,pos,norm,(pos and (startPos-pos).magnitude)
end

function GetTorso(char)
	return char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart'
end

function Projectile(data)
	local Size = data.Size or 1;
	local Origin = data.Origin or CFrame.new();
	local Velocity = data.Velocity or Vector3.new(0,100,0);
	local Gravity = data.Gravity or workspace.Gravity;
	local Color = data.Color or Color3.new(.7,0,0);
	local Lifetime = data.Lifetime or 1;
	local Material = data.Material or Enum.Material.Glass;
	local ignore = data.Ignorelist or {Char};
	local Init = data.Init;
	local Update = data.Update;
	local HitFunc = data.Hit;
	local ShouldCollide = data.BeforeCollision;
	local DeleteOnHit = not not data.DeleteOnHit;
	local ProjectilePart = data.Projectile or nil;
	local Look = data.AimAtPos or false;
	local drop = ProjectilePart or Part(nil,Color,Material,Vector3.new(Size,Size,Size),Origin,true,false)
	local StartTravel = tick()
	local currCF = data.Origin
	if(not ProjectilePart)then
		Mesh(drop,Enum.MeshType.Sphere)
		drop.Parent=EffectFolder
	end
	drop.Material = Material
	drop.Color = Color
	drop.CFrame=Origin
	local object=setmetatable({Part=drop},{
		__newindex=function(s,i,v)
			if(i=='Gravity')then StartTravel = tick() data.Origin = currCF Origin=currCF data.Gravity = v Gravity=v
			elseif(i=='Velocity')then StartTravel = tick() data.Origin = currCF Origin=currCF data.Velocity = v Velocity=v
			elseif(i=='Lifetime')then data.Lifetime = v Lifetime=v 
			elseif(i=='Ignorelist')then data.Ignorelist = v ignore=v
			elseif(i=='DeleteOnHit')then data.DeleteOnHit = v DeleteOnHit=v 
			else
				pcall(function()
					drop[i]=v
				end)
			end
		end;
		__index=data;
	})
	
	
	if(Init)then
		Init(drop)
	end
	local startTick = tick();
	coroutine.wrap(function()
		while true do
			local elapsed = tick()-startTick
			local trElapsed = tick()-StartTravel
			if(elapsed>Lifetime)then
				drop:destroy();
				break
			end
			local newCF = fakePhysics(trElapsed,Origin,Velocity,Vector3.new(),Vector3.new(0,-Gravity,0))
			local nextCF = fakePhysics(trElapsed+.05,Origin,Velocity,Vector3.new(),Vector3.new(0,-Gravity,0))
			local dist = (drop.Position-newCF.p).magnitude
			local hit,pos,norm = CastRay(drop.Position,newCF.p,dist,ignore)
			currCF=newCF
			local doCollide = hit and (GetTorso(hit.Parent) or hit.CanCollide) and (not ShouldCollide or ShouldCollide(hit))
			if(hit and not doCollide)then table.insert(ignore,hit) end
			if(Look)then
				drop.CFrame = CFrame.new(newCF.p,nextCF.p)
			else
				drop.CFrame = CFrame.new(newCF.p)
			end
			if(Update)then Update(drop,object,elapsed) end
			if(doCollide)then
				if(DeleteOnHit or not HitFunc)then drop:destroy() end
				if(HitFunc)then if(HitFunc(hit,pos,norm,object,drop))then break end end
			end
			if(not drop.Parent)then
				break
			end
			swait()
		end
	end)()
	return object
	end
	
function Chat(txt,timer,clr)
	if(Head:FindFirstChild'Chattie' and Head.Chattie:FindFirstChild'Killchat')then
		Head.Chattie.Killchat.Value=true
	elseif(Head:FindFirstChild'Chattie')then
		Head.Chattie:destroy()
	end
	local nig = V3.N(0,0,0)
	local clr = (typeof(clr)=='BrickColor' and clr.Color or typeof(clr)=='Color3' and clr or C3.N(1,1,1))
	local bg = NewInstance("BillboardGui",Head,{
		Name='Chattie';
		Adornee=Head;
		LightInfluence=0;
		Size=UDim2.new(4,0,2,0);
	})
	local dismiss = NewInstance("BoolValue",bg,{
		Name='Killchat';
	})
	
	local text = NewInstance("TextLabel",bg,{
		BackgroundTransparency=1;
		Size=UDim2.new(1,0,1,0);
		Font=Enum.Font.Fantasy;
		Text=txt;
		TextColor3=clr;
		TextStrokeColor3=C3.N(0,0,0);
		TextScaled=true;
		TextTransparency=0;
		TextStrokeTransparency=.5;
	})
	coroutine.wrap(function()
		for i = 1, 0, -.02 do
			bg.StudsOffsetWorldSpace=nig:lerp(nig+V3.N(0,3,0),EasingFunctions.outBack(1-i,0,1,1,6))
			if(dismiss.Value)then break end
			swait()
		end
		local start = tick()
		nig=bg.StudsOffsetWorldSpace
		repeat swait() until dismiss.Value or tick()-start>=timer
		bg.Name='DismissingChat'
		for i = 0, 1, .05 do
			bg.StudsOffsetWorldSpace=nig:lerp(nig+V3.N(0,2,0),EasingFunctions.linear(i,0,1,1))
			text.TextTransparency=i;
			text.TextStrokeTransparency=.5+i/2;
			swait()
		end
		bg:destroy()
	end)()
end

function ShowDamage(pos,txt,timer,clr)
	local nig = typeof(pos)=='Vector3' and CF.N(pos) or pos
	local part = Part(EffectFolder,clr,Enum.Material.SmoothPlastic,V3.N(.05,.05,.05),nig,true,false)
	part.Transparency=1
	local bg = NewInstance("BillboardGui",part,{
		Adornee=part;
		LightInfluence=0;
		Size=UDim2.new(2,0,1,0);
	})
	local text = NewInstance("TextLabel",bg,{
		BackgroundTransparency=1;
		Size=UDim2.new(1,0,1,0);
		Font=Enum.Font.Fantasy;
		Text=txt;
		TextColor3=part.Color;
		TextStrokeColor3=C3.N(0,0,0);
		TextScaled=true;
		TextTransparency=1;
		TextStrokeTransparency=1;
	})
	coroutine.wrap(function()
		for i = 1, 0, -.02 do
			part.CFrame=nig:lerp(nig+V3.N(0,3,0),EasingFunctions.outBack(1-i,0,1,1,6))
			text.TextTransparency=i;
			text.TextTransparency=text.TextTransparency-.02;
			text.TextStrokeTransparency=text.TextStrokeTransparency-.01;
			swait()
		end
		local start = tick()
		repeat swait() until tick()-start>=timer
		local endRot=M.RNG(-25,25)
		for i = 0, 1, .02 do
			part.CFrame=(nig+V3.N(0,3,0)):lerp(nig+V3.N(0,-10,0),EasingFunctions.inBack(i,0,1,1,6))
			text.TextTransparency=i;
			text.TextTransparency=text.TextTransparency+.02;
			text.TextStrokeTransparency=text.TextStrokeTransparency+.01;
			swait()
		end
		part:destroy()
	end)()
end

function CamshakePlayer(p,settings)
	local sh = script:WaitForChild'CamShake':Clone()	
	local optionFolder = sh:WaitForChild'Options'
	for _,v in next, optionFolder:children() do
		if(settings[v.Name])then
			v.Value=settings[v.Name]
		end
	end
	local originVal;
	if(typeof(settings.Origin)=='Vector3')then
		originVal=IN("Vector3Value")
	elseif(typeof(settings.Origin)=='CFrame')then
		originVal=IN("CFrameValue")
	elseif(typeof(settings.Origin)=='Instance')then
		originVal=IN("ObjectValue")
	end
	if(originVal)then
		originVal.Name = 'Origin'
		originVal.Value = settings.Origin
		originVal.Parent=optionFolder
	end
	local parent = p.Character or p:FindFirstChildOfClass'Backpack' or p:FindFirstChildOfClass'PlayerGui'
	if(parent)then
		local nig = sh:Clone();
		nig.Parent=parent
		nig.Disabled=false
		S.Debris:AddItem(nig,(settings.Duration or 2)+1)
	end
end

function Camshake(settings)
	for _,p in next, game:service'Players':players() do
		CamshakePlayer(p,settings)
	end
end
function Tween(object,properties,time,style,dir,repeats,reverse,delay)
	local info = TweenInfo.new(time or 1,style or Enum.EasingStyle.Linear,dir or Enum.EasingDirection.Out,repeats or 0,reverse or false,delay or 0)
	local tween = S.TweenService:Create(object,info,properties)
	tween:Play()
	return tween;
end

local function numLerp(Start,Finish,Alpha)
    return Start + (Finish- Start) * Alpha
end
function IsValidEnum(val,enum,def)
	local enum = Enum[tostring(enum)]
	local succ,err=pcall(function() return enum[val.Name] end)
	if(not err)then
		return val
	else
		return def
	end
end

function IsValid(val,type,def)
	if(typeof(type)=='string')then
		return (typeof(val)==type and val or def)
	elseif(typeof(type)=='table')then
		for i,v in next, type do
			if(typeof(val)==v)then
				return val
			end
		end
	end
	return def
end

local FXInformation = {}
function EffectFunc(data)
	if(typeof(data)=='Instance' and data:IsA'ModuleScript')then	data=require(data)end
	assert(typeof(data)=='table',"Expected 'table' calling EffectFunc")
	data.Parent=EffectFolder
	if(data.BeamEffect)then
		return Slash(data)
	end
	
	local Lifetime = data.Lifetime or 1;
	local Color = data.Color or Color3.new(1,1,1)
	local EndColor = data.EndColor
	local Size = data.Size or Vector3.new(1,1,1)
	local EndSize = data.EndSize
	local Transparency = data.Transparency or 0
	local EndTransparency = data.EndTransparency or 1
	local Material = data.Material or Enum.Material.Neon;
	local Part = typeof(data.RefPart)=='Instance' and data.RefPart or typeof(data.RefPart)=='string' and FXFolder:FindFirstChild(data.RefPart);
	local CF = data.CFrame or CFrame.new(0,10,0)
	local EndCF = data.EndCFrame or data.EndPos
	local Mesh = data.MeshData or data.Mesh or {MeshType=Enum.MeshType.Brick}
	local Rotation = data.Rotation or {0,0,0}
	local UpdateCF = data.UpdateCFrame;
	local Update = data.Update;
	
	local CSQ,SSQ,TSQ,CFQ;
	if(typeof(Color)=='BrickColor')then Color = Color.Color end
	if(typeof(EndColor)=='BrickColor')then EndColor = EndColor.Color end
	if(typeof(Color)=='ColorSequence')then
		CSQ = Color
	elseif(typeof(Color)=='Color3' and typeof(EndColor)=='Color3')then
		CSQ = ColorSequence.new(Color,EndColor)
	elseif(typeof(Color)=='Color3')then
		CSQ = ColorSequence.new(Color)
	else
		CSQ = ColorSequence.new(Color3.new(1,1,1))
	end
	
	
	if(typeof(Size)=='table' and Size.Keypoints and typeof(Size.Keypoints[1].Value)=='Vector3')then
		SSQ = Size
	elseif(typeof(Size)=='Vector3' and typeof(EndSize)=='Vector3')then
		SSQ = Vector3Sequence.new(Size,EndSize)
	elseif(typeof(Size)=='Vector3')then
		SSQ = Vector3Sequence.new(Size)
	else
		SSQ = Vector3Sequence.new(Vector3.new(1,1,1))
	end
	
	if(typeof(CF)=='table' and CF.Keypoints and typeof(CF.Keypoints[1].Value)=='CFrame')then
		CFQ = CF
	elseif(typeof(CF)=='CFrame' and typeof(EndCF)=='CFrame')then
		CFQ = CFrameSequence.new(CF,EndCF)
	elseif(typeof(CF)=='CFrame')then
		CFQ = CFrameSequence.new(CF)
	else
		CFQ = CFrameSequence.new(CFrame.new(0,10,0))
	end
		
	if(typeof(Transparency)=='NumberSequence')then
		TSQ = Transparency
	elseif(typeof(Transparency)=='number' and typeof(EndTransparency)=='number')then
		TSQ = NumberSequence.new(Transparency,EndTransparency)
	elseif(typeof(Transparency)=='number')then
		TSQ = NumberSequence.new(Transparency)
	else
		TSQ = NumberSequence.new(0,1)
	end
	
	
	local part,mesh;
	if(not Part or not Part:IsA'BasePart')then
		part = Instance.new("Part")
		mesh = Instance.new("SpecialMesh",part)
	else
		part=Part:Clone();
		mesh=part:FindFirstChildOfClass'DataModelMesh'
	end
	part.Color = CSQ.Keypoints[1].Value
	part.Transparency = TSQ.Keypoints[1].Value
	part.Size = (not mesh and SSQ.Keypoints[1].Value or Vector3.new(1,1,1))
	part.Anchored = true
	part.CanCollide = false
	part.CFrame = CFQ.Keypoints[1].Value
	part.Material = Material
	part.Locked = true
	part.Parent = EffectFolder
	if(mesh)then
		mesh.Scale = SSQ.Keypoints[1].Value
		mesh.MeshType = Mesh.MeshType or Mesh.Type or Enum.MeshType.Brick
		mesh.MeshId = Mesh.MeshId or Mesh.Id or ""
		mesh.TextureId = Mesh.TextureId or Mesh.Texture or ""
	end
	game:service'Debris':AddItem(part,Lifetime*1.5)
	table.insert(FXInformation,{
		Part=part;
		Mesh=mesh;
		Lifetime=Lifetime;
		Create=tick();
		ColorSeq=CSQ;
		SizeSeq=SSQ;
		TranSeq=TSQ;
		CFSeq=CFQ;
		ColorPoint=CSQ.Keypoints[1];
		SizePoint=SSQ.Keypoints[1];
		TranPoint=TSQ.Keypoints[1];
		CFPoint=CFQ.Keypoints[1];
		Rotation=Rotation;
		CurrRot=CFrame.new();
		UpdateCF=(typeof(UpdateCF)=='function' and UpdateCF or typeof(UpdateCF)=='Instance' and UpdateCF:IsA'ModuleScript' and require(UpdateCF) or nil);
		OnUpdate=(typeof(Update)=='function' and Update or typeof(Update)=='Instance' and Update:IsA'ModuleScript' and require(Update) or nil)
	})
end

function GetKeyframe(sequence,currentTime,lifeTime)
	local scale = currentTime/lifeTime
	for i = 1,#sequence.Keypoints do
		local keyframe = sequence.Keypoints[i]
		local nframe = sequence.Keypoints[i+1]
		if(not nframe or keyframe.Time>=scale and keyframe.Time<nframe.Time)then
			return keyframe
		end
	end
	return sequence.Keypoints[1];
end;

coroutine.wrap(function()
	while true do
		swait()
		local queue={}
		for i,dat in next, FXInformation do
			local part,mesh,lifetime,created,csq,ssq,tsq,cfq,rot,ucf,upd = 
																	dat.Part,
																	dat.Mesh,
																	dat.Lifetime,
																	dat.Create,
																	dat.ColorSeq,
																	dat.SizeSeq,
																	dat.TranSeq,
																	dat.CFSeq,
																	dat.Rotation,
																	dat.UpdateCF,
																	dat.OnUpdate;
			local current = tick();
			local elapsed = tick()-created
			local currentcpoint = GetKeyframe(csq,elapsed,lifetime)
			local currentspoint = GetKeyframe(ssq,elapsed,lifetime)
			local currenttpoint = GetKeyframe(tsq,elapsed,lifetime)
			local currentcfpoint = GetKeyframe(cfq,elapsed,lifetime)
			
			local currentcolor = currentcpoint.Value
			local currenttrans = currenttpoint.Value
			local currentsize = currentspoint.Value
			local currentcf = currentcfpoint.Value
			
			if(currentcpoint~=dat.ColorPoint)then
				Tween(part,{Color=currentcolor},(currentcpoint.Time-dat.ColorPoint.Time)*lifetime)
				dat.ColorPoint=currentcpoint
			end
			if(currenttpoint~=dat.TranPoint)then
				Tween(part,{Transparency=currenttrans},(currenttpoint.Time-dat.TranPoint.Time)*lifetime)
				dat.TranPoint=currenttpoint
			end
			if(currentspoint~=dat.SizePoint)then
				if(mesh)then
					Tween(mesh,{Scale=currentsize},(currentspoint.Time-dat.SizePoint.Time)*lifetime)
				else
					Tween(part,{Size=currentsize},(currentspoint.Time-dat.SizePoint.Time)*lifetime)
				end
				
				dat.SizePoint=currentspoint
			end
			local newRot={0,0,0}
			if(rot=='random')then
				dat.CurrRot = CFrame.Angles(math.rad(Random.new():NextInteger(0,360)),math.rad(Random.new():NextInteger(0,360)),math.rad(Random.new():NextInteger(0,360)))
			elseif(typeof(rot)=='table')then
				dat.CurrRot = dat.CurrRot*CFrame.Angles(math.rad(rot[1]),math.rad(rot[2]),math.rad(rot[3]))
			end
			if(ucf and typeof(ucf)=='function')then
				part.CFrame=ucf(dat)
			elseif(#cfq.Keypoints==2)then
				part.CFrame=cfq.Keypoints[1].Value:lerp(cfq.Keypoints[2].Value,elapsed/lifetime)*dat.CurrRot
			else
				if(currentcfpoint~=dat.CFPoint)then
					Tween(part,{CFrame=currentcf},(currentcfpoint.Time-dat.CFPoint.Time)*lifetime)
					dat.CFPoint=currentcfpoint
				end
			end
			if(typeof(upd)=='function')then upd(dat) end
			if(not part or not part.Parent)then
				table.insert(queue,tostring(i))
			end
			if(elapsed>=lifetime)then
				part:destroy()
			end
		end
		for _,v in next, queue do FXInformation[tonumber(v)]=nil; end
	end
end)()

function Slash(data) -- Credit to Kyu for the basic idea behind it
	local Parent = IsValid(data.Parent,'Instance',workspace)
	local Color = IsValid(data.Color,{'Color3','BrickColor'},Color3.new(1,1,1))
	local Width = IsValid(data.Width,'number',2);
	local EndWidth = IsValid(data.EndWidth,'number',0);
	local Length = IsValid(data.Length,'number',1);
	local EndLength = IsValid(data.EndLength,'number',Length*2);
	local Curve = IsValid(data.Curve,"number",2);
	local EndCurve = IsValid(data.EndCurve,"number",Curve*2);
	local SCFrame = IsValid(data.CFrame,'CFrame',CFrame.new(0,10,0))
	local Lifetime = IsValid(data.Lifetime,'number',.25)
	local Offset = IsValid(data.Offset,'CFrame',CFrame.new())
	local Style = IsValidEnum(IsValid(data.EasingStyle,'EnumItem',Enum.EasingStyle.Quad),Enum.EasingStyle,Enum.EasingStyle.Quad)
	local Direction = IsValidEnum(IsValid(data.EasingDirection,'EnumItem',Enum.EasingDirection.Out),Enum.EasingDirection,Enum.EasingDirection.Out)
	local Delay = IsValid(data.Delay,'number',0)
	local BeamProperties = IsValid(data.BeamProps,'table',{})
	local FadeAway = IsValid(data.Fades,'boolean',false)
	local FadeStyle = IsValidEnum(IsValid(data.FadeStyle,'EnumItem',Enum.EasingStyle.Linear),Enum.EasingStyle,Enum.EasingStyle.Linear)
	local FadeDir = IsValidEnum(IsValid(data.FadeDirection,'EnumItem',Enum.EasingDirection.Out),Enum.EasingDirection,Enum.EasingDirection.Out)
	local CSQ;
	local TSQ;
	if(typeof(Color)=='ColorSequence')then
		CSQ = Color
	elseif(typeof(Color)=='Color3')then
		CSQ = ColorSequence.new(Color)
	elseif(typeof(Color)=='BrickColor')then
		CSQ = ColorSequence.new(Color.Color)
	else
		CSQ = ColorSequence.new(Color3.new(1,1,1))
	end
	
	local P = Part(Parent,Color,Enum.Material.SmoothPlastic,Vector3.new(0,0,0),SCFrame,true,false)
	P.Transparency = 1
	local A0 = Instance.new("Attachment")
	local A1 = Instance.new("Attachment")
	A0.Position = Vector3.new(0,0,Length)
	A1.Position = Vector3.new(0,0,-Length)
	A0.Parent=P
	A1.Parent=P
	local Beam = Instance.new("Beam")
	Beam.Attachment0=A0
	Beam.Attachment1=A1
	Beam.FaceCamera=true
	Beam.LightInfluence=BeamProperties.LightInfluence or 0
	Beam.LightEmission=BeamProperties.LightEmission or 1
	for i,v in next, BeamProperties do
		pcall(function() Beam[i]=v end)
	end
	Beam.Color = CSQ
	Beam.CurveSize0 = Curve
	Beam.CurveSize1 = -Curve
	Beam.Width0=Width
	Beam.Width1=Width
	Beam.Parent=P
	local ti = {Lifetime,Style,Direction,0,false,Delay}
	Tween(P,{CFrame = SCFrame*Offset},unpack(ti))
	Tween(Beam,{Width0=EndWidth,Width1=EndWidth,CurveSize0=EndCurve,CurveSize1=-EndCurve},unpack(ti))
	Tween(A0,{Position=Vector3.new(0,0,EndLength)},unpack(ti))
	Tween(A1,{Position=Vector3.new(0,0,-EndLength)},unpack(ti)).Completed:connect(function() P:destroy() end)
	if(FadeAway)then
		local part = Instance.new("Part")
		part.Transparency = Beam.Transparency.Keypoints[1].Value or 0
		Tween(part,{Transparency=1},Lifetime,FadeStyle,FadeDir,0,false,Delay)
		repeat swait()
			Beam.Transparency=NumberSequence.new(part.Transparency)
		until not P.Parent
	end
end

local EffectInfo={}
function Effect(data)
	local color = data.Color or Color3.new(1,1,1);
	local transparency = data.Transparency or {0,1}
	local lifetime = data.Lifetime or 1
	local cframe = data.CFrame or CFrame.new(0,10,0)
	local acceleration = data.Acceleration or Vector3.new(0,0,0)
	local endpos = data.EndPos
	local rotation = data.Rotation or {0,0,0}
	local meshData = data.Mesh or {Type=Enum.MeshType.Brick}
	local size = data.Size or Vector3.new(1,1,1)
	local material = data.Material or Enum.Material.Neon
	local setpart = typeof(data.Part)=='string' and FXFolder:FindFirstChild(tostring(data.Part)):Clone() or typeof(data.Part)=='Instance' and data.Part or nil
	local endSize = data.EndSize or size
	local reverse = data.Reverse or 0
	local sizeTween = data.TweenSize and EasingFunctions[data.TweenSize];
	local moveTween = data.TweenPos and EasingFunctions[data.TweenPos];
	local transTween = data.TweenTrans and EasingFunctions[data.TweenTrans];
	local accelTween = data.TweenAccel and EasingFunctions[data.TweenAccel];
	if(endSize and typeof(size)=='Vector3')then size={size,endSize} end
	if(typeof(size)=='Vector3')then size={size,size}end
	if(typeof(transparency)=='number')then transparency={transparency,transparency} end
	if(typeof(color)=='BrickColor')then color=color.Color end
	
	local PM;
	
	local part = setpart or Part(nil,color,material,Vector3.new(1,1,1),cframe,true,false)
	
	if(not part:IsA'MeshPart' and not part:IsA'UnionOperation')then
		local scale = size[1]
		if(meshData == "Blast")then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://20329976','',scale,Vector3.new(0,0,-scale.X/8))
		elseif(meshData == 'Ring')then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://559831844','',scale,Vector3.new(0,0,0))
		elseif(meshData == 'Slash1')then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://662586858','',Vector3.new(scale.X/10,.001,scale.Z/10),Vector3.new(0,0,0))
		elseif(meshData == 'Slash2')then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://448386996','',Vector3.new(scale.X/1000,scale.Y/100,scale.Z/100),Vector3.new(0,0,0))
		elseif(meshData == 'Tornado1')then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://443529437','',scale/10,Vector3.new(0,0,0))
		elseif(meshData == 'Tornado2')then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://168892432','',scale/4,Vector3.new(0,0,0))
		elseif(meshData == 'Skull')then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://4770583','',scale*2,Vector3.new(0,0,0))
		elseif(meshData == 'Crystal')then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://9756362','',scale,Vector3.new(0,0,0))
		elseif(meshData == 'Cloud')then
			PM = Mesh(part,Enum.MeshType.FileMesh,'rbxassetid://1095708','',scale,Vector3.new(0,0,0))
		elseif(typeof(meshData) == 'table' or typeof(meshData) == 'Instance')then
			local Type = meshData.MeshType or meshData.Type or Enum.MeshType.Brick
			local ID = meshData.MeshId or meshData.Mesh or '';
			local Tex = meshData.TextureId or meshData.Texture or '';
			local Offset = meshData.Offset or Vector3.new(0,0,0)
			PM = Mesh(part,Type,ID,Tex,scale,Offset)
		elseif(not part:FindFirstChildOfClass('DataModelMesh'))then
			PM = Mesh(part,Enum.MeshType.Brick,'','',scale)
		else
			PM = part:FindFirstChildOfClass('DataModelMesh')
		end
	end
	
	
	part.Material = material
	part.CFrame = cframe
	part.Color = color
	part.Anchored = true
	part.CanCollide = false
	part.Transparency = transparency[1]
	part.Size = (PM and Vector3.new(1,1,1) or size[1])
	part.Parent = EffectFolder
	
	local start = tick()
	local t0 = tick()
	local t01 = tick()
	local lastTrans='Nil';
	local lastSize='Nil';
	local lastColor='Nil';
	local info = {start,lifetime,t0,transTween,sizeTween,moveTween,accelTween,color,transparency,size,part,PM,rotation,acceleration,endpos,cframe,reverse,acceleration}
	table.insert(EffectInfo,info)
end

coroutine.wrap(function()
	while true do
		swait()
		for i,v in next, EffectInfo do
			local start,lifetime,t0,transTween,sizeTween,moveTween,accelTween,color,transparency,size,part,mesh,rotation,acceleration,endpos,cframe,reverse,startacc=unpack(v)
			local elapsed = tick()-start
			local left = elapsed/lifetime
			local dt = tick()-t0
			t0 = tick()
			if(mesh)then
				mesh.Scale = size[1]:lerp(size[2],(sizeTween and sizeTween(elapsed,0,1,lifetime) or left))
			else
				part.Size = size[1]:lerp(size[2],(sizeTween and sizeTween(elapsed,0,1,lifetime) or left))
			end
			part.Transparency = numLerp(transparency[1],transparency[2],(transTween and transTween(elapsed,0,1,lifetime) or left))
			
			local newRot={0,0,0}
			if(rotation=='random')then
				newRot={math.rad(Random.new():NextInteger(0,360)),math.rad(Random.new():NextInteger(0,360)),math.rad(Random.new():NextInteger(0,360))}
			elseif(typeof(rotation)=='table')then
				local x,y,z=math.rad(rotation[1]),math.rad(rotation[2]),math.rad(rotation[3])
				if(rotation[1]==0)then x=0 end
				if(rotation[2]==0)then y=0 end
				if(rotation[3]==0)then z=0 end
				newRot={x,y,z}
			end
			
			local accelMult=(accelTween and 1-accelTween(elapsed,0,1,lifetime) or 1)

			local accel=(acceleration*dt)
			if(endpos)then
				part.CFrame = cframe:lerp(endpos,(moveTween and moveTween(elapsed,0,1,lifetime) or left))
			elseif(accel and (accel.x~=0 or accel.y~=0 or accel.z~=0))then
				part.CFrame = part.CFrame*CFrame.Angles(unpack(newRot))+(accel*accelMult)
			elseif(newRot and (newRot[1]~=0 or newRot[2]~=0 or newRot[3]~=0))then
				part.CFrame = part.CFrame*CFrame.Angles(unpack(newRot))
			end
			if(reverse>0)then
				acceleration=acceleration-Vector3.new(
					0.05*startacc.x/(reverse/1.5),
					0.05*startacc.y/(reverse/1.5),
					0.05*startacc.z/(reverse/1.5)
				)
			end
			if(elapsed>lifetime)then
				part:destroy()
				EffectInfo[i]=nil
			else
				EffectInfo[i]={start,lifetime,t0,transTween,sizeTween,moveTween,accelTween,color,transparency,size,part,mesh,rotation,acceleration,endpos,cframe,reverse,startacc}
			end
		end
	end
end)()
 
--// MISCELLANEOUS FUNCTIONS \\--
function GetTorso(char)
	return char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart'
end

function CastRay(startPos,endPos,range,ignoreList)
	local ray = Ray.new(startPos,(endPos-startPos).unit*range)
	local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList or {Char},false,true)
	return part,pos,norm,(pos and (startPos-pos).magnitude)
end

function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(R3(point-V3.N(1,1,1)*range/2,point+V3.N(1,1,1)*range/2),ignore,100)
end

--// DAMAGE, AOE, AND ATTACK FUNCTIONS \\--

function DealDamage(data)

end

function AoE(where,range,func)

end

function AoEDamage(where,range,data)

end

--// EVERYTHING ELSE \\--

function Knockback(velocity,decay)
	return function(w,t)
		local BV = IN("BodyVelocity")
		BV.P=20000
		BV.MaxForce=V3.N(M.H,M.H,M.H)
		BV.Velocity=velocity or V3.N(0,25,0)+(Root.CFrame.lookVector*25)
		BV.Parent=t
		S.Debris:AddItem(BV,decay or .5)
	end
end

local Sword = script:WaitForChild("Sword")
Sword.Parent = Char
local Swp = Sword:WaitForChild("Weld")
Swp.Anchored = false
local Hitbox = Sword:WaitForChild("Hitbox")
local Sw = Joint("Penis",RArm,Swp,CF.N(),CF.N())
Hitbox.Transparency = 1

Hitbox.Touched:Connect(function() end)


local CmbRG = 0

function Swing(V)
	Attack = true
	NeutralAnims = false
	WalkSpeed = 4
	if V == 1 then
		Hitbox.Transparency = 0
		for i = 0, 16 do
			swait()
		  	local Alpha = .2
			Animate(NK,CF.N(0.09,1.48,0.11)*CF.A(M.R(17.8),M.R(24.8),M.R(-10.9)),Alpha,'Lerp')
		  	Animate(LS,CF.N(-1.48,0.62,0.05)*CF.A(M.R(25),M.R(0),M.R(-15)),Alpha,'Lerp')
		  	Animate(LH,CF.N(-0.5,-1.44,-1.09)*CF.A(M.R(20),M.R(0),M.R(0)),Alpha,'Lerp')
		  	Animate(RJ,CF.N(0.13,-0.25,-0.26)*CF.A(M.R(-26.9),M.R(-23.4),M.R(-9.1)),Alpha,'Lerp')
		  	Animate(RH,CF.N(0.5,-2.02,0.11)*CF.A(M.R(-20),M.R(0),M.R(0)),Alpha,'Lerp')
		  	Animate(RS,CF.N(1.59,0.48,0.11)*CF.A(M.R(-17.5),M.R(-9.8),M.R(28.5)),Alpha,'Lerp')
		end
		local ts = Sound(Hitbox,12222216,math.random(600,1200)/1000,2,false,nil,true)
		ts.TimePosition = .2
		local TForce = Instance.new("BodyVelocity",Root)
		TForce.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		TForce.Velocity = Vector3.new(8 * Root.CFrame.lookVector.X,0,8 * Root.CFrame.lookVector.Z)
		coroutine.resume(coroutine.create(function()
			wait(.1)
			local DamagedProstates = {}
			for i,v in pairs(Hitbox:GetTouchingParts()) do
				if v.Parent:IsA("Model") and v.Parent ~= Char and v.Parent ~= BuffBoy and v.Parent:FindFirstChildOfClass("Humanoid") then
					if not DamagedProstates[v.Parent.Name] then
						DamagedProstates[v.Parent.Name] = "hi"
						DealDamage({Who = v.Parent,MinDam = 20, MaxDamage = 30, OnHit = function(v) Sound(v:FindFirstChildOfClass("HumanoidRootPart") or nil,2440888376,math.random(700,1200)/1000,4,false,nil,true) Sound(v:FindFirstChildOfClass("HumanoidRootPart") or nil,566593606,math.random(700,1200)/1000,4,false,nil,true) end})
					end
				end
			end
		end))
		for i = 0, 17 do
			swait()
			local Alpha = .3
		  	Animate(NK,CF.N(-0.02,1.48,0.13)*CF.A(M.R(16.3),M.R(-36),M.R(3)),Alpha,'Lerp')
		  	Animate(LS,CF.N(-1.48,0.62,0.05)*CF.A(M.R(-4.1),M.R(7.4),M.R(-13.1)),Alpha,'Lerp')
		  	Animate(LH,CF.N(-0.68,-1.4,-1.29)*CF.A(M.R(20),M.R(0),M.R(0)),Alpha,'Lerp')
		  	Animate(RJ,CF.N(0.13,-0.25,-0.26)*CF.A(M.R(-40.7),M.R(24),M.R(18.5)),Alpha,'Lerp')
		  	Animate(RH,CF.N(0.29,-2.28,-0.08)*CF.A(M.R(-18.7),M.R(4.8),M.R(-5.1)),Alpha,'Lerp')
			Animate(RS,CF.N(1.03,0.92,-0.81)*CF.A(M.R(147.5),M.R(22.7),M.R(-24.7)),Alpha,'Lerp')
			Animate(Sw,CF.N()*CFrame.Angles(math.rad(0),math.rad(45),math.rad(0)),Alpha,'Lerp')
		end
		TForce:Destroy()
		Hitbox.Transparency = 1
	elseif V == 2 then
		Sw.C0 = Sw.C0 * CFrame.Angles(math.rad(0),math.rad(45),math.rad(0))
		Hitbox.Transparency = 0
		for i = 0,16 do
			swait()
			local Alpha = .2
			Animate(NK,CF.N(0,1.5,0)*CF.A(M.R(0),M.R(-25),M.R(0)),Alpha,'Lerp')
		  	Animate(LS,CF.N(-1.43,0.75,0)*CF.A(M.R(0),M.R(0),M.R(-30)),Alpha,'Lerp')
		  	Animate(LH,CF.N(-0.5,-2,-0.77)*CF.A(M.R(15),M.R(0),M.R(0)),Alpha,'Lerp')
		  	Animate(RJ,CF.N(0,0,0)*CF.A(M.R(-12.1),M.R(34.4),M.R(6.9)),Alpha,'Lerp')
		  	Animate(RH,CF.N(0.5,-2.09,0.4)*CF.A(M.R(-20),M.R(0),M.R(0)),Alpha,'Lerp')
		  	Animate(RS,CF.N(0.82,0.56,-1.02)*CF.A(M.R(103.9),M.R(-18.7),M.R(-36)),Alpha,'Lerp')
		end
		local ts = Sound(Hitbox,12222216,math.random(600,1200)/1000,2,false,nil,true)
		ts.TimePosition = .2	
		local TForce = Instance.new("BodyVelocity",Root)
		TForce.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		TForce.Velocity = Vector3.new(8 * Root.CFrame.lookVector.X,0,8 * Root.CFrame.lookVector.Z)	
		coroutine.resume(coroutine.create(function()
			wait(.1)
			local DamagedProstates = {}
			for i,v in pairs(Hitbox:GetTouchingParts()) do
				if v.Parent:IsA("Model") and v.Parent ~= Char and v.Parent ~= BuffBoy and v.Parent:FindFirstChildOfClass("Humanoid") then
					if not DamagedProstates[v.Parent.Name] then
						DamagedProstates[v.Parent.Name] = "hi"
						DealDamage({Who = v.Parent,MinDam = 20, MaxDamage = 30, OnHit = function(v) Sound(v:FindFirstChildOfClass("HumanoidRootPart") or nil,2440888376,math.random(900,1200)/1000,4,false,nil,true) Sound(v:FindFirstChildOfClass("HumanoidRootPart") or nil,566593606,math.random(700,1200)/1000,4,false,nil,true) end})
					end
				end
			end
		end))
		for i = 0, 17 do
			swait()
			local Alpha = .3
			Animate(NK,CF.N(0.09,1.48,0.11)*CF.A(M.R(17.8),M.R(24.8),M.R(-10.9)),Alpha,'Lerp')
		  	Animate(LS,CF.N(-1.48,0.62,0.05)*CF.A(M.R(25),M.R(0),M.R(-15)),Alpha,'Lerp')
		  	Animate(LH,CF.N(-0.5,-1.44,-1.09)*CF.A(M.R(20),M.R(0),M.R(0)),Alpha,'Lerp')
		  	Animate(RJ,CF.N(0.13,-0.25,-0.26)*CF.A(M.R(-26.9),M.R(-23.4),M.R(-9.1)),Alpha,'Lerp')
		  	Animate(RH,CF.N(0.5,-2.02,0.11)*CF.A(M.R(-20),M.R(0),M.R(0)),Alpha,'Lerp')
			Animate(RS,CF.N(1.59,0.48,0.11)*CF.A(M.R(-17.5),M.R(-9.8),M.R(28.5)),Alpha,'Lerp')
			Animate(Sw,CF.N(),Alpha,'Lerp')
		end
		
		TForce:Destroy()
		Hitbox.Transparency = 1
		Sw.C0 = CF.N()
	end
	Attack = false
	NeutralAnims = true
	WalkSpeed = 16
end

function StandOnThePlatforms()
	Attack = true
	NeutralAnims = false
	WalkSpeed = 0
	local TtP = CFrame.new(Root.Position.X,Root.Position.Y - 2,Root.Position.Z)
	for i = 1,30 do
		swait()
		local Alpha = .15
		Animate(NK,CF.N(0.02,1.5,0.04)*CF.A(M.R(5.5),M.R(24.9),M.R(-2.8)),Alpha,'Lerp')
	  	Animate(LS,CF.N(-1.5,0.47,-0.03)*CF.A(M.R(30.1),M.R(-1.7),M.R(4.7)),Alpha,'Lerp')
	  	Animate(LH,CF.N(-1.2,-0.79,-1.31)*CF.A(M.R(45.7),M.R(11.4),M.R(-17.1)),Alpha,'Lerp')
	  	Animate(RJ,CF.N(0.21,-0.26,-0.37)*CF.A(M.R(-46),M.R(-23.3),M.R(0.2)),Alpha,'Lerp')
	  	Animate(RH,CF.N(0.36,-1.89,-0.91)*CF.A(M.R(-5.8),M.R(29.9),M.R(2.9)),Alpha,'Lerp')
	  	Animate(RS,CF.N(1.38,0.04,-0.58)*CF.A(M.R(41.3),M.R(14.9),M.R(-30.2)),Alpha,'Lerp')
	end
	local TForce = Instance.new("BodyVelocity",Root)
	TForce.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	TForce.Velocity = Vector3.new(0,200,0)
	SoundPart(1060191237,1,5,false,nil,true,TtP)
	Effect({CFrame = TtP,Color = Color3.fromRGB(255,0,0),EndColor = BrickColor.new("Really red").Color,Size = Vector3.new(1,1,1),EndSize = Vector3.new(80,80,80),Mesh = {Type = Enum.MeshType.Sphere},Lifetime = .4})
	Effect({CFrame = TtP,Size = Vector3.new(1,1,1),EndSize = Vector3.new(120,120,120),Mesh = {Type = Enum.MeshType.Sphere},Lifetime = .6})
	
	for i = 1,10 do
		swait()
		local Alpha = .5
		Animate(NK,CF.N(0.04,1.41,0.28)*CF.A(M.R(34.6),M.R(3),M.R(-4.6)),Alpha,'Lerp')
	  	Animate(LS,CF.N(-1.48,0.56,-0.12)*CF.A(M.R(-11.3),M.R(-12.3),M.R(-9.3)),Alpha,'Lerp')
	  	Animate(LH,CF.N(-0.41,-0.92,-0.79)*CF.A(M.R(-2),M.R(-4.9),M.R(-3.7)),Alpha,'Lerp')
	  	Animate(RJ,CF.N(0.21,-0.26,-0.37)*CF.A(M.R(-6),M.R(1.4),M.R(-0.9)),Alpha,'Lerp')
	  	Animate(RH,CF.N(0.49,-1.82,-0.07)*CF.A(M.R(-9.3),M.R(-0.3),M.R(2.5)),Alpha,'Lerp')
	  	Animate(RS,CF.N(1.43,0.51,-0.13)*CF.A(M.R(-8.8),M.R(5.9),M.R(14.5)),Alpha,'Lerp')
	end
	local StopFloatAndResume = true
	Tween(TForce,{Velocity = Vector3.new(0,0.00001,0)},.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,nil)
	spawn(function()
		local NewPlatformPair = Plates:Clone()
		local P1,P2,P3,P4,P5,P6,P7,P8,P9 = NewPlatformPair:WaitForChild("TA"),NewPlatformPair:WaitForChild("TB"),NewPlatformPair:WaitForChild("TC"),NewPlatformPair:WaitForChild("MA"),NewPlatformPair:WaitForChild("MB"),NewPlatformPair:WaitForChild("MC"),NewPlatformPair:WaitForChild("BA"),NewPlatformPair:WaitForChild("BB"),NewPlatformPair:WaitForChild("BC")
		local P1P,P2P,P3P,P4P,P5P,P6P,P7P,P8P,P9P = P1:FindFirstChildOfClass("UnionOperation"),P2:FindFirstChildOfClass("UnionOperation"),P3:FindFirstChildOfClass("UnionOperation"),P4:FindFirstChildOfClass("UnionOperation"),P5:FindFirstChildOfClass("UnionOperation"),P6:FindFirstChildOfClass("UnionOperation"),P7:FindFirstChildOfClass("UnionOperation"),P8:FindFirstChildOfClass("UnionOperation"),P9:FindFirstChildOfClass("UnionOperation")
		local Org1P,Org2P,Org3P,Org4P,Org5P,Org6P,Org7P,Org8P,Org9P = P1P.CFrame,P2P.CFrame,P3P.CFrame,P4P.CFrame,P5P.CFrame,P6P.CFrame,P7P.CFrame,P8P.CFrame,P9P.CFrame
		
		NewPlatformPair.Parent = Char
		
		P1P.CFrame = TtP
		P2P.CFrame = TtP
		P3P.CFrame = TtP
		P4P.CFrame = TtP
		P5P.CFrame = TtP
		P6P.CFrame = TtP
		P7P.CFrame = TtP
		P8P.CFrame = TtP
		P9P.CFrame = TtP
		
		for i,v in pairs(P1.Model:GetDescendants()) do
			if v:IsA("BasePart") then
				Tween(v,{Transparency = 0},.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
			end
		end
		
		for i,v in pairs(P2.Model:GetDescendants()) do
			if v:IsA("BasePart") then
				Tween(v,{Transparency = 0},.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
			end
		end
		
		for i,v in pairs(P3.Model:GetDescendants()) do
			if v:IsA("BasePart") then
				Tween(v,{Transparency = 0},.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
			end
		end
		for i,v in pairs(P4.Model:GetDescendants()) do
			if v:IsA("BasePart") then
				Tween(v,{Transparency = 0},.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
			end
		end
		
		for i,v in pairs(P5.Model:GetDescendants()) do
			if v:IsA("BasePart") then
				Tween(v,{Transparency = 0},.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
			end
		end
		
		for i,v in pairs(P6.Model:GetDescendants()) do
			if v:IsA("BasePart") then
				Tween(v,{Transparency = 0},.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
			end
		end
		for i,v in pairs(P7.Model:GetDescendants()) do
			if v:IsA("BasePart") then
				Tween(v,{Transparency = 0},.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
			end	
		end
		
		for i,v in pairs(P8.Model:GetDescendants()) do
			if v:IsA("BasePart") then
				Tween(v,{Transparency = 0},.2,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
			end
		end
		
		for i,v in pairs(P9.Model:GetDescendants()) do
			if v:IsA("BasePart") then
				Tween(v,{Transparency = 0},.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false,nil)
			end
		end
		
		Tween(P1P,{CFrame = P1P.CFrame:Lerp(TtP * CFrame.new(-30,40,-30),.5)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,nil)
		Tween(P2P,{CFrame = P2P.CFrame:Lerp(TtP * CFrame.new(0,40,-30),.5)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,nil)
		Tween(P3P,{CFrame = P3P.CFrame:Lerp(TtP * CFrame.new(30,40,-30),.5)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,nil)
		Tween(P4P,{CFrame = P4P.CFrame:Lerp(TtP * CFrame.new(-30,40,0),.5)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,nil)
		Tween(P5P,{CFrame = P5P.CFrame:Lerp(TtP * CFrame.new(0,40,0),.5)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,nil)
		Tween(P6P,{CFrame = P6P.CFrame:Lerp(TtP * CFrame.new(30,40,0),.5)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,nil)		
		Tween(P7P,{CFrame = P7P.CFrame:Lerp(TtP * CFrame.new(-30,40,30),.5)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,nil)
		Tween(P8P,{CFrame = P8P.CFrame:Lerp(TtP * CFrame.new(0,40,30),.5)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,nil)
		Tween(P9P,{CFrame = P9P.CFrame:Lerp(TtP * CFrame.new(30,40,30),.5)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false,nil).Completed:Wait()
		
		Tween(P1P,{CFrame = TtP * CFrame.new(-30,0,-30)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
		Tween(P2P,{CFrame = TtP * CFrame.new(0,0,-30)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
		Tween(P3P,{CFrame = TtP * CFrame.new(30,0,-30)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
		Tween(P4P,{CFrame = TtP * CFrame.new(-30,0,0)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
		Tween(P5P,{CFrame = TtP * CFrame.new(0,0,0)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
		Tween(P6P,{CFrame = TtP * CFrame.new(30,0,0)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)		
		Tween(P7P,{CFrame = TtP * CFrame.new(-30,0,30)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
		Tween(P8P,{CFrame = TtP * CFrame.new(0,0,30)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
		Tween(P9P,{CFrame = TtP * CFrame.new(30,0,30)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil).Completed:Wait()
		wait(1)
		
		local W1,W2,W3,W4 = Instance.new("Part",Char),Instance.new("Part",Char),Instance.new("Part",Char),Instance.new("Part",Char)
		W1.CanCollide = true
		W1.Anchored = true
		local SL = Instance.new("SelectionBox",W1)
		SL.Adornee = W1
		SL.LineThickness = 1
		SL.Color3 = Color3.fromRGB(0,0,0)
		W1.Material = Enum.Material.DiamondPlate
		W1.BrickColor = BrickColor.new("Artichoke")
		W1.CFrame = TtP * CFrame.new(0,0,-50)
		W1.Size = Vector3.new(1,0,.5)
		
		
		W2.CanCollide = true
		W2.Anchored = true
		local SL = Instance.new("SelectionBox",W2)
		SL.Adornee = W2
		SL.LineThickness = 1
		SL.Color3 = Color3.fromRGB(0,0,0)
		W2.Material = Enum.Material.DiamondPlate
		W2.BrickColor = BrickColor.new("Artichoke")
		W2.CFrame = TtP * CFrame.new(0,0,50)
		W2.Size = Vector3.new(1,0,.5)
		
		W3.CanCollide = true
		W3.Anchored = true
		local SL = Instance.new("SelectionBox",W3)
		SL.Adornee = W3
		SL.LineThickness = 1
		SL.Color3 = Color3.fromRGB(0,0,0)
		W3.Material = Enum.Material.DiamondPlate
		W3.BrickColor = BrickColor.new("Artichoke")
		W3.CFrame = TtP * CFrame.new(-50,0,0)
		W3.Size = Vector3.new(.5,0,1)
		
		W4.CanCollide = true
		W4.Anchored = true
		local SL = Instance.new("SelectionBox",W4)
		SL.Adornee = W4
		SL.LineThickness = 1
		SL.Color3 = Color3.fromRGB(0,0,0)
		W4.Material = Enum.Material.DiamondPlate
		W4.BrickColor = BrickColor.new("Artichoke")
		W4.CFrame = TtP * CFrame.new(50,0,0)
		W4.Size = Vector3.new(.5,0,1)
		
		Tween(W1,{Size = Vector3.new(95,90,5)},3,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out,0,false,nil)
		Tween(W3,{Size = Vector3.new(5,90,95)},3,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out,0,false,nil)
		Tween(W2,{Size = Vector3.new(95,90,5)},3,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out,0,false,nil)
		Tween(W4,{Size = Vector3.new(5,90,95)},3,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out,0,false,nil).Completed:Wait()
		
		local DeatBox = Instance.new("Part",Char)
		DeatBox.CanCollide = false
		DeatBox.CFrame = TtP * CFrame.new(0,0.01,0)
		DeatBox.Anchored = true
		DeatBox.Material = Enum.Material.Neon
		DeatBox.Transparency = 1
		DeatBox.Size = Vector3.new(1,0.01,1)
		
		for i = 1,5 do
			Sound(DeatBox,138081500,1,2,false,nil,true)	
			DeatBox.Color = DeatBox.Color:Lerp(Color3.new(1,0,0),.2)
			Tween(DeatBox,{Size = Vector3.new(95,.01,95),Transparency = 1},.7,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,nil).Completed:Wait()		
			DeatBox.Size = Vector3.new(1,.01,1)
			DeatBox.Transparency = 0
		end
		
		DeatBox.Touched:Connect(function() end)
		
		Sound(DeatBox,138081500,1.7,4,false,nil,true)	
		Tween(DeatBox,{Size = Vector3.new(95,.01,95)},.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,nil).Completed:Wait()
		
		local DamagedProstates = {}
		for i,v in pairs(DeatBox:GetTouchingParts()) do
			if v.Parent:IsA("Model") and v.Parent ~= Char and v.Parent ~= BuffBoy and v.Parent:FindFirstChildOfClass("Humanoid") then
				if not DamagedProstates[v.Parent.Name] then
					v.Parent:BreakJoints()
				end
			end
		end
		
		wait(2)
		
		Tween(DeatBox,{Size = Vector3.new(0,.01,0),Transparency = 1},1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,0,false,nil)
		Tween(W1,{Size = Vector3.new(95,0,5),Position = W1.Position + Vector3.new(0,-10,0)},.6,Enum.EasingStyle.Circular,Enum.EasingDirection.InOut,0,false,nil)
		Tween(W3,{Size = Vector3.new(5,0,95),Position = W3.Position + Vector3.new(0,-10,0)},.6,Enum.EasingStyle.Circular,Enum.EasingDirection.InOut,0,false,nil)
		Tween(W2,{Size = Vector3.new(95,0,5),Position = W2.Position + Vector3.new(0,-10,0)},.6,Enum.EasingStyle.Circular,Enum.EasingDirection.InOut,0,false,nil)
		Tween(W4,{Size = Vector3.new(5,0,95),Position = W4.Position + Vector3.new(0,-10,0)},.6,Enum.EasingStyle.Circular,Enum.EasingDirection.InOut,0,false,nil).Completed:Wait()
		
		W1:Destroy()
		W2:Destroy()
		W3:Destroy()
		W4:Destroy()
		wait(1)
		
		Tween(P1P,{CFrame = TtP * CFrame.new(-30,-10,-30)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
		Tween(P2P,{CFrame = TtP * CFrame.new(0,-10,-30)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
		Tween(P3P,{CFrame = TtP * CFrame.new(30,-10,-30)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
		Tween(P4P,{CFrame = TtP * CFrame.new(-30,-10,0)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
		Tween(P5P,{CFrame = TtP * CFrame.new(0,-10,0)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
		Tween(P6P,{CFrame = TtP * CFrame.new(30,-10,0)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)		
		Tween(P7P,{CFrame = TtP * CFrame.new(-30,-10,30)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
		Tween(P8P,{CFrame = TtP * CFrame.new(0,-10,30)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil)
		Tween(P9P,{CFrame = TtP * CFrame.new(30,-10,30)},.4,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil).Completed:Wait()
		
		NewPlatformPair:Destroy()
		
	end)
	wait(.2)
	
	TForce:Destroy()
		
	Attack = false
	NeutralAnims = true
	WalkSpeed = 16
end

local ThreewayWithDoors = script:WaitForChild("Doors")
local DeathErect = script:WaitForChild("Peni")
ThreewayWithDoors.Parent = nil
DeathErect.Parent = nil
local PressyPressy = false

function DeathByDoor()
	WalkSpeed = 0
	Attack = true
	NeutralAnims = false	
	PressyPressy = true
	local BodyGyrorgasm = Instance.new("BodyGyro",Root)
	BodyGyrorgasm.MaxTorque = Vector3.new(0,math.huge,0)
	BodyGyrorgasm.D = .1
	
	repeat
		swait()
		local Alpha = .2
		BodyGyrorgasm.CFrame = Mouse.hit * CFrame.new(0,2,0)
		Animate(NK,CF.N(-0.09,1.48,-0.09)*CF.A(M.R(0),M.R(-45),M.R(15 + 10 * math.sin(Sine/20))),Alpha,'Lerp')
		Animate(LS,CF.N(-1.49,0.59,0)*CF.A(M.R(0),M.R(0),M.R(-10 - 10 * math.sin(Sine/20))),Alpha,'Lerp')
		Animate(LH,CF.N(-0.64,-2 - .15 * math.cos(Sine/20),0.34)*CF.A(M.R(-7.1),M.R(-44.8),M.R(-5)),Alpha,'Lerp')
		Animate(RJ,CF.N(0,0 + .15 * math.cos(Sine/20),0)*CF.A(M.R(0),M.R(45),M.R(0)),Alpha,'Lerp')
		Animate(RH,CF.N(0.79,-2 - .15 * math.cos(Sine/20),-0.21)*CF.A(M.R(0),M.R(-45),M.R(0)),Alpha,'Lerp')
		Animate(RS,CF.N(1.21,0.31,0.41)*CF.A(M.R(98.5 - 10 * math.cos(Sine/20)),M.R(-31.3),M.R(60.3 + 10 * math.sin(Sine/20))),Alpha,'Lerp')
	until not PressyPressy
	
	local Rp = Instance.new("Part",script)
	Rp.Transparency = 1
	Rp.Anchored = true
	Rp.CFrame = Mouse.hit
	local TgCF = CFrame.new(Mouse.hit.X,Mouse.hit.Y,Mouse.hit.Z) * CFrame.Angles(0,math.rad(Rp.Orientation.Y),0)
	Rp:Destroy()
	Effect({Color = BrickColor.new("Really red").Color,CFrame = TgCF,Size = Vector3.new(1,.01,1),EndSize = Vector3.new(50,.01,50),Mesh = {Type = Enum.MeshType.Sphere},Lifetime = .4})
	
	for i = 0, 10 do
		swait()
	  	local Alpha = .15
	  	Animate(NK,CF.N(0.03,1.5,0.03)*CF.A(M.R(0),M.R(-45),M.R(-5 + 10 * math.sin(Sine/20))),Alpha,'Lerp')
	  	Animate(LS,CF.N(-1.49,0.59,0)*CF.A(M.R(0),M.R(0),M.R(-10 - 10 * math.sin(Sine/20))),Alpha,'Lerp')
	  	Animate(LH,CF.N(-0.64,-2 - .15 * math.cos(Sine/20),0.34)*CF.A(M.R(-7.1),M.R(-44.8),M.R(-5)),Alpha,'Lerp')
	  	Animate(RJ,CF.N(0,0 + .15 * math.cos(Sine/20),0)*CF.A(M.R(0),M.R(45),M.R(0)),Alpha,'Lerp')
	  	Animate(RH,CF.N(0.79,-2 - .15 * math.cos(Sine/20),-0.21)*CF.A(M.R(0),M.R(-45),M.R(0)),Alpha,'Lerp')
	  	Animate(RS,CF.N(1.45,0.51,0.38)*CF.A(M.R(121.5 - 10 * math.cos(Sine/20)),M.R(13.6),M.R(64.2 + 10 * math.sin(Sine/20))),Alpha,'Lerp')
	end
	
	spawn(function()
		local DoorClones = ThreewayWithDoors:Clone()
		DoorClones.Parent = Char
		local DeathClone = DeathErect:Clone()
		local DA,DB,DC = DoorClones:WaitForChild("LDoor"),DoorClones:WaitForChild("MDoor"),DoorClones:WaitForChild("RDoor")
		local DaHB,DaPmP = DeathClone:WaitForChild("KillPart"),DeathClone:WaitForChild("Holder")
		local DaP,DbP,DcP = DA:WaitForChild("Door"),DB:WaitForChild("Door"),DC:WaitForChild("Door")
		local DoorDecider = math.floor(math.random(100,300)/100)
		local TrapDoor 
		
		if DoorDecider == 1 then
			TrapDoor = DaP
		elseif DoorDecider == 2 then
			TrapDoor = DbP
		elseif DoorDecider == 3 then
			TrapDoor = DcP
		end
		
		print(TrapDoor)
		
		TrapDoor.Color = TrapDoor.Color:Lerp(Color3.fromRGB(94, 69, 53),.5)
		DaPmP.CFrame = TgCF * CFrame.new(2048,2048,2048)
		
		for i,v in pairs(DoorClones:GetChildren()) do
			for i,x in pairs(v:GetChildren()) do
				if x.Name == "Door" and x:IsA("BasePart") then
					if x == TrapDoor then
						x.Touched:Connect(function(p)
							if p.Parent:IsA("Model") and p.Parent:FindFirstChildOfClass("Humanoid") and p.Parent:FindFirstChild("HumanoidRootPart") then
								p.Parent:FindFirstChild("HumanoidRootPart").CFrame = DaPmP.CFrame * CFrame.new(0,-7,0)
							end
						end)
					else
						x.Touched:Connect(function(p)
							if p.Parent:IsA("Model") and p.Parent:FindFirstChildOfClass("Humanoid") and p.Parent:FindFirstChild("HumanoidRootPart") then
								p.Parent:FindFirstChild("HumanoidRootPart").CFrame = DaPmP.CFrame * CFrame.new(0,0,60)
							end
						end)			
					end
				end
			end
		end		
		
		DbP.CFrame = TgCF * CFrame.new(0,-20,-5)
		DaP.CFrame = DbP.CFrame * CFrame.new(7.7,-20,-5)
		DcP.CFrame = DbP.CFrame * CFrame.new(-7.7,-20,-5)
		
		Tween(DbP,{CFrame = TgCF * CFrame.new(0,3.5,-5)},.6,Enum.EasingStyle.Quint,Enum.EasingDirection.Out,0,false,nil)
		wait(.1)
		Tween(DaP,{CFrame = TgCF * CFrame.new(7.7,3.5,-5)},.6,Enum.EasingStyle.Quint,Enum.EasingDirection.Out,0,false,nil)
		Tween(DcP,{CFrame = TgCF * CFrame.new(-7.7,3.5,-5)},.6,Enum.EasingStyle.Quint,Enum.EasingDirection.Out,0,false,nil).Completed:Wait()
		
		wait(2)
		
		local RingParts = {}
		
		for i = 1,45 do
			local EFpA = Instance.new("Part",Char)
			EFpA.Anchored = true
			EFpA.CanCollide = true
			EFpA.Material = Enum.Material.Metal
			EFpA.Color = Color3.fromRGB(150,150,150)
			EFpA.Size = Vector3.new(1,.1,3)
			EFpA.CFrame = TgCF * CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(i*4),0) * CFrame.new(0,0,-50)
			
			local EFpB = Instance.new("Part",Char)
			EFpB.Anchored = true
			EFpB.CanCollide = true
			EFpB.Material = Enum.Material.Metal
			EFpB.Color = Color3.fromRGB(150,150,150)
			EFpB.Size = Vector3.new(1,.1,3)
			EFpB.CFrame = TgCF * CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(-i*4),0) * CFrame.new(0,0,-50)
			
			Tween(EFpA,{Size = Vector3.new(15,80,5)},2,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out,0,false,i/20)
			Tween(EFpB,{Size = Vector3.new(15,80,5)},2,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out,0,false,i/20)
			
			table.insert(RingParts,{EFpA,i/20})
			table.insert(RingParts,{EFpB,i/20})

		end
		
		wait(9)
		
		local DeatBox = Instance.new("Part",Char)
		DeatBox.CanCollide = false
		DeatBox.CFrame = TgCF * CFrame.new(0,0.1,0)
		DeatBox.Anchored = true
		DeatBox.Material = Enum.Material.Neon
		DeatBox.Color = Color3.fromRGB(255,0,0)
		DeatBox.Transparency = 0
		DeatBox.Size = Vector3.new(1,0.01,1)
		local Sm = Instance.new("SpecialMesh",DeatBox)
		Sm.MeshType = Enum.MeshType.Sphere
		
		DeatBox.Touched:Connect(function() end)
		
		Sound(DeatBox,138081500,1.7,4,false,nil,true)	
		Tween(DeatBox,{Size = Vector3.new(100,.01,100)},.7,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,nil).Completed:Wait()
		
		local DamagedProstates = {}
		for i,v in pairs(DeatBox:GetTouchingParts()) do
			if v.Parent:IsA("Model") and v.Parent ~= Char and v.Parent ~= BuffBoy and v.Parent:FindFirstChildOfClass("Humanoid") then
				if not DamagedProstates[v.Parent.Name] then
					v.Parent:BreakJoints()
				end
			end
		end
		
		wait(1)
		
		for i,v in pairs(RingParts) do
			Tween(v[1],{Size = Vector3.new(15,0,5),Transparency = 1},.7,Enum.EasingStyle.Quad,Enum.EasingDirection.In,0,false,v[2]).Completed:Connect(function()
				v[1]:Destroy()
			end)
		end
		Tween(DeatBox,{Size = Vector3.new(0,.01,0)},.7,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,nil).Completed:Wait()
		DeatBox:Destroy()
		Tween(DbP,{CFrame = TgCF * CFrame.new(0,-10,-5)},.6,Enum.EasingStyle.Quint,Enum.EasingDirection.Out,0,false,nil)
		wait(.1)
		Tween(DaP,{CFrame = TgCF * CFrame.new(7.7,-10,-5)},.6,Enum.EasingStyle.Quint,Enum.EasingDirection.Out,0,false,nil)
		Tween(DcP,{CFrame = TgCF * CFrame.new(-7.7,-10,-5)},.6,Enum.EasingStyle.Quint,Enum.EasingDirection.Out,0,false,nil).Completed:Wait()
		DoorClones:Destroy()
	end)
	
	for i = 0, 40 do
		swait()
	  	local Alpha = .15
	  	Animate(NK,CF.N(0.03,1.5,0.03)*CF.A(M.R(0),M.R(-45),M.R(-5 + 10 * math.sin(Sine/20))),Alpha,'Lerp')
	  	Animate(LS,CF.N(-1.49,0.59,0)*CF.A(M.R(0),M.R(0),M.R(-10 - 10 * math.sin(Sine/20))),Alpha,'Lerp')
	  	Animate(LH,CF.N(-0.64,-2 - .15 * math.cos(Sine/20),0.34)*CF.A(M.R(-7.1),M.R(-44.8),M.R(-5 - .15 * math.cos(Sine/20))),Alpha,'Lerp')
	  	Animate(RJ,CF.N(0,0 + .15 * math.cos(Sine/20),0)*CF.A(M.R(0),M.R(45),M.R(0)),Alpha,'Lerp')
	  	Animate(RH,CF.N(0.79,-2 - .15 * math.cos(Sine/20),-0.21)*CF.A(M.R(0),M.R(-45),M.R(0 - .15 * math.cos(Sine/20))),Alpha,'Lerp')
	  	Animate(RS,CF.N(1.45,0.51,0.38)*CF.A(M.R(121.5 - 10 * math.cos(Sine/20)),M.R(13.6),M.R(64.2 + 10 * math.sin(Sine/20))),Alpha,'Lerp')
	end
	
	BodyGyrorgasm:Destroy()
	WalkSpeed = 16
	NeutralAnims = true
	Attack = false
end

local ParticleHolder = script:WaitForChild("Eyes")
local RAtch,Reye = ParticleHolder:WaitForChild("REye"),ParticleHolder:WaitForChild("REye"):WaitForChild("p")
RAtch.Parent = Head
local LAtch,Leye = ParticleHolder:WaitForChild("LEye"),ParticleHolder:WaitForChild("LEye"):WaitForChild("p")
LAtch.Parent = Head

local ExpHB = script:WaitForChild("Hitbox")
ExpHB.Anchored = false
ExpHB.Touched:Connect(function() end)
ExpHB.Parent = Char
local ExpHBJ = Joint("EXPJ",Torso,ExpHB,CF.N())



function ChargeAndExplode()
	Attack = true
	NeutralAnims = false
	WalkSpeed = 0
	
	for i = 1,30 do
		swait()
	 	local Alpha = .3
		Animate(NK,CF.N(0,1.48,-0.13)*CF.A(M.R(-15),M.R(0),M.R(0)),Alpha,'Lerp') 	
		Animate(LS,CF.N(-1.29,-0.25,-0.83)*CF.A(M.R(165),M.R(0),M.R(15)),Alpha,'Lerp')
	  	Animate(LH,CF.N(-0.59,-2.04,-0.09)*CF.A(M.R(5),M.R(0),M.R(-5)),Alpha,'Lerp')
	  	Animate(RJ,CF.N(0,0,0)*CF.A(M.R(-5),M.R(0),M.R(0)),Alpha,'Lerp')
	  	Animate(RH,CF.N(0.59,-2.04,-0.09)*CF.A(M.R(5),M.R(0),M.R(5)),Alpha,'Lerp')
	  	Animate(RS,CF.N(1.28,-0.21,-0.74)*CF.A(M.R(160.2),M.R(1.3),M.R(-14.9)),Alpha,'Lerp')
	end
	
	Sound(Root,965142286,1,5,false,nil,true)
	Tween(Leye,{Rate = 30},3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,nil)
	Tween(Reye,{Rate = 30},3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0,false,nil)

	
	for i = 1,200 do
		swait()
		local Alpha = .3
		Animate(NK,CF.N(0,1.48,-0.13)*CF.A(M.R(-15 - (i/32) * math.cos(Sine/200 - i)),M.R(0),M.R(0 + (i/16) * math.sin(Sine/200 - i))),Alpha,'Lerp') 	
		Animate(LS,CF.N(-1.29,-0.25,-0.83)*CF.A(M.R(165 + (i/15) * math.sin(Sine/200 - i)),M.R(0),M.R(15 + (i/15) * math.cos(Sine/200 - i))),Alpha,'Lerp')
	  	Animate(LH,CF.N(-0.59,-2.04,-0.09)*CF.A(M.R(5),M.R(0),M.R(-5 - (i/100) * math.sin(Sine/200 - i))),Alpha,'Lerp')
	  	Animate(RJ,CF.N(0,0,0)*CF.A(M.R(-5),M.R(0),M.R(0 + (i/100) * math.sin(Sine/200 - i))),Alpha,'Lerp')
	  	Animate(RH,CF.N(0.59,-2.04,-0.09)*CF.A(M.R(5),M.R(0),M.R(5 - (i/100) * math.sin(Sine/200 - i))),Alpha,'Lerp')
	  	Animate(RS,CF.N(1.28,-0.21,-0.74)*CF.A(M.R(160.2 + (i/15) * math.sin(Sine/200 - i)),M.R(1.3),M.R(-14.9 - (i/15) * math.cos(Sine/200 - i))),Alpha,'Lerp')
	end
	
	Sound(Root,3154829820,1,10,false,nil,true)
	local ExpEf = Instance.new("Explosion",Root)
	ExpEf.DestroyJointRadiusPercent = 0
	ExpEf.ExplosionType = Enum.ExplosionType.Craters
	ExpEf.BlastRadius = 60
	ExpEf.BlastPressure = 0
	ExpEf.Position = Root.Position
	
	local DamagedProstates = {}
	for i,v in pairs(ExpHB:GetTouchingParts()) do
		if v.Parent:IsA("Model") and v.Parent ~= Char and v.Parent:FindFirstChild("Humanoid") and not DamagedProstates[v.Parent] then
			DamagedProstates[v.Parent] = "b"
			v.Parent:BreakJoints()
		end
	end
	
	Reye.Rate = 0
	Leye.Rate = 0
	
	for i = 1, 30 do
		swait()
		local Alpha = .3
		Animate(NK,CF.N(0,1.43,0.25)*CF.A(M.R(30),M.R(0),M.R(0)),Alpha,'Lerp')
		Animate(LS,CF.N(-1.52,0.51,0.14)*CF.A(M.R(100.2),M.R(-0.6),M.R(-71.1)),Alpha,'Lerp')
		Animate(LH,CF.N(-0.58,-1.98,0.34)*CF.A(M.R(-19.9),M.R(2.1),M.R(-4.5)),Alpha,'Lerp')
		Animate(RJ,CF.N(0,0,0)*CF.A(M.R(20),M.R(0),M.R(0)),Alpha,'Lerp')
		Animate(RH,CF.N(0.58,-1.98,0.34)*CF.A(M.R(-19.9),M.R(-2.1),M.R(4.5)),Alpha,'Lerp')
		Animate(RS,CF.N(1.58,0.55,0.27)*CF.A(M.R(100.2),M.R(0.6),M.R(76.1)),Alpha,'Lerp')
	end

	WalkSpeed = 16
	NeutralAnims =  true
	Attack = false
end

local GiftPHm = script:WaitForChild("BoxWeld")
local GiftPH = GiftPHm:WaitForChild("Weld")
GiftPH.Anchored = false
Joint("pen",RArm,GiftPH,CF.N())
local BoxPh = GiftPHm:WaitForChild("Box")
BoxPh.Transparency = 1


local Gifts = script:WaitForChild("Boxes")
Gifts.Parent = nil
local GBG,BBG = Gifts:WaitForChild("GoodGirGift"),Gifts:WaitForChild("BadGirlGift")

local ReturnVal = {}
ReturnVal[0] = .5
for i = 1,1001 do
	ReturnVal[1001 - i] = i/4000
end


function ReturnAppropriateVal(Value)
	warn(Value)
	if Value < 1000 then
		print(ReturnVal[math.floor(Value)])
		return ReturnVal[math.floor(Value)]
	else
		return 1000
	end
end
	
function ConvertMag(Magnitude)
	if Magnitude < 0 then
		--warn(Magnitude - Magnitude - Magnitude)
		return Magnitude - Magnitude - Magnitude
	end	
	return Magnitude
end

function BindCD(GiftC,GiftT)
	coroutine.resume(coroutine.create(function()
		GiftC.MouseClick:Connect(function(p)
			local Bum = true
			if GiftT ~= 1 then
				Bum = false
			end
			
		end)
	end))
end


function AhDeadpoolThankGoodnessYoureHere()
	Attack = true
	WalkSpeed = 0
	NeutralAnims = false
	BoxPh.Transparency = 0
	local Maff = math.floor(math.random(51,200)/100)
	--warn(Maff)
	local BodyGyrorgasm = Instance.new("BodyGyro",Root)
	BodyGyrorgasm.MaxTorque = Vector3.new(0,math.huge,0)
	BodyGyrorgasm.D = .1
	
	
	if Maff == 1 then
		pcall(function() BoxPh.Color = CutieCol end)
	else
		pcall(function() BoxPh.Color = SlutCol	 end)
	end
	
	for i = 1,20 do
		swait()
		local Alpha = .2
		BodyGyrorgasm.CFrame = Mouse.hit * CFrame.new(0,2,0)
	  	Animate(NK,CF.N(-0.03,1.49,-0.08)*CF.A(M.R(-10.6),M.R(19.7),M.R(3.6)),Alpha,'Lerp')
	  	Animate(LS,CF.N(-1.48,0.63,0)*CF.A(M.R(-9.7),M.R(2.6),M.R(-14.8)),Alpha,'Lerp')
	  	Animate(LH,CF.N(-0.47,-1.98,0.04)*CF.A(M.R(-10.3),M.R(14.8),M.R(2.7)),Alpha,'Lerp')
	  	Animate(RJ,CF.N(0,0,0)*CF.A(M.R(10.6),M.R(-19.7),M.R(3.6)),Alpha,'Lerp')
	  	Animate(RH,CF.N(0.56,-1.98,0.3)*CF.A(M.R(-10.3),M.R(14.8),M.R(2.7)),Alpha,'Lerp')
	  	Animate(RS,CF.N(1.5,0.88,0.51)*CF.A(M.R(-145),M.R(0),M.R(0)),Alpha,'Lerp')
	end
	
	for i = 1,15 do
		swait()
		local Alpha = .35
		BodyGyrorgasm.CFrame = Mouse.hit * CFrame.new(0,2,0)
		if i == 4 then
			spawn(function()
				local Rp = Instance.new("Part",script)
				Rp.Transparency = 1
				Rp.Anchored = true
				Rp.CFrame = Mouse.hit
				local TgCF = CFrame.new(Mouse.hit.X,Mouse.hit.Y,Mouse.hit.Z) * CFrame.Angles(0,math.rad(Rp.Orientation.Y),0)
				Rp:Destroy()
				BoxPh.Transparency = 1
				local NBox
				if Maff == 1 then 
					NBox = GBG:Clone()
				else
					NBox = BBG:Clone()
				end
				NBox.Parent = Char
				NBox.CFrame = BoxPh.CFrame
				NBox.CanCollide = false
				--print((NBox.Position.Magnitude - TgCF.p.Magnitude))
				Tween(NBox,{CFrame = NBox.CFrame:Lerp(TgCF,.5) * CFrame.new(0,ConvertMag((NBox.Position.Magnitude - TgCF.p.Magnitude)/2) + 1,0)},ReturnAppropriateVal(ConvertMag((NBox.Position.Magnitude - TgCF.p.Magnitude)/2)),Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil).Completed:Wait()
				Tween(NBox,{CFrame = TgCF * CFrame.new(0,NBox.Size.Y/2,0)},ReturnAppropriateVal(ConvertMag((NBox.Position.Magnitude - TgCF.p.Magnitude)/2)),Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,nil).Completed:Wait()				
			end)
		end
	  	Animate(NK,CF.N(0.04,1.48,0.12)*CF.A(M.R(14.1),M.R(-0.6),M.R(-5.1)),Alpha,'Lerp')
	  	Animate(LS,CF.N(-1.48,0.63,0)*CF.A(M.R(-29.1),M.R(7.4),M.R(-13.1)),Alpha,'Lerp')
	  	Animate(LH,CF.N(-0.46,-1.94,-0.27)*CF.A(M.R(15.3),M.R(0.9),M.R(2.4)),Alpha,'Lerp')
	  	Animate(RJ,CF.N(0,0,-.6)*CF.A(M.R(-20.1),M.R(4.7),M.R(1.7)),Alpha,'Lerp')
	  	Animate(RH,CF.N(0.54,-1.91,-0.33)*CF.A(M.R(15.3),M.R(0.9),M.R(2.4)),Alpha,'Lerp')
	  	Animate(RS,CF.N(1.5,0.75,-0.56)*CF.A(M.R(105),M.R(0),M.R(0)),Alpha,'Lerp')
	end
	
	BodyGyrorgasm:Destroy()
	NeutralAnims = true
	WalkSpeed = 16
	Attack = false
end

S.UserInputService.InputBegan:connect(function(io,gpe)
	if io.UserInputType == Enum.UserInputType.MouseButton1 and PressyPressy and not gpe then
		PressyPressy = not PressyPressy
	end
	if(gpe or Attack)then return end
	if io.UserInputType == Enum.UserInputType.MouseButton1 then
		if CmbRG == 0 or CmbRG == 2 then
			CmbRG = 1
		elseif CmbRG == 1 then
			CmbRG = 2
		end
		Swing(CmbRG)
	elseif io.UserInputType == Enum.UserInputType.Keyboard then
		if io.KeyCode == Enum.KeyCode.Z then
			StandOnThePlatforms()
		elseif io.KeyCode == Enum.KeyCode.X then
			DeathByDoor()
		elseif io.KeyCode == Enum.KeyCode.C then
			ChargeAndExplode()
		elseif io.KeyCode == Enum.KeyCode.V then
			AhDeadpoolThankGoodnessYoureHere()
		end
	end
end)


while true do
	swait()
	Sine=Sine+Change
	if(not Music or not Music.Parent)then
		local tp = (Music and Music.TimePosition)
		Music = Sound(MusicData.Parent,MusicData.ID,MusicData.Pitch,MusicData.Volume,true,false,true)
		Music.Name = 'Music'
		Music.TimePosition = tp
	end
	Music.SoundId = "rbxassetid://"..MusicData.ID
	Music.Parent = MusicData.Parent
	Music.Pitch = MusicData.Pitch
	Music.Volume = MusicData.Volume
	
	
	local Hit,Pos = CastRay(Root.Position,Root.Position-V3.N(0,1,0),4)
	local Walking = Hum.MoveDirection.magnitude>0
	local State = (not Hit and Root.Velocity.Y<-1 and 'Fall' or not Hit and Root.Velocity.Y>1 and 'Jump' or Walking and "Walk" or "Idle")
	if(not EffectFolder or EffectFolder.Parent~=Char)then
		EffectFolder=Instance.new("Folder")
		EffectFolder.Name='Effects'
		EffectFolder.Parent=Char
	end
	
	--I know this looks like jl's
	--It's more inspired by my old one which is a modified ver of Kyu's, but replacing Root.Velocity with Hum.MoveDirection and removing the clamp
	local FwdDir = (Walking and Hum.MoveDirection*Root.CFrame.lookVector or V3.N())
	local RigDir = (Walking and Hum.MoveDirection*Root.CFrame.rightVector or V3.N())
	local Vec = {
		X=RigDir.X+RigDir.Z,
		Z=FwdDir.X+FwdDir.Z
	};
	local Divide = 1
	if(Vec.Z<0)then
		Divide=math.clamp(-(1.25*Vec.Z),1,2)
	end
	Vec.Z = Vec.Z/Divide
	Vec.X = Vec.X/Divide
	Hum.WalkSpeed = WalkSpeed/Divide
	local Value = Movement/10
	if(NeutralAnims)then	
		if(State == 'Idle')then
		  	local Alpha = .2
		  	Animate(NK,CF.N(0,1.49,-0.09)*CF.A(M.R(-10 + 9 * math.sin(Sine/20)),M.R(0 - 10 * math.sin(Sine/40)),M.R(0)),Alpha,'Lerp')
		  	Animate(LS,CF.N(-1.48,0.37 - .1 * math.cos(Sine/20),0)*CF.A(M.R(4.8),M.R(1.3),M.R(14.9)),Alpha,'Lerp')
		  	Animate(LH,CF.N(-0.52,-2 - .1 * math.sin(Sine/20),-0.13)*CF.A(M.R(0),M.R(15),M.R(0)),Alpha,'Lerp')
		  	Animate(RJ,CF.N(0,0 + .1 * math.sin(Sine/20),0)*CF.A(M.R(0),M.R(0),M.R(0)),Alpha,'Lerp')
		  	Animate(RH,CF.N(0.57,-2 - .1 * math.sin(Sine/20),-0.25)*CF.A(M.R(0),M.R(-30),M.R(0)),Alpha,'Lerp')
		  	Animate(RS,CF.N(1.48,0.37 - .1 * math.cos(Sine/20),0)*CF.A(M.R(4.8),M.R(-1.3),M.R(-14.9)),Alpha,'Lerp')
		elseif(State == 'Walk')then
			Animate(RJ,CF.N(0,0,-.2)*CF.A(M.R(-10*Vec.Z),0,M.R(-10*Vec.X))*CF.N(0,-.1-.15*M.C(Sine/(wsVal/2)),0)*CF.A(0,M.R(0-15*M.S(Sine/wsVal)/2),0),.2,'Lerp')
			Animate(NK,NKC0,.2,'Lerp')
			Animate(RS,RSC0*CF.A(0,0,M.R(3))*CF.N(0,0,0+.5*M.C(Sine/wsVal)*Vec.Z)*CF.A(M.R(0-40*M.C(Sine/wsVal)+-M.S(Sine/wsVal))*Vec.Z,0,0),.2,'Lerp')
			Animate(LS,LSC0*CF.A(0,0,M.R(-3))*CF.N(0,0,0-.5*M.C(Sine/wsVal)*Vec.Z)*CF.A(M.R(0+40*M.C(Sine/wsVal)+-M.S(Sine/wsVal))*Vec.Z,0,0),.2,'Lerp')
			Animate(LH,CF.N(-.54,-2,-.23*Vec.Z)*CF.A(M.R(10*Vec.Z),0,M.R(-3))*CF.N(0-.5*M.C(Sine/wsVal)*Vec.X,.1+.15*M.S(Sine/wsVal),0+1*M.C(Sine/wsVal)*Vec.Z)*CF.A(M.R(0-60*M.C(Sine/wsVal)+-M.S(Sine/wsVal))*Vec.Z,0,M.R(0-30*M.C(Sine/wsVal)+-M.S(Sine/wsVal))*Vec.X),.2,'Lerp')
			Animate(RH,CF.N(.54,-2,-.23*Vec.Z)*CF.A(M.R(10*Vec.Z),0,M.R(3))*CF.N(0+.5*M.C(Sine/wsVal)*Vec.X,.1-.15*M.S(Sine/wsVal),0-1*M.C(Sine/wsVal)*Vec.Z)*CF.A(M.R(0+60*M.C(Sine/wsVal)+-M.S(Sine/wsVal))*Vec.Z,0,M.R(0+30*M.C(Sine/wsVal)+-M.S(Sine/wsVal))*Vec.X),.2,'Lerp')			
		elseif(State == 'Jump')then
			local idk = math.min(math.max(Root.Velocity.Y/75,-M.R(45)),M.R(45))
			Animate(LS,LSC0*CF.A(M.R(-5),0,M.R(-90)),.2,'Lerp')
			Animate(RS,RSC0*CF.A(M.R(-5),0,M.R(90)),.2,'Lerp')
			Animate(RJ,RJC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),.2,'Lerp')
			Animate(NK,NKC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),.2,'Lerp')
			Animate(LH,LHC0*CF.A(0,0,M.R(-5)),.2,'Lerp')
			Animate(RH,RHC0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),.2,'Lerp')
		elseif(State == 'Fall')then
			local idk = math.min(math.max(Root.Velocity.Y/75,-M.R(45)),M.R(45))
			Animate(LS,LSC0*CF.A(M.R(-5),0,M.R(-90)+idk),.2,'Lerp')
			Animate(RS,RSC0*CF.A(M.R(-5),0,M.R(90)-idk),.2,'Lerp')
			Animate(RJ,RJC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),.2,'Lerp')
			Animate(NK,NKC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),.2,'Lerp')
			Animate(LH,LHC0*CF.A(0,0,M.R(-5)),.2,'Lerp')
			Animate(RH,RHC0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),.2,'Lerp')
		end
	end

end
end)
