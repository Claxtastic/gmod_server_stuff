AddCSLuaFile()

if CLIENT then
   SWEP.PrintName = "USP"
   SWEP.Slot = 1
   SWEP.Icon = "vgui/ttt/icon_hl2_pistol"
   SWEP.IconLetter = "a"
end

-- Always derive from weapon_tttbase
SWEP.Base = "weapon_tttbase"

-- Standard GMod values
SWEP.HoldType = "pistol"

SWEP.Primary.Ammo = "Pistol"
SWEP.Primary.Delay = 0.15
SWEP.Primary.Recoil = 0.7
SWEP.Primary.Cone = 0.019
SWEP.Primary.Damage = 14
SWEP.Primary.Automatic = false
SWEP.Primary.ClipSize = 20
SWEP.Primary.ClipMax = 60
SWEP.Primary.DefaultClip = 20
SWEP.Primary.Sound = Sound( "Weapon_Pistol.Single" )
SWEP.HeadshotMultiplier = 1.4

-- Model properties
SWEP.UseHands = true
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 54
SWEP.ViewModel = Model( "models/weapons/c_pistol.mdl" )
SWEP.WorldModel = Model( "models/weapons/w_pistol.mdl" )

SWEP.IronSightsPos = Vector( -5.761, -8.898, 3.119 )
SWEP.IronSightsAng = Vector( 0.275, 1, 0 )

-- TTT config values

-- Kind specifies the category this weapon is in. Players can only carry one of
-- each. Can be: WEAPON_... MELEE, PISTOL, HEAVY, NADE, CARRY, EQUIP1, EQUIP2 or ROLE.
-- Matching SWEP.Slot values: 0      1       2     3      4      6       7        8
SWEP.Kind = WEAPON_PISTOL

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
