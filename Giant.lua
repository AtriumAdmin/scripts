local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local char = plr.Character
local hum = char.Humanoid
 
char.Archivable = true
 
if char:FindFirstChild("LowerTorso") ~= nil then
 
    char:FindFirstChild("LeftHand"):Destroy()
    char:FindFirstChild("RightHand"):Destroy()
    char:FindFirstChild("LeftLowerArm"):Destroy()
    char:FindFirstChild("RightLowerArm"):Destroy()
    char:FindFirstChild("LeftLowerLeg"):Destroy()
    char:FindFirstChild("RightLowerLeg"):Destroy()
    char:FindFirstChild("LeftFoot"):Destroy()
    char:FindFirstChild("RightFoot"):Destroy()
   clone = char:FindFirstChild("UpperTorso"):Clone()
   clone.Parent = char
   clone.Name = "Torso"
    char:FindFirstChild("LeftUpperArm").Name = "Left Arm"
    char:FindFirstChild("LeftUpperLeg").Name = "Left Leg"
    char:FindFirstChild("RightUpperArm").Name = "Right Arm"
    char:FindFirstChild("RightUpperLeg").Name = "Right Leg"
    char:FindFirstChild("LowerTorso")
    rootjk = Instance.new("Motor6D",char.HumanoidRootPart)
    rootjk.Name = "RootJoint"
    rootjk.C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
    rootjk.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
    rootjk.CurrentAngle = 0
    rootjk.DesiredAngle = 0
    rootjk.MaxVelocity = 0.1
    rootjk.Part0 = char.HumanoidRootPart
    rootjk.Part1 = char.Torso
end
 
local hed = char.Head
local root = char.HumanoidRootPart
local rootj = root.RootJoint
local tors = char.Torso
local ra = char["Right Arm"]
local la = char["Left Arm"]
local rl = char["Right Leg"]
local ll = char["Left Leg"]
local change = 1
local idle = 0
local sine = 0
local equipped = false
local cam = game.Workspace.CurrentCamera
local CF = CFrame.new
local angles = CFrame.Angles
local titan = false
local Euler = CFrame.fromEulerAnglesXYZ
local Rad = math.rad
local IT = Instance.new
local BrickC = BrickColor.new
local Cos = math.cos
local Acos = math.acos
local Sin = math.sin
local Asin = math.asin
local Abs = math.abs
local Mrandom = math.random
local Floor = math.floor
local head = char["MeshPartAccessory"].Handle
local torso = char["LavaDragon"].Handle
local rightarm = char["LightGuardianWings"].Handle
local rightleg = char["DarkGuardianWings"].Handle
local leftarm = char["RoseGuardianWings"].Handle
local leftleg = char["VenomousGuardianWings"].Handle
local handle1 = char["Meshes/archangelrifleAccessory"].Handle handle1.Parent.Name = "handle1"
local handle2 = char["Meshes/archangelrifleAccessory"].Handle handle2.Parent.Name = "handle2"
local handle3 = char["GlitterFairyWings"].Handle handle3.Parent.Name = "handle3"
 
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
 
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
 
frame = 1 / 90
tf = 0
allowframeloss = false
tossremainder = false
 
 
lastframe = tick()
script.Heartbeat:Fire()
 
 
game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
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
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end
function thread(f)
	coroutine.resume(coroutine.create(f))
