DELETE FROM `creature_loot_template`;
DELETE FROM `disenchant_loot_template`;
DELETE FROM `fishing_loot_template`;
DELETE FROM `gameobject_loot_template`;
DELETE FROM `item_loot_template`;
DELETE FROM `mail_loot_template`;
DELETE FROM `milling_loot_template`;
DELETE FROM `pickpocketing_loot_template`;
DELETE FROM `player_loot_template`;
DELETE FROM `prospecting_loot_template`;
DELETE FROM `reference_loot_template`;
DELETE FROM `skinning_loot_template`;

UPDATE `creature_template` SET lootid = 0, pickpocketloot = 0, skinloot = 0, mingold = 0, maxgold = 0;
UPDATE `gameobject_template` SET data1 = 0 WHERE TYPE = 3;
UPDATE `gameobject_template` SET data1 = 0 WHERE TYPE = 25;
UPDATE `item_template` SET DisenchantID = 0;

DELETE FROM `conditions` WHERE (SourceTypeOrReferenceId > 0 AND SourceTypeOrReferenceId < 13) OR SourceTypeOrReferenceId = 28;