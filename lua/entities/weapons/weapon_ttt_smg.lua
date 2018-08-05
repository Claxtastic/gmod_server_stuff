AddCSLuaFile()

if CLIENT then
   SWEP.PrintName = "MP7"
   SWEP.Slot = 2
   SWEP.Icon = "vgui/ttt/icon_smg"
   SWEP.IconLetter = "d"
end

-- Always derive from weapon_tttbase
SWEP.Base = "weapon_tttbase"

-- Standard GMod values
SWEP.HoldType = "smg"

SWEP.Primary.Ammo = "Pistol"
SWEP.Primary.Delay = 0.07
SWEP.Primary.Recoil = 0.6
SWEP.Primary.Cone = 0.02
SWEP.Primary.Damage = 16
SWEP.Primary.Automatic = true
SWEP.Primary.ClipSize = 30
SWEP.Primary.ClipMax = 60
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Sound = Sound( "Weapon_SMG1.Single" )
SWEP.HeadshotMultiplier = 1.2

-- Model properties
SWEP.UseHands = true
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 56
SWEP.ViewModel = Model( "models/weapons/c_smg1.mdl" )
SWEP.WorldModel = Model( "models/weapons/w_smg1.mdl" )

SWEP.IronSightsPos = Vector( -6.43, -3.32, 3 )
-- (x,-3.32, z)

-- TTT config values

-- Kind specifies the category this weapon is in. Players can only carry one of
-- each. Can be: WEAPON_... MELEE, PISTOL, HEAVY, NADE, CARRY, EQUIP1, EQUIP2 or ROLE.
-- Matching SWEP.Slot values: 0      1       2     3      4      6       7        8
SWEP.Kind = WEAPON_HEAVY

-- If AutoSpawnable is true and SWEP.Kind is not WEAPON_EQUIP1/2, then this gun can
-- be spawned as a random weapon.
SWEP.AutoSpawnable = true

-- The AmmoEnt is the ammo entity that can be picked up when carrying this gun.
SWEP.AmmoEnt = "item_ammo_pistol_ttt"

-- InLoadoutFor is a table of ROLE_* entries that specifies which roles should
-- receive this weapon as soon as the round starts. In this case, none.
SWEP.InLoadoutFor = { nil }

-- If AllowDrop is false, players can't manually drop the gun with Q
SWEP.AllowDrop = true

-- If IsSilent is true, victims will not scream upon death.
SWEP.IsSilent = false

-- If NoSights is true, the weapon won't have ironsights
SWEP.NoSights = false