end
function clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m00 < m11 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1 / Sin(theta)
			startInterp = Sin((1 - t) * theta) * invSinTheta
			finishInterp = Sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = math.acos(-cosTheta)
		local invSinTheta = 1 / Sin(theta)
		startInterp = Sin((t - 1) * theta) * invSinTheta
		finishInterp = Sin(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
 
local inf = math.huge
local vt = Vector3.new
 
head.AccessoryWeld:Destroy()
torso.AccessoryWeld:Destroy()
rightarm.AccessoryWeld:Destroy()
rightleg.AccessoryWeld:Destroy()
leftarm.AccessoryWeld:Destroy()
leftleg.AccessoryWeld:Destroy()
handle1.AccessoryWeld:Destroy()
handle2.AccessoryWeld:Destroy()
handle3.AccessoryWeld:Destroy()
 
 
 
torso.SpecialMesh:Destroy()
rightarm.SpecialMesh:Destroy()
rightleg.SpecialMesh:Destroy()
leftarm.SpecialMesh:Destroy()
leftleg.SpecialMesh:Destroy()
handle1.SpecialMesh:Destroy()
handle2.SpecialMesh:Destroy()
handle3.SpecialMesh:Destroy()
 
 
------------align position--------
 
 
-----------
 
--torso
local hat2               = Instance.new("Part",tors)
hat2.Name = "torso"
hat2.Position = char.Torso.Position
hat2.Size                = torso.Size
hat2.Transparency        = 1
hat2.CanCollide          = false
local _ap                 = Instance.new("AlignPosition",torso)
local _ao                 = Instance.new("AlignOrientation",torso)
local _att1,_att2,torsweld     = Instance.new("Attachment",torso),Instance.new("Attachment",hat2),Instance.new("Weld",hat2)
torsweld.Part0,torsweld.Part1    = hat2,tors
torsweld.C1 = CFrame.new(0,1.195,0) 
_ap.MaxForce              = 1.7976932442896e+38
_ap.MaxVelocity           = inf
_ap.ReactionForceEnabled  = false
_ap.Responsiveness        = 200
_ap.Attachment0           = _att1
_ap.Attachment1           = _att2
_ao.MaxTorque             = inf
_ao.MaxAngularVelocity    = inf
_ao.ReactionTorqueEnabled = true
_ao.Responsiveness        = 200
_ao.Attachment0           = _att1
_ao.Attachment1           = _att2
_att2.Orientation         = vt(0,0,0)
_att2.Position            = vt(0,8,0)
-----------
local hat1               = Instance.new("Part",torso)
hat1.Name = "head"
hat1.Size                = head.Size
hat1.Transparency        = 1
hat1.CanCollide          = false
local ap                 = Instance.new("AlignPosition",head)
local ao                 = Instance.new("AlignOrientation",head)
local att1,att2,weld     = Instance.new("Attachment",head),Instance.new("Attachment",hat1),Instance.new("Weld",hat1)
weld.Part0,weld.Part1    = hat1,torso
weld.C1 = CF(0.0500011444, 4.75, 0.130000114) *angles(Rad(0),Rad(0),Rad(0))
ap.MaxForce              = 1.7976932442896e+38
ap.MaxVelocity           = inf
ap.ReactionForceEnabled  = false
ap.Responsiveness        = 200
ap.Attachment0           = att1
ap.Attachment1           = att2
ao.MaxTorque             = inf
ao.MaxAngularVelocity    = inf
ao.ReactionTorqueEnabled = false
ao.Responsiveness        = 200
ao.Attachment0           = att1
ao.Attachment1           = att2
att2.Orientation         = vt(0, 0, 0)
att2.Position            = vt(0,0,0)
-----------
--right arm
 
local hat2               = Instance.new("Part",torso)
hat2.Name = "rightarm"
hat2.Size                = rightarm.Size
hat2.Position = char.Torso.Position
hat2.Transparency        = 1
hat2.CanCollide          = false
local _ap                 = Instance.new("AlignPosition",rightarm)
local _ao                 = Instance.new("AlignOrientation",rightarm)
local _att1,_att2,_weld     = Instance.new("Attachment",rightarm),Instance.new("Attachment",hat2),Instance.new("Weld",hat2)
_weld.Part0,_weld.Part1    = hat2,torso
_weld.C1 = CF(4.23, -1.25, 0)  * angles(Rad(0), Rad(90),	Rad(90))
_ap.MaxForce              = 1.7976932442896e+38
_ap.MaxVelocity           = inf
_ap.ReactionForceEnabled  = false
_ap.Responsiveness        = 200
_ap.Attachment0           = _att1
_ap.Attachment1           = _att2
_ao.MaxTorque             = inf
_ao.MaxAngularVelocity    = inf
_ao.ReactionTorqueEnabled = false
_ao.Responsiveness        = 200
_ao.Attachment0           = _att1
_ao.Attachment1           = _att2
_att2.Orientation         = vt(0, 0,0)
_att2.Position            = vt(0, 0, 0)
-----------
--left arm
local hat2               = Instance.new("Part",torso)
hat2.Name = "leftarm"
hat2.Size                = leftarm.Size
hat2.Transparency        = 1
hat2.CanCollide          = false
local _ap                = Instance.new("AlignPosition",leftarm)
local _ao                = Instance.new("AlignOrientation",leftarm)
local _att1,_att2,_weld  = Instance.new("Attachment",leftarm),Instance.new("Attachment",hat2),Instance.new("Weld",hat2)
_weld.Part0,_weld.Part1    = hat2,torso
_weld.C1 = CF(-4.23, -1.25, 0)  * angles(Rad(0), Rad(90),	Rad(90))
_ap.MaxForce              = 1.7976932442896e+38
_ap.MaxVelocity           = inf
_ap.ReactionForceEnabled  = false
_ap.Responsiveness        = 200
_ap.Attachment0           = _att1
_ap.Attachment1           = _att2
_ao.MaxTorque             = inf
_ao.MaxAngularVelocity    = inf
_ao.ReactionTorqueEnabled = false
_ao.Responsiveness        = 200
_ao.Attachment0           = _att1
_ao.Attachment1           = _att2
_att2.Orientation         = vt(0,0,0)
_att2.Position            = vt(0,0,0)
-----------
 
--right leg
local hat2               = Instance.new("Part",torso)
hat2.Name = "rightleg"
hat2.Size                = rightleg.Size
hat2.Transparency        = 1
hat2.CanCollide          = false
local _ap                 = Instance.new("AlignPosition",rightleg)
local _ao                 = Instance.new("AlignOrientation",rightleg)
local _att1,_att2,_weld     = Instance.new("Attachment",rightleg),Instance.new("Attachment",hat2),Instance.new("Weld",hat2)
_weld.Part0,_weld.Part1    = hat2,torso
_ap.MaxForce              = 1.7976932442896e+38
_ap.MaxVelocity           = inf
_ap.ReactionForceEnabled  = false
_ap.Responsiveness        = 200
_ap.Attachment0           = _att1
_ap.Attachment1           = _att2
_ao.MaxTorque             = inf
_ao.MaxAngularVelocity    = inf
_ao.ReactionTorqueEnabled = false
_ao.Responsiveness        = 200
_ao.Attachment0           = _att1
_ao.Attachment1           = _att2
_att2.Orientation         = vt(0, -90.39, 90)
_att2.Position            = vt(1.72999954, -7.63000011, 0) 
 
-----------
--left leg
 
local hat2               = Instance.new("Part",torso)
hat2.Name = "leftleg"
hat2.Size                = leftleg.Size
hat2.Transparency        = 1
hat2.CanCollide          = false
local _ap                 = Instance.new("AlignPosition",leftleg)
local _ao                 = Instance.new("AlignOrientation",leftleg)
local _att1,_att2,_weld     = Instance.new("Attachment",leftleg),Instance.new("Attachment",hat2),Instance.new("Weld",hat2)
_weld.Part0,_weld.Part1    = hat2,torso
_ap.MaxForce              = 1.7976932442896e+38
_ap.MaxVelocity           = inf
_ap.ReactionForceEnabled  = false
_ap.Responsiveness        = 200
_ap.Attachment0           = _att1
_ap.Attachment1           = _att2
_ao.MaxTorque             = inf
_ao.MaxAngularVelocity    = inf
_ao.ReactionTorqueEnabled = false
_ao.Responsiveness        = 200
_ao.Attachment0           = _att1
_ao.Attachment1           = _att2
_att2.Orientation         = vt(0, -90.39, 90)
_att2.Position            = vt(-1.56000137, -7.63000011, 0) 
-----------
--handle1
local hat2               = Instance.new("Part",leftarm)
hat2.Name = "handle1"
hat2.Size                = handle1.Size
 
hat2.Transparency        = 1
hat2.CanCollide          = false
local ap                 = Instance.new("AlignPosition",handle1)
local ao                 = Instance.new("AlignOrientation",handle1)
local att1,att2,HANDLEWELD     = Instance.new("Attachment",handle1),Instance.new("Attachment",hat2),Instance.new("Weld",hat2)
HANDLEWELD.Part0,HANDLEWELD.Part1    = hat2,leftarm
HANDLEWELD.C1 = CF(-4.5,-4,0) *angles(Rad(0),Rad(0),Rad(-90))
ap.MaxForce              = 1.7976932442896e+38
ap.MaxVelocity           = inf
ap.ReactionForceEnabled  = false
ap.Responsiveness        = 200
ap.Attachment0           = att1
ap.Attachment1           = att2
ao.MaxTorque             = inf
ao.MaxAngularVelocity    = inf
ao.ReactionTorqueEnabled = false
ao.Responsiveness        = 200
ao.Attachment0           = att1
ao.Attachment1           = att2
att2.Orientation         = vt(0,0,0)
att2.Position            = vt(0,0,0)
-----------
--handle2
local hat2               = Instance.new("Part",handle1)
hat2.Name = "handle2"
hat2.Size                = handle2.Size
hat2.Transparency        = 1
hat2.CanCollide          = false
local ap                 = Instance.new("AlignPosition",handle2)
local ao                 = Instance.new("AlignOrientation",handle2)
local att1,att2,weld     = Instance.new("Attachment",handle2),Instance.new("Attachment",hat2),Instance.new("Weld",hat2)
weld.Part0,weld.Part1    = hat2,handle1
weld.C1 = CF(6.4,0,0) 
ap.MaxForce              = 1.7976932442896e+38
ap.MaxVelocity           = inf
ap.ReactionForceEnabled  = false
ap.Responsiveness        = 200
ap.Attachment0           = att1
ap.Attachment1           = att2
ao.MaxTorque             = inf
ao.MaxAngularVelocity    = inf
ao.ReactionTorqueEnabled = false
ao.Responsiveness        = 200
ao.Attachment0           = att1
ao.Attachment1           = att2
att2.Orientation         = vt(0,0,0)
att2.Position            = vt(0,0,0)
-----------
--handle3
local hat2               = Instance.new("Part",handle1)
hat2.Name = "handle2"
hat2.Size                = handle3.Size
hat2.Transparency        = 1
hat2.CanCollide          = false
local ap                 = Instance.new("AlignPosition",handle3)
local ao                 = Instance.new("AlignOrientation",handle3)
local att1,att2,weld     = Instance.new("Attachment",handle3),Instance.new("Attachment",hat2),Instance.new("Weld",hat2)
weld.Part0,weld.Part1    = hat2,handle1
weld.C1 = CF(13.2,0,0) 
 
ap.MaxForce              = 1.7976932442896e+38
ap.MaxVelocity           = inf
ap.ReactionForceEnabled  = false
ap.Responsiveness        = 200
ap.Attachment0           = att1
ap.Attachment1           = att2
ao.MaxTorque             = inf
ao.MaxAngularVelocity    = inf
ao.ReactionTorqueEnabled = false
ao.Responsiveness        = 200
ao.Attachment0           = att1
ao.Attachment1           = att2
att2.Orientation         = vt(0,0,0)
att2.Position            = vt(0,0,0)
 
 
necko = CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local neck = torso.head["Weld"]
RW = torso.rightarm.Weld
LW = torso.leftarm.Weld
RH = torso.rightleg.Weld
LH = torso.leftleg.Weld
Player_Size = 1
mouse.KeyDown:connect(function(key)
	if string.byte(key) == 48 then
		Swing = 2
		hum.WalkSpeed = 40
	end
end)
mouse.KeyUp:connect(function(key)
	if string.byte(key) == 48 then
		Swing = 1
		hum.WalkSpeed = 8
	end
end)
 
stalker = false
 
 
function attackrel()
    titan = true
    for i = 0,5,0.1 do
        swait()
   	            hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,12.5,0),0.15)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0), Rad(0) , Rad(0)), 0.15)
			    neck.C0 = clerp(neck.C0, necko* CF(0,0,-1) * angles(Rad(90), Rad(180), Rad(0)), 0.15)
				torsweld.C0 = clerp(torsweld.C0,  CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0), Rad(0) , Rad(0)), 0.15)
 
			    RW.C0 = clerp(RW.C0, CF(5.5,-5,0) * angles(Rad(-15)  , Rad(35) ,	Rad(-225)), 0.15)
			    LW.C0 = clerp(LW.C0, CF(5.5,-5,0) * angles(Rad(15)  , Rad(-35) ,	Rad(-225)), 0.15)
                HANDLEWELD.C1 = CF(-4.5,4,0) *angles(Rad(15),Rad(-55),Rad(135))
                HANDLEWELD.C0 = CF(0,-3,0) *angles(Rad(0),Rad(15),Rad(-45))
    end
    swait(1)
    for i = 0,2,0.1 do
        swait()
   	            hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,12.5,0),0.15)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0), Rad(0) , Rad(0)), 0.15)
			    neck.C0 = clerp(neck.C0, necko* CF(0,0,-1) * angles(Rad(90), Rad(180), Rad(0)), 0.15)
				torsweld.C0 = clerp(torsweld.C0,  CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0), Rad(0) , Rad(0)), 0.15)
 
			    RW.C0 = clerp(RW.C0, CF(5.5-2.5,2+1*i,0) * angles(Rad(-15)  , Rad(35) ,	Rad(-100+38.5*i)), 0.15)
			    LW.C0 = clerp(LW.C0, CF(5.5-2.5,2+1*i,0) * angles(Rad(15)  , Rad(-35) ,	Rad(-100+38.5*i)), 0.15)
                HANDLEWELD.C1 = CF(-4.5,4,0) *angles(Rad(15),Rad(-55),Rad(135))
                HANDLEWELD.C0 = CF(0,-3,0) *angles(Rad(0),Rad(15),Rad(-45))
    end
    swait(3)
    titan = false
