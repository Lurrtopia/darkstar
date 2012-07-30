---------------------------------------------
--  Tyrranic Blare
--
--  Description: Emits an overwhelming scream that damages nearby targets.
--  Type: Magical?
--  Utsusemi/Blink absorb: Ignores shadows
--  Range: Less than or equal to 10.0
--  Notes: Only used by Gulool Ja Ja.
---------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------

function OnMobWeaponSkill(target, mob, skill)

    dmgmod = 1;
    accmod = 1;
    info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*3,accmod,dmgmod,TP_NO_EFFECT);
    dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_EARTH,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
	
    return dmg;
end;