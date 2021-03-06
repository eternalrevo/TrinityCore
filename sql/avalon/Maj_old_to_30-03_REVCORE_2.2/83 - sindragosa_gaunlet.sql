-- Template
DELETE FROM `creature_template` WHERE `entry` = 37503;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(37503, 0,0, 0, 0, 0, 19725,25455,0,0, 'Sindragosa s Ward', '', '',0, 83, 83,2,35,35, 0, 1,1.14286, 1, 0,496, 674, 0, 783,1,0,0,2, 33555200,8,0, 0, 0,0,0,365,529, 98, 10,8, 0,0, 0, 0,0, 0,0, 0, 0, 0, 0,0, 0,0,0, 0,0, 0, 0, 0, 0, '',0, 7,2000,2000, 1, 0,0, 0,0, 0,0,0, 0,1,0,0,128, 'npc_sindragosa_ward', 12340);

UPDATE `creature_template` SET `modelid1` = 25455, `modelid2` = 0, `unit_flags` = 33555202, `flags_extra` = 129, `ScriptName` = 'npc_sindragosas_ward' WHERE `entry` = 37503;
DELETE FROM `creature` WHERE `id` = 37503;
INSERT INTO `creature` (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags) VALUES
(37503, 631, 15, 1, 0, 0, 4181.54, 2551.65, 211.033, 4.72777, 604800, 0, 0, 27890000, 8516000, 0, 0, 0, 0);
UPDATE `gameobject` SET `state` = 0 WHERE `id` = 201373;
DELETE FROM `areatrigger_scripts` WHERE `entry` = 5623;
INSERT INTO `areatrigger_scripts` (entry, ScriptName) VALUES
(5623, 'at_icc_start_sindragosa_gauntlet');
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `exp` = 2, `faction_A` = 21, `faction_H` = 21, `mechanic_immune_mask` = 8388624 WHERE `entry` IN (37228, 37229, 37232, 37501, 37502, 38197, 38198, 38362, 38134, 38137);
UPDATE `creature_template` SET `mindmg` = 422, `maxdmg` = 586, `attackpower` = 642, `dmg_multiplier` = 7.5, `minrangedmg` = 345, `maxrangedmg` = 509, `rangedattackpower` = 103 WHERE `entry` IN (37228, 37229);
UPDATE `creature_template` SET `mindmg` = 422, `maxdmg` = 586, `attackpower` = 642, `dmg_multiplier` = 13, `lootid` = 100002, `minrangedmg` = 345, `maxrangedmg` = 509, `rangedattackpower` = 103 WHERE `entry` IN (38134, 38137);
UPDATE `creature_template` SET `dmg_multiplier` = 2 WHERE `entry` = 38362;
UPDATE `creature_template` SET `difficulty_entry_1` = 38134 WHERE `entry` = 37228;
UPDATE `creature_template` SET `difficulty_entry_1` = 38137 WHERE `entry` = 37229;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (37228, 37229, 37501, 37502);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (37228, 37229, 37501, 37502) AND `source_type` = 0;
INSERT INTO `smart_scripts` (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
-- Frostwarden Warrior: 37228 / 38134
(37228, 0, 0, 0, 0, 0, 100, 30, 5000, 15000, 10000, 25000, 11, 71323, 3, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Warrior - Cast Frostblade'),
(37228, 0, 1, 0, 6, 0, 100, 30, 0, 0, 0, 0, 11, 71203, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Warrior - Cast Soul Feast On Death'),
-- Frostwarden Sorceress: 37229 / 38137
(37229, 0, 0, 0, 0, 0, 100, 20, 15000, 20000, 20000, 25000, 11, 71331, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Sorceress - Cast Ice Tomb (25 man only)'),
(37229, 0, 1, 0, 0, 0, 100, 30, 10000, 15000, 10000, 20000, 11, 71320, 3, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Sorceress - Cast Frost Nova'),
(37229, 0, 2, 0, 0, 0, 100, 30, 3000, 5000, 3000, 4000, 11, 71318, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Sorceress - Cast Frostbolt'),
(37229, 0, 3, 0, 6, 0, 100, 30, 0, 0, 0, 0, 11, 71203, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Sorceress - Cast Soul Feast On Death'),
-- Nerub'ar Champion: 37501 / 38197
(37501, 0, 0, 0, 0, 0, 100, 30, 3000, 5000, 10000, 15000, 11, 71801, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Champion - Cast Rush'),
(37501, 0, 1, 0, 6, 0, 100, 30, 0, 0, 0, 0, 11, 71203, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Champion - Cast Soul Feast On Death'),
-- Nerub'ar Webweaver: 37502 / 38198
(37502, 0, 0, 0, 0, 0, 100, 30, 3000, 5000, 10000, 15000, 11, 71326, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Webweaver - Cast Crypt Scarabs'),
(37502, 0, 1, 0, 0, 0, 100, 30, 10000, 15000, 10000, 20000, 11, 71327, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Webweaver - Cast Web'),
(37502, 0, 2, 0, 6, 0, 100, 30, 0, 0, 0, 0, 11, 71203, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Webweaver - Cast Soul Feast On Death');