end
mouse.KeyDown:connect(function(key)
	if titan == false then
	if key == 'e' and stalker == false then
	    stalker = true
	    HANDLEWELD.Part1 = torso
	    elseif key == 'e' and stalker == true then
stalker = false
HANDLEWELD.Part1 = leftarm
end
end
end)
 
 
 
mouse.Button1Down:Connect(function()
 
    if titan == false and stalker == false then
        titan = true
    attackrel()
    			HANDLEWELD.C1 = CF(-4.5,-4,0) *angles(Rad(0),Rad(0),Rad(-90))
HANDLEWELD.C0 = CF(0,-3,0) *angles(Rad(0),Rad(15),Rad(-45))
 
    end
 
end)
 
while true do
	swait()
	sine = sine + change
	local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
	local velderp = root.Velocity.y
	hitfloor, posfloor = rayCast(root.Position, CFrame.new(root.Position, root.Position - Vector3.new(0, 1, 0)).lookVector, 4* Player_Size, char)
 
	if hitfloor == nil then
		cankick = true
	else
		cankick = false
	end
 
 
	if equipped == true or equipped == false then
		if titan == false then
			idle = idle + 1
		else
			idle = 0
		end
		if 1 < root.Velocity.y and hitfloor == nil then
			Anim = "Jump"
			if titan == false or titan == true or stalker == false  then
							    	rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0), Rad(0) , Rad(0)), 0.15)
			    RH.C0 = clerp(RH.C0, CF(0,-2,2.5) * angles(Rad(45),Rad(0),Rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, CF(0,-2,2.5) * angles(Rad(45),Rad(0),Rad(0)), 0.15)
 
end
			if titan == false and stalker == false then
				hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,12.5,0),0.15)
			RW.C0 = clerp(RW.C0, CF(6.5,2,2) * angles(Rad(0),Rad(-35),Rad(-150)), 0.15)
                LW.C0 = clerp(LW.C0, CF(6.5,2,-2) * angles(Rad(0),Rad(35),Rad(-150)), 0.15)
			    				torsweld.C0 = clerp(torsweld.C0,  CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0), Rad(0) , Rad(0)), 0.15)
 
			end
			if titan == false and stalker == true then
				hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,12.5,0),0.15)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0), Rad(0) , Rad(0)), 0.15)
			    RH.C0 = clerp(RH.C0, CF(0,-2,2.5) * angles(Rad(45),Rad(0),Rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, CF(0,-2,2.5) * angles(Rad(45),Rad(0),Rad(0)), 0.15)
			    RW.C0 = clerp(RW.C0, CF(6.5,2,2) * angles(Rad(0),Rad(-35),Rad(-150)), 0.15)
                LW.C0 = clerp(LW.C0, CF(6.5,2,-2) * angles(Rad(0),Rad(35),Rad(-150)), 0.15)
 
			end
		elseif -1 > root.Velocity.y and hitfloor == nil then
			Anim = "Fall"
			if titan == false or titan == true or stalker == false  then
							    rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0), Rad(0) , Rad(0)), 0.15)
			    RH.C0 = clerp(RH.C0, CF(0* Player_Size, 0,0) * angles(Rad(0), Rad(0), Rad(0)), 0.3)
         	    LH.C0 = clerp(LH.C0, CF(0* Player_Size, 0,0) * angles(Rad(0), Rad(0), Rad(0)), 0.3)
 
end
			if titan == false and stalker == false then
			    hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,12.5,0),0.15)
				RW.C0 = clerp(RW.C0, CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0)  , Rad(0) ,	Rad(0)), 0.15)
			    LW.C0 = clerp(LW.C0, CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0)  , Rad(0) ,	Rad(0)), 0.15)
				torsweld.C0 = clerp(torsweld.C0,  CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0), Rad(0) , Rad(0)), 0.15)
 
			end
			if titan == false and stalker == true then
			    hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,12.5,0),0.15)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0), Rad(0) , Rad(0)), 0.15)
			    RH.C0 = clerp(RH.C0, CF(0* Player_Size, 0,0) * angles(Rad(0), Rad(0), Rad(0)), 0.3)
         	    LH.C0 = clerp(LH.C0, CF(0* Player_Size, 0,0) * angles(Rad(0), Rad(0), Rad(0)), 0.3)
			    RW.C0 = clerp(RW.C0, CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0)  , Rad(0) ,	Rad(0)), 0.15)
			    LW.C0 = clerp(LW.C0, CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0)  , Rad(0) ,	Rad(0)), 0.15)
 
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			change = 1
			if titan == false or titan == true or stalker == false  then
				RH.C0 = clerp(RH.C0, CF(0* Player_Size, 0,0) * angles(Rad(0), Rad(0), Rad(0)), 0.3)
         	    LH.C0 = clerp(LH.C0, CF(0* Player_Size, 0,0) * angles(Rad(0), Rad(0), Rad(0)), 0.3)
                neck.C0 = clerp(neck.C0, necko* CF(0,0,-1) * angles(Rad(90), Rad(180), Rad(0)), 0.15)
 
				    end
			if titan == false and stalker == false then
				hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,12.5,0),0.15)
			   	rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0), Rad(0) , Rad(0)), 0.15)
			    RW.C0 = clerp(RW.C0, CF(0,0,0) * angles(Rad(0)  , Rad(0) ,	Rad(0)), 0.15)
			    LW.C0 = clerp(LW.C0, CF(4, 0, 0) * angles(Rad(15)  , Rad(0) ,	Rad(-125)), 0.15)
			HANDLEWELD.C1 = CF(-4.5,-4,0) *angles(Rad(0),Rad(0),Rad(-90))
            HANDLEWELD.C0 = CF(0,-3,0) *angles(Rad(0),Rad(15),Rad(-45))
 
			end
			if titan == false and stalker == true  then
 
				hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,12.5,0),0.15)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0), Rad(0) , Rad(0)), 0.15)
			    neck.C0 = clerp(neck.C0, necko* CF(0,0,-1) * angles(Rad(135), Rad(-180), Rad(0)), 0.15)
				torsweld.C0 = clerp(torsweld.C0,  CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(75), Rad(0) , Rad(0)), 0.15)
 
			    RH.C0 = clerp(RH.C0, CF(0, -2,-2) * angles(Rad(-50), Rad(0), Rad(0)), 0.3)
         	    LH.C0 = clerp(LH.C0, CF(0, -2,-2) * angles(Rad(-50), Rad(0), Rad(0)), 0.3)
			    RW.C0 = clerp(RW.C0, CF(1.5,2,0) * angles(Rad(0)  , Rad(0) ,	Rad(-75)), 0.15)
			    LW.C0 = clerp(LW.C0, CF(1.5,2,0) * angles(Rad(0)  , Rad(0) ,	Rad(-75)), 0.15)
                HANDLEWELD.C1 = CF(-2,2,2.5) *angles(Rad(0),Rad(0),Rad(-90))
                HANDLEWELD.C0 = CF(0,0,0) *angles(Rad(0),Rad(0),Rad(-45))
 
			end
		elseif torvel > 2 and torvel < 22 and hitfloor ~= nil then
			Anim = "Walk"
			change = 1
			if titan == false or titan == true or stalker == false   then
			    				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, .575 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(15- 4.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(0)), 0.15)
 
			    RH.C0 = clerp(RH.C0, CF(0* Player_Size, .2* Player_Size,-.1* Player_Size) * angles(Rad(-15 - 15 * Cos(sine / 35)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(0 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
         	    LH.C0 = clerp(LH.C0, CF(0* Player_Size, .2* Player_Size, -.1* Player_Size) * angles(Rad(-15 + 15 * Cos(sine / 35)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-0 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
			    end
			if titan == false  and stalker == false then
				hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,12.5,0),0.15)
 
 
			    RW.C0 = clerp(RW.C0, CF(1.5+1.5*Cos(sine/12),1+2*Cos(sine/12),0) * angles( Rad(0) ,	Rad(0),Rad(-22.5-45*Cos(sine/12))  ), 0.15)
			    LW.C0 = clerp(LW.C0, CF(6.5,2,-2) * angles(Rad(0),Rad(35),Rad(-150)), 0.15)
			    				torsweld.C0 = clerp(torsweld.C0,  CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0), Rad(0) , Rad(0)), 0.15)
	HANDLEWELD.C1 = CF(-4.5,-4,0) *angles(Rad(0),Rad(0),Rad(-90))
            HANDLEWELD.C0 = CF(0,-3,0) *angles(Rad(0),Rad(15),Rad(-45))
 
			end
			if titan == false and stalker == true then
				hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,2,0),0.15)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0), Rad(0) , Rad(0)), 0.15)
			    torsweld.C0 = clerp(torsweld.C0,  CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(75), Rad(0) , Rad(0)), 0.15)
 
 
			    --neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(90), Rad(180), Rad(0) - hed.RotVelocity.Y / 15), 0.15)
         	    RH.C0 = clerp(RH.C0, CF(0, -2,-2) * angles(Rad(-50-35*Cos(sine/12)), Rad(0), Rad(0)), 0.3)
         	    LH.C0 = clerp(LH.C0, CF(0, -2,-2) * angles(Rad(-50+35*Cos(sine/12)), Rad(0), Rad(0)), 0.3)
			    RW.C0 = clerp(RW.C0, CF(1.5,2,0) * angles(Rad(0)  , Rad(0) ,	Rad(-75)), 0.15)
			    LW.C0 = clerp(LW.C0, CF(1.5,2,0) * angles(Rad(0)  , Rad(0) ,	Rad(-75)), 0.15)
                HANDLEWELD.C1 = CF(-2,2,2.5) *angles(Rad(0),Rad(0),Rad(-90))
                HANDLEWELD.C0 = CF(0,0,0) *angles(Rad(0),Rad(0),Rad(-45))
 
			end
		elseif torvel >= 22 and hitfloor ~= nil then
			Anim = "Sprint"
			change = 1.35
			if stalker == false and titan == false or titan == true   then
			    rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, .575 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(26 - 4.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(15 * Cos(sine / 7))), 0.15)
			    RH.C0 = clerp(RH.C0, CF(0* Player_Size, .2* Player_Size,-.25+.25*Cos(sine/12)* Player_Size) * angles(Rad(-15 - 35 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(0 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
         	    LH.C0 = clerp(LH.C0, CF(0* Player_Size, .2* Player_Size, -.25+.25*Cos(sine/12)* Player_Size) * angles(Rad(-15 + 35 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-0 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
 
end
			if titan == false and stalker == false then
				hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,12.5,0),0.15)
                RW.C0 = clerp(RW.C0, CF(1.5+1.5*Cos(sine/12),1+2*Cos(sine/12),0) * angles( Rad(0) ,	Rad(0),Rad(-45-90*Cos(sine/12))  ), 0.15)
			    LW.C0 = clerp(LW.C0, CF(1.5-1.5*Cos(sine/12),1-2*Cos(sine/12),0) * angles( Rad(0) ,	Rad(0),Rad(-45+90*Cos(sine/12))), 0.15)
			   	torsweld.C0 = clerp(torsweld.C0,  CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0), Rad(0) , Rad(0)), 0.15)
	HANDLEWELD.C1 = CF(-4.5,-4,0) *angles(Rad(0),Rad(0),Rad(-90))
            HANDLEWELD.C0 = CF(0,-3,0) *angles(Rad(0),Rad(15),Rad(-45))
 
			end
			if titan == false and stalker == true then
				hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,2,0),0.15)
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(0), Rad(0) , Rad(0)), 0.15)
			    torsweld.C0 = clerp(torsweld.C0,  CF(0* Player_Size, 0* Player_Size, 0) * angles(Rad(75), Rad(0) , Rad(0)), 0.15)
 
			    RH.C0 = clerp(RH.C0, CF(0,-2+1*Sin(sine/12),-1) * angles(Rad(-50+50*Sin(sine/12)), Rad(0), Rad(0)), 0.3)
         	    LH.C0 = clerp(LH.C0, CF(0,-2+1*Sin(sine/12),-1) * angles(Rad(-50+50*Sin(sine/12)), Rad(0), Rad(0)), 0.3)
			    RW.C0 = clerp(RW.C0, CF(1.5+1*Sin(sine/12),2-1*Sin(sine/12),0) * angles(Rad(0)  , Rad(0) ,	Rad(-50-50*2*Sin(sine/12))), 0.15)
			    LW.C0 = clerp(LW.C0, CF(1.5+1*Sin(sine/12),2-1*Sin(sine/12),0) * angles(Rad(0)  , Rad(0) ,	Rad(-50-50*2*Sin(sine/12))), 0.15)
                HANDLEWELD.C1 = CF(-2,2,2.5) *angles(Rad(0),Rad(0),Rad(-90))
                HANDLEWELD.C0 = CF(0,0,0) *angles(Rad(0),Rad(0),Rad(-45))
 
 
			end
		end
	end
 
 
 
end
