﻿-- ------------------------------------------------------------------------------ --
--                            TradeSkillMaster_Crafting                           --
--            http://www.curse.com/addons/wow/tradeskillmaster_crafting           --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

-- load the parent file (TSM) into a local variable
local TSM = select(2, ...)

TSM.enchantingName = GetSpellInfo(7411)

-- looks up the itemID of the scroll that the enchant makes
-- index = spellID of the enchant
-- value = itemID of scroll
-- Enchant List:
	-- WRATH
		-- [44506] = 38960, -- Enchant Gloves - Gatherer
		-- [44484] = 38951, -- Enchant Gloves - Expertise
		-- [44488] = 38953, -- Enchant Gloves - Precision
		-- [44489] = 38954, -- Enchant Shield - Dodge
		-- [44492] = 38955, -- Enchant Chest - Mighty Health
		-- [44500] = 38959, -- Enchant Cloak - Superior Agility
		-- [44508] = 38961, -- Enchant Boots - Greater Spirit
		-- [44509] = 38962, -- Enchant Chest - Greater Mana Restoration
		-- [44513] = 38964, -- Enchant Gloves - Greater Assault
		-- [44528] = 38966, -- Enchant Boots - Greater Fortitude
		-- [44529] = 38967, -- Enchant Gloves - Major Agility
		-- [44555] = 38968, -- Enchant Bracer - Exceptional Intellect
		-- [44582] = 38973, -- Enchant Cloak - Minor Power
		-- [44584] = 38974, -- Enchant Boots - Greater Vitality
		-- [44588] = 38975, -- Enchant Chest - Exceptional Resilience
		-- [44589] = 38976, -- Enchant Boots - Superior Agility
		-- [44591] = 38978, -- Enchant Cloak - Superior Dodge
		-- [44592] = 38979, -- Enchant Gloves - Exceptional Spellpower
		-- [44593] = 38980, -- Enchant Bracer - Major Spirit
		-- [44598] = 38984, -- Enchant Bracer - Expertise
		-- [44616] = 38987, -- Enchant Bracer - Greater Stats
		-- [44623] = 38989, -- Enchant Chest - Super Stats
		-- [44625] = 38990, -- Enchant Gloves - Armsman
		-- [44631] = 38993, -- Enchant Cloak - Shadow Armor
		-- [44635] = 38997, -- Enchant Bracer - Greater Spellpower
		-- [44575] = 44815, -- Enchant Bracer - Greater Assault
		-- [44510] = 38963, -- Enchant Weapon - Exceptional Spirit
		-- [44524] = 38965, -- Enchant Weapon - Icebreaker
		-- [44576] = 38972, -- Enchant Weapon - Lifeward
		-- [44595] = 38981, -- Enchant 2H Weapon - Scourgebane
		-- [44621] = 38988, -- Enchant Weapon - Giant Slayer
		-- [44629] = 38991, -- Enchant Weapon - Exceptional Spellpower
		-- [44630] = 38992, -- Enchant 2H Weapon - Greater Savagery
		-- [44633] = 38995, -- Enchant Weapon - Exceptional Agility
		-- [44383] = 38949, -- Enchant Shield - Resilience
		-- [46594] = 38999, -- Enchant Chest - Dodge
		-- [46578] = 38998, -- Enchant Weapon - Deathfrost
		-- [47051] = 39000, -- Enchant Cloak - Greater Dodge
		-- [47672] = 39001, -- Enchant Cloak - Mighty Stamina
		-- [47766] = 39002, -- Enchant Chest - Greater Dodge
		-- [47898] = 39003, -- Enchant Cloak - Greater Speed
		-- [47899] = 39004, -- Enchant Cloak - Wisdom
		-- [47900] = 39005, -- Enchant Chest - Super Health
		-- [47901] = 39006, -- Enchant Boots - Tuskarr's Vitality
		-- [59625] = 43987, -- Enchant Weapon - Black Magic
		-- [59621] = 44493, -- Enchant Weapon - Berserking
		-- [59619] = 44497, -- Enchant Weapon - Accuracy
		-- [60616] = 38971, -- Enchant Bracer - Assault
		-- [60623] = 38986, -- Enchant Boots - Icewalker
		-- [60606] = 44449, -- Enchant Boots - Assault
		-- [60609] = 44456, -- Enchant Cloak - Speed
		-- [60663] = 44457, -- Enchant Cloak - Major Agility
		-- [60668] = 44458, -- Enchant Gloves - Crusher
		-- [60692] = 44465, -- Enchant Chest - Powerful Stats
		-- [60763] = 44469, -- Enchant Boots - Greater Assault
		-- [60767] = 44470, -- Enchant Bracer - Superior Spellpower
		-- [60621] = 44453, -- Enchant Weapon - Greater Potency
		-- [60691] = 44463, -- Enchant 2H Weapon - Massacre
		-- [60707] = 44466, -- Enchant Weapon - Superior Potency
		-- [60714] = 44467, -- Enchant Weapon - Mighty Spellpower
		-- [62256] = 44947, -- Enchant Bracer - Major Stamina
		-- [62948] = 45056, -- Enchant Staff - Greater Spellpower
		-- [62959] = 45060, -- Enchant Staff - Spellpower
		-- [63746] = 45628, -- Enchant Boots - Lesser Accuracy
		-- [64441] = 46026, -- Enchant Weapon - Blade Ward
		-- [64579] = 46098, -- Enchant Weapon - Blood Draining
		-- [71692] = 50816, -- Enchant Gloves - Angler
		
	-- TBC
		-- [33990] = 38928, -- Enchant Chest - Major Spirit
		-- [33991] = 38929, -- Enchant Chest - Restore Mana Prime
		-- [33992] = 38930, -- Enchant Chest - Major Resilience
		-- [33993] = 38931, -- Enchant Gloves - Blasting
		-- [33994] = 38932, -- Enchant Gloves - Precise Strikes
		-- [33995] = 38933, -- Enchant Gloves - Major Strength
		-- [33996] = 38934, -- Enchant Gloves - Assault
		-- [33997] = 38935, -- Enchant Gloves - Major Spellpower
		-- [33999] = 38936, -- Enchant Gloves - Major Healing
		-- [34001] = 38937, -- Enchant Bracer - Major Intellect
		-- [34002] = 38938, -- Enchant Bracer - Lesser Assault
		-- [34003] = 38939, -- Enchant Cloak - Spell Penetration
		-- [34004] = 38940, -- Enchant Cloak - Greater Agility
		-- [34007] = 38943, -- Enchant Boots - Cat's Swiftness
		-- [34008] = 38944, -- Enchant Boots - Boar's Speed
		-- [34009] = 38945, -- Enchant Shield - Major Stamina
		-- [34010] = 38946, -- Enchant Weapon - Major Healing
		-- [42974] = 38948, -- Enchant Weapon - Executioner
		-- [42620] = 38947, -- Enchant Weapon - Greater Agility
		
	-- VANILLA
		-- [7745]  = 38772, -- Enchant 2H Weapon - Minor Impact
		-- [7786]  = 38779, -- Enchant Weapon - Minor Beastslayer
		-- [7788]  = 38780, -- Enchant Weapon - Minor Striking
		-- [7793]  = 38781, -- Enchant 2H Weapon - Lesser Intellect
		-- [7418]  = 38679, -- Enchant Bracer - Minor Health
		-- [7420]  = 38766, -- Enchant Chest - Minor Health
		-- [7426]  = 38767, -- Enchant Chest - Minor Absorption
		-- [7428]  = 38768, -- Enchant Bracer - Minor Dodge
		-- [7443]  = 38769, -- Enchant Chest - Minor Mana
		-- [7457]  = 38771, -- Enchant Bracer - Minor Stamina
		-- [7748]  = 38773, -- Enchant Chest - Lesser Health
		-- [7766]  = 38774, -- Enchant Bracer - Minor Spirit
		-- [7771]  = 38775, -- Enchant Cloak - Minor Protection
		-- [7776]  = 38776, -- Enchant Chest - Lesser Mana
		-- [7779]  = 38777, -- Enchant Bracer - Minor Agility
		-- [7782]  = 38778, -- Enchant Bracer - Minor Strength
		-- [7857]  = 38782, -- Enchant Chest - Health
		-- [7859]  = 38783, -- Enchant Bracer - Lesser Spirit
		-- [7863]  = 38785, -- Enchant Boots - Minor Stamina
		-- [7867]  = 38786, -- Enchant Boots - Minor Agility
		-- [13378] = 38787, -- Enchant Shield - Minor Stamina
		-- [13419] = 38789, -- Enchant Cloak - Minor Agility
		-- [13421] = 38790, -- Enchant Cloak - Lesser Protection
		-- [13464] = 38791, -- Enchant Shield - Lesser Protection
		-- [13485] = 38792, -- Enchant Shield - Lesser Spirit
		-- [13501] = 38793, -- Enchant Bracer - Lesser Stamina
		-- [13536] = 38797, -- Enchant Bracer - Lesser Strength
		-- [13538] = 38798, -- Enchant Chest - Lesser Absorption
		-- [13607] = 38799, -- Enchant Chest - Mana
		-- [13612] = 38800, -- Enchant Gloves - Mining
		-- [13617] = 38801, -- Enchant Gloves - Herbalism
		-- [13620] = 38802, -- Enchant Gloves - Fishing
		-- [13622] = 38803, -- Enchant Bracer - Lesser Intellect
		-- [13626] = 38804, -- Enchant Chest - Minor Stats
		-- [13631] = 38805, -- Enchant Shield - Lesser Stamina
		-- [13635] = 38806, -- Enchant Cloak - Defense
		-- [13637] = 38807, -- Enchant Boots - Lesser Agility
		-- [13640] = 38808, -- Enchant Chest - Greater Health
		-- [13642] = 38809, -- Enchant Bracer - Spirit
		-- [13644] = 38810, -- Enchant Boots - Lesser Stamina
		-- [13646] = 38811, -- Enchant Bracer - Lesser Dodge
		-- [13648] = 38812, -- Enchant Bracer - Stamina
		-- [13659] = 38816, -- Enchant Shield - Spirit
		-- [13661] = 38817, -- Enchant Bracer - Strength
		-- [13663] = 38818, -- Enchant Chest - Greater Mana
		-- [13687] = 38819, -- Enchant Boots - Lesser Spirit
		-- [13689] = 38820, -- Enchant Shield - Lesser Parry
		-- [13698] = 38823, -- Enchant Gloves - Skinning
		-- [13700] = 38824, -- Enchant Chest - Lesser Stats
		-- [13746] = 38825, -- Enchant Cloak - Greater Defense
		-- [13815] = 38827, -- Enchant Gloves - Agility
		-- [13817] = 38828, -- Enchant Shield - Stamina
		-- [13822] = 38829, -- Enchant Bracer - Intellect
		-- [13836] = 38830, -- Enchant Boots - Stamina
		-- [13841] = 38831, -- Enchant Gloves - Advanced Mining
		-- [13846] = 38832, -- Enchant Bracer - Greater Spirit
		-- [13858] = 38833, -- Enchant Chest - Superior Health
		-- [13868] = 38834, -- Enchant Gloves - Advanced Herbalism
		-- [13882] = 38835, -- Enchant Cloak - Lesser Agility
		-- [13887] = 38836, -- Enchant Gloves - Strength
		-- [13890] = 38837, -- Enchant Boots - Minor Speed
		-- [13905] = 38839, -- Enchant Shield - Greater Spirit
		-- [13917] = 38841, -- Enchant Chest - Superior Mana
		-- [13931] = 38842, -- Enchant Bracer - Dodge
		-- [13935] = 38844, -- Enchant Boots - Agility
		-- [13939] = 38846, -- Enchant Bracer - Greater Strength
		-- [13941] = 38847, -- Enchant Chest - Stats
		-- [13945] = 38849, -- Enchant Bracer - Greater Stamina
		-- [13947] = 38850, -- Enchant Gloves - Riding Skill
		-- [13948] = 38851, -- Enchant Gloves - Minor Haste
		-- [13380] = 38788, -- Enchant 2H Weapon - Lesser Spirit
		-- [13503] = 38794, -- Enchant Weapon - Lesser Striking
		-- [13529] = 38796, -- Enchant 2H Weapon - Lesser Impact
		-- [13653] = 38813, -- Enchant Weapon - Lesser Beastslayer
		-- [13655] = 38814, -- Enchant Weapon - Lesser Elemental Slayer
		-- [13693] = 38821, -- Enchant Weapon - Striking
		-- [13695] = 38822, -- Enchant 2H Weapon - Impact
		-- [13898] = 38838, -- Enchant Weapon - Fiery Weapon
		-- [13915] = 38840, -- Enchant Weapon - Demonslaying
		-- [13937] = 38845, -- Enchant 2H Weapon - Greater Impact
		-- [13943] = 38848, -- Enchant Weapon - Greater Striking
		-- [20008] = 38852, -- Enchant Bracer - Greater Intellect
		-- [20009] = 38853, -- Enchant Bracer - Superior Spirit
		-- [20010] = 38854, -- Enchant Bracer - Superior Strength
		-- [20011] = 38855, -- Enchant Bracer - Superior Stamina
		-- [20012] = 38856, -- Enchant Gloves - Greater Agility
		-- [20013] = 38857, -- Enchant Gloves - Greater Strength
		-- [20015] = 38859, -- Enchant Cloak - Superior Defense
		-- [20016] = 38860, -- Enchant Shield - Vitality
		-- [20017] = 38861, -- Enchant Shield - Greater Stamina
		-- [20020] = 38862, -- Enchant Boots - Greater Stamina
		-- [20023] = 38863, -- Enchant Boots - Greater Agility
		-- [20024] = 38864, -- Enchant Boots - Spirit
		-- [20025] = 38865, -- Enchant Chest - Greater Stats
		-- [20026] = 38866, -- Enchant Chest - Major Health
		-- [20028] = 38867, -- Enchant Chest - Major Mana
		-- [20029] = 38868, -- Enchant Weapon - Icy Chill
		-- [20030] = 38869, -- Enchant 2H Weapon - Superior Impact
		-- [20031] = 38870, -- Enchant Weapon - Superior Striking
		-- [20032] = 38871, -- Enchant Weapon - Lifestealing
		-- [20033] = 38872, -- Enchant Weapon - Unholy Weapon
		-- [20034] = 38873, -- Enchant Weapon - Crusader
		-- [20035] = 38874, -- Enchant 2H Weapon - Major Spirit
		-- [20036] = 38875, -- Enchant 2H Weapon - Major Intellect
		-- [21931] = 38876, -- Enchant Weapon - Winter's Might
		-- [22749] = 38877, -- Enchant Weapon - Spellpower
		-- [22750] = 38878, -- Enchant Weapon - Healing Power
		-- [23799] = 38879, -- Enchant Weapon - Strength
		-- [23800] = 38880, -- Enchant Weapon - Agility
		-- [23803] = 38883, -- Enchant Weapon - Mighty Spirit
		-- [23804] = 38884, -- Enchant Weapon - Mighty Intellect
		-- [23801] = 38881, -- Enchant Bracer - Mana Regeneration
		-- [23802] = 38882, -- Enchant Bracer - Healing Power
		-- [25072] = 38885, -- Enchant Gloves - Threat
		-- [25073] = 38886, -- Enchant Gloves - Shadow Power
		-- [25074] = 38887, -- Enchant Gloves - Frost Power
		-- [25078] = 38888, -- Enchant Gloves - Fire Power
		-- [25079] = 38889, -- Enchant Gloves - Healing Power
		-- [25080] = 38890, -- Enchant Gloves - Superior Agility
		-- [25083] = 38893, -- Enchant Cloak - Stealth
		-- [25084] = 38894, -- Enchant Cloak - Subtlety
		-- [25086] = 38895, -- Enchant Cloak - Dodge
		-- [27837] = 38896, -- Enchant 2H Weapon - Agility
		-- [27951] = 37603, -- Enchant Boots - Dexterity
		-- [27958] = 38912, -- Enchant Chest - Exceptional Mana
		-- [27899] = 38897, -- Enchant Bracer - Brawn
		-- [27905] = 38898, -- Enchant Bracer - Stats
		-- [27906] = 38899, -- Enchant Bracer - Greater Dodge
		-- [27911] = 38900, -- Enchant Bracer - Superior Healing
		-- [27913] = 38901, -- Enchant Bracer - Restore Mana Prime
		-- [27914] = 38902, -- Enchant Bracer - Fortitude
		-- [27917] = 38903, -- Enchant Bracer - Spellpower
		-- [27944] = 38904, -- Enchant Shield - Lesser Dodge
		-- [27945] = 38905, -- Enchant Shield - Intellect
		-- [27946] = 38906, -- Enchant Shield - Parry
		-- [27948] = 38908, -- Enchant Boots - Vitality
		-- [27950] = 38909, -- Enchant Boots - Fortitude
		-- [27954] = 38910, -- Enchant Boots - Surefooted
		-- [27957] = 38911, -- Enchant Chest - Exceptional Health
		-- [27960] = 38913, -- Enchant Chest - Exceptional Stats
		-- [27961] = 38914, -- Enchant Cloak - Major Armor
		-- [27967] = 38917, -- Enchant Weapon - Major Striking
		-- [27968] = 38918, -- Enchant Weapon - Major Intellect
		-- [27971] = 38919, -- Enchant 2H Weapon - Savagery
		-- [27972] = 38920, -- Enchant Weapon - Potency
		-- [27975] = 38921, -- Enchant Weapon - Major Spellpower
		-- [27977] = 38922, -- Enchant 2H Weapon - Major Agility
		-- [27981] = 38923, -- Enchant Weapon - Sunfire
		-- [27982] = 38924, -- Enchant Weapon - Soulfrost
		-- [27984] = 38925, -- Enchant Weapon - Mongoose
		-- [28003] = 38926, -- Enchant Weapon - Spellsurge
		-- [28004] = 38927, -- Enchant Weapon - Battlemaster

	-- High Risk Ascension Content
		-- [968676]  = 967760,  -- Enchant Weapon - Unstoppable Assault I
		-- [968677]  = 967761,  -- Enchant Weapon - Unstoppable Assault II
		-- [968678]  = 967762,  -- Enchant Weapon - Unstoppable Assault III
		-- [968679]  = 967763,  -- Enchant Weapon - Lucid Assault I
		-- [968680]  = 967764,  -- Enchant Weapon - Lucid Assault II
		-- [968681]  = 967765,  -- Enchant Weapon - Lucid Assault III
		-- [968682]  = 967766,  -- Enchant Weapon - Spellbinder's Rage I
		-- [968683]  = 967767,  -- Enchant Weapon - Spellbinder's Rage II
		-- [968684]  = 967768,  -- Enchant Weapon - Spellbinder's Rage III
		-- [968685]  = 967769,  -- Enchant Weapon - Ninja's Focus I
		-- [968686]  = 967770,  -- Enchant Weapon - Ninja's Focus II
		-- [968687]  = 967771,  -- Enchant Weapon - Ninja's Focus III
		-- [968688]  = 967772,  -- Enchant Weapon - Grovewarden's Blessing I
		-- [968689]  = 967773,  -- Enchant Weapon - Grovewarden's Blessing II
		-- [968690]  = 967774,  -- Enchant Weapon - Grovewarden's Blessing III
		-- [968691]  = 967775,  -- Enchant Weapon - Viscious Assault I
		-- [968692]  = 967776,  -- Enchant Weapon - Viscious Assault II
		-- [968693]  = 967777,  -- Enchant Weapon - Viscious Assault III
		-- [968694]  = 967778,  -- Enchant Weapon - Arcane Dexterity I
		-- [968695]  = 967779,  -- Enchant Weapon - Arcane Dexterity II
		-- [968696]  = 967780,  -- Enchant Weapon - Arcane Dexterity III
		-- [968697]  = 967781,  -- Enchant Weapon - Arcane Artillery I
		-- [968698]  = 967782,  -- Enchant Weapon - Arcane Artillery II
		-- [968699]  = 967783,  -- Enchant Weapon - Arcane Artillery III
		-- [968700]  = 967784,  -- Enchant Weapon - Arcane Precision I
		-- [968701]  = 967785,  -- Enchant Weapon - Arcane Precision II
		-- [968702]  = 967786,  -- Enchant Weapon - Arcane Precision III
		-- [968770]  = 967787,  -- Enchant Weapon - Crusader II
		-- [968771]  = 967788,  -- Enchant Weapon - Crusader III
		-- [1968677] = 1204125, -- Enchant Weapon - Void Assault
		-- [1968678] = 1204126, -- Enchant Weapon - Overpowering Void Assault
		-- [1968680] = 1204127, -- Enchant Weapon - Dread Assault
		-- [1968681] = 1204128, -- Enchant Weapon - Overpowering Dread Assault
		-- [1968683] = 1204129, -- Enchant Weapon - Twisted Evoker
		-- [1968684] = 1204130, -- Enchant Weapon - Overpowering Twisted Evoker
		-- [1968686] = 1204131, -- Enchant Weapon - Twisted Assault
		-- [1968687] = 1204132, -- Enchant Weapon - Overpowering Twisted Assault
		-- [1968689] = 1204133, -- Enchant Weapon - Twisted Channeler
		-- [1968690] = 1204134, -- Enchant Weapon - Overpowering Twisted Channeler
		-- [1968692] = 1204135, -- Enchant Weapon - Dread Omen Strikes
		-- [1968693] = 1204136, -- Enchant Weapon - Overpowering Dread Omen Strikes
		-- [1968695] = 1204137, -- Enchant Weapon - Void Flows
		-- [1968696] = 1204138, -- Enchant Weapon - Overpowering Void Flows
		-- [1968698] = 1204139, -- Enchant Weapon - Void Blasting
		-- [1968699] = 1204140, -- Enchant Weapon - Overpowering Void Blasting
		-- [1968701] = 1204141, -- Enchant Weapon - Dread Precision
		-- [1968702] = 1204142, -- Enchant Weapon - Overpowering Dread Precision
		-- [1968770] = 1204143, -- Enchant Weapon - Twisted Crusader
		-- [1968771] = 1204144, -- Enchant Weapon - Overpowering Twisted Crusader
--


TSM.enchantingItemIDs = {
	[7418] = 38679, -- Scroll of Enchant Bracer - Minor Health
	[7420] = 38766, -- Scroll of Enchant Chest - Minor Health
	[7426] = 38767, -- Scroll of Enchant Chest - Minor Absorption
	[7428] = 38768, -- Scroll of Enchant Bracer - Minor Deflection
	[7443] = 38769, -- Scroll of Enchant Chest - Minor Mana
	[7454] = 38770, -- Scroll of Enchant Cloak - Minor Resistance
	[7457] = 38771, -- Scroll of Enchant Bracer - Minor Stamina
	[7745] = 38772, -- Scroll of Enchant 2H Weapon - Minor Impact
	[7748] = 38773, -- Scroll of Enchant Chest - Lesser Health
	[7766] = 38774, -- Scroll of Enchant Bracer - Minor Spirit
	[7771] = 38775, -- Scroll of Enchant Cloak - Minor Protection
	[7776] = 38776, -- Scroll of Enchant Chest - Lesser Mana
	[7779] = 38777, -- Scroll of Enchant Bracer - Minor Agility
	[7782] = 38778, -- Scroll of Enchant Bracer - Minor Strength
	[7786] = 38779, -- Scroll of Enchant Weapon - Minor Beastslayer
	[7788] = 38780, -- Scroll of Enchant Weapon - Minor Striking
	[7793] = 38781, -- Scroll of Enchant 2H Weapon - Lesser Intellect
	[7857] = 38782, -- Scroll of Enchant Chest - Health
	[7859] = 38783, -- Scroll of Enchant Bracer - Lesser Spirit
	[7861] = 38784, -- Scroll of Enchant Cloak - Lesser Fire Resistance
	[7863] = 38785, -- Scroll of Enchant Boots - Minor Stamina
	[7867] = 38786, -- Scroll of Enchant Boots - Minor Agility
	[13378] = 38787, -- Scroll of Enchant Shield - Minor Stamina
	[13380] = 38788, -- Scroll of Enchant 2H Weapon - Lesser Spirit
	[13419] = 38789, -- Scroll of Enchant Cloak - Minor Agility
	[13421] = 38790, -- Scroll of Enchant Cloak - Lesser Protection
	[13464] = 38791, -- Scroll of Enchant Shield - Lesser Protection
	[13485] = 38792, -- Scroll of Enchant Shield - Lesser Spirit
	[13501] = 38793, -- Scroll of Enchant Bracer - Lesser Stamina
	[13503] = 38794, -- Scroll of Enchant Weapon - Lesser Striking
	[13522] = 38795, -- Scroll of Enchant Cloak - Lesser Shadow Resistance
	[13529] = 38796, -- Scroll of Enchant 2H Weapon - Lesser Impact
	[13536] = 38797, -- Scroll of Enchant Bracer - Lesser Strength
	[13538] = 38798, -- Scroll of Enchant Chest - Lesser Absorption
	[13607] = 38799, -- Scroll of Enchant Chest - Mana
	[13612] = 38800, -- Scroll of Enchant Gloves - Mining
	[13617] = 38801, -- Scroll of Enchant Gloves - Herbalism
	[13620] = 38802, -- Scroll of Enchant Gloves - Fishing
	[13622] = 38803, -- Scroll of Enchant Bracer - Lesser Intellect
	[13626] = 38804, -- Scroll of Enchant Chest - Minor Stats
	[13631] = 38805, -- Scroll of Enchant Shield - Lesser Stamina
	[13635] = 38806, -- Scroll of Enchant Cloak - Defense
	[13637] = 38807, -- Scroll of Enchant Boots - Lesser Agility
	[13640] = 38808, -- Scroll of Enchant Chest - Greater Health
	[13642] = 38809, -- Scroll of Enchant Bracer - Spirit
	[13644] = 38810, -- Scroll of Enchant Boots - Lesser Stamina
	[13646] = 38811, -- Scroll of Enchant Bracer - Lesser Deflection
	[13648] = 38812, -- Scroll of Enchant Bracer - Stamina
	[13653] = 38813, -- Scroll of Enchant Weapon - Lesser Beastslayer
	[13655] = 38814, -- Scroll of Enchant Weapon - Lesser Elemental Slayer
	[13657] = 38815, -- Scroll of Enchant Cloak - Fire Resistance
	[13659] = 38816, -- Scroll of Enchant Shield - Spirit
	[13661] = 38817, -- Scroll of Enchant Bracer - Strength
	[13663] = 38818, -- Scroll of Enchant Chest - Greater Mana
	[13687] = 38819, -- Scroll of Enchant Boots - Lesser Spirit
	[13689] = 38820, -- Scroll of Enchant Shield - Lesser Block
	[13693] = 38821, -- Scroll of Enchant Weapon - Striking
	[13695] = 38822, -- Scroll of Enchant 2H Weapon - Impact
	[13698] = 38823, -- Scroll of Enchant Gloves - Skinning
	[13700] = 38824, -- Scroll of Enchant Chest - Lesser Stats
	[13746] = 38825, -- Scroll of Enchant Cloak - Greater Defense
	[13794] = 38826, -- Scroll of Enchant Cloak - Resistance
	[13815] = 38827, -- Scroll of Enchant Gloves - Agility
	[13817] = 38828, -- Scroll of Enchant Shield - Stamina
	[13822] = 38829, -- Scroll of Enchant Bracer - Intellect
	[13836] = 38830, -- Scroll of Enchant Boots - Stamina
	[13841] = 38831, -- Scroll of Enchant Gloves - Advanced Mining
	[13846] = 38832, -- Scroll of Enchant Bracer - Greater Spirit
	[13858] = 38833, -- Scroll of Enchant Chest - Superior Health
	[13868] = 38834, -- Scroll of Enchant Gloves - Advanced Herbalism
	[13882] = 38835, -- Scroll of Enchant Cloak - Lesser Agility
	[13887] = 38836, -- Scroll of Enchant Gloves - Strength
	[13890] = 38837, -- Scroll of Enchant Boots - Minor Speed
	[13898] = 38838, -- Scroll of Enchant Weapon - Fiery Weapon
	[13905] = 38839, -- Scroll of Enchant Shield - Greater Spirit
	[13915] = 38840, -- Scroll of Enchant Weapon - Demonslaying
	[13917] = 38841, -- Scroll of Enchant Chest - Superior Mana
	[13931] = 38842, -- Scroll of Enchant Bracer - Deflection
	[13933] = 38843, -- Scroll of Enchant Shield - Frost Resistance
	[13935] = 38844, -- Scroll of Enchant Boots - Agility
	[13937] = 38845, -- Scroll of Enchant 2H Weapon - Greater Impact
	[13939] = 38846, -- Scroll of Enchant Bracer - Greater Strength
	[13941] = 38847, -- Scroll of Enchant Chest - Stats
	[13943] = 38848, -- Scroll of Enchant Weapon - Greater Striking
	[13945] = 38849, -- Scroll of Enchant Bracer - Greater Stamina
	[13947] = 38850, -- Scroll of Enchant Gloves - Riding Skill
	[13948] = 38851, -- Scroll of Enchant Gloves - Minor Haste
	[20008] = 38852, -- Scroll of Enchant Bracer - Greater Intellect
	[20009] = 38853, -- Scroll of Enchant Bracer - Superior Spirit
	[20010] = 38854, -- Scroll of Enchant Bracer - Superior Strength
	[20011] = 38855, -- Scroll of Enchant Bracer - Superior Stamina
	[20012] = 38856, -- Scroll of Enchant Gloves - Greater Agility
	[20013] = 38857, -- Scroll of Enchant Gloves - Greater Strength
	[20014] = 38858, -- Scroll of Enchant Cloak - Greater Resistance
	[20015] = 38859, -- Scroll of Enchant Cloak - Superior Defense
	[20016] = 38860, -- Scroll of Enchant Shield - Vitality
	[20017] = 38861, -- Scroll of Enchant Shield - Greater Stamina
	[20020] = 38862, -- Scroll of Enchant Boots - Greater Stamina
	[20023] = 38863, -- Scroll of Enchant Boots - Greater Agility
	[20024] = 38864, -- Scroll of Enchant Boots - Spirit
	[20025] = 38865, -- Scroll of Enchant Chest - Greater Stats
	[20026] = 38866, -- Scroll of Enchant Chest - Major Health
	[20028] = 38867, -- Scroll of Enchant Chest - Major Mana
	[20029] = 38868, -- Scroll of Enchant Weapon - Icy Chill
	[20030] = 38869, -- Scroll of Enchant 2H Weapon - Superior Impact
	[20031] = 38870, -- Scroll of Enchant Weapon - Superior Striking
	[20032] = 38871, -- Scroll of Enchant Weapon - Lifestealing
	[20033] = 38872, -- Scroll of Enchant Weapon - Unholy Weapon
	[20034] = 38873, -- Scroll of Enchant Weapon - Crusader
	[20035] = 38874, -- Scroll of Enchant 2H Weapon - Major Spirit
	[20036] = 38875, -- Scroll of Enchant 2H Weapon - Major Intellect
	[21931] = 38876, -- Scroll of Enchant Weapon - Winter's Might
	[22749] = 38877, -- Scroll of Enchant Weapon - Spellpower
	[22750] = 38878, -- Scroll of Enchant Weapon - Healing Power
	[23799] = 38879, -- Scroll of Enchant Weapon - Strength
	[23800] = 38880, -- Scroll of Enchant Weapon - Agility
	[23801] = 38881, -- Scroll of Enchant Bracer - Mana Regeneration
	[23802] = 38882, -- Scroll of Enchant Bracer - Healing Power
	[23803] = 38883, -- Scroll of Enchant Weapon - Mighty Spirit
	[23804] = 38884, -- Scroll of Enchant Weapon - Mighty Intellect
	[25072] = 38885, -- Scroll of Enchant Gloves - Threat
	[25073] = 38886, -- Scroll of Enchant Gloves - Shadow Power
	[25074] = 38887, -- Scroll of Enchant Gloves - Frost Power
	[25078] = 38888, -- Scroll of Enchant Gloves - Fire Power
	[25079] = 38889, -- Scroll of Enchant Gloves - Healing Power
	[25080] = 38890, -- Scroll of Enchant Gloves - Superior Agility
	[25081] = 38891, -- Scroll of Enchant Cloak - Greater Fire Resistance
	[25082] = 38892, -- Scroll of Enchant Cloak - Greater Nature Resistance
	[25083] = 38893, -- Scroll of Enchant Cloak - Stealth
	[25084] = 38894, -- Scroll of Enchant Cloak - Subtlety
	[25086] = 38895, -- Scroll of Enchant Cloak - Dodge
	[27837] = 38896, -- Scroll of Enchant 2H Weapon - Agility
	[27899] = 38897, -- Scroll of Enchant Bracer - Brawn
	[27905] = 38898, -- Scroll of Enchant Bracer - Stats
	[27906] = 38899, -- Scroll of Enchant Bracer - Major Defense
	[27911] = 38900, -- Scroll of Enchant Bracer - Superior Healing
	[27913] = 38901, -- Scroll of Enchant Bracer - Restore Mana Prime
	[27914] = 38902, -- Scroll of Enchant Bracer - Fortitude
	[27917] = 38903, -- Scroll of Enchant Bracer - Spellpower
	[27944] = 38904, -- Scroll of Enchant Shield - Tough Shield
	[27945] = 38905, -- Scroll of Enchant Shield - Intellect
	[27946] = 38906, -- Scroll of Enchant Shield - Shield Block
	[27947] = 38907, -- Scroll of Enchant Shield - Resistance
	[27948] = 38908, -- Scroll of Enchant Boots - Vitality
	[27950] = 38909, -- Scroll of Enchant Boots - Fortitude
	[27951] = 37603, -- Scroll of Enchant Boots - Dexterity
	[27954] = 38910, -- Scroll of Enchant Boots - Surefooted
	[27957] = 38911, -- Scroll of Enchant Chest - Exceptional Health
	[27958] = 38912, -- Scroll of Enchant Chest - Exceptional Mana
	[27960] = 38913, -- Scroll of Enchant Chest - Exceptional Stats
	[27961] = 38914, -- Scroll of Enchant Cloak - Major Armor
	[27962] = 38915, -- Scroll of Enchant Cloak - Major Resistance
	[27967] = 38917, -- Scroll of Enchant Weapon - Major Striking
	[27968] = 38918, -- Scroll of Enchant Weapon - Major Intellect
	[27971] = 38919, -- Scroll of Enchant 2H Weapon - Savagery
	[27972] = 38920, -- Scroll of Enchant Weapon - Potency
	[27975] = 38921, -- Scroll of Enchant Weapon - Major Spellpower
	[27977] = 38922, -- Scroll of Enchant 2H Weapon - Major Agility
	[27981] = 38923, -- Scroll of Enchant Weapon - Sunfire
	[27982] = 38924, -- Scroll of Enchant Weapon - Soulfrost
	[27984] = 38925, -- Scroll of Enchant Weapon - Mongoose
	[28003] = 38926, -- Scroll of Enchant Weapon - Spellsurge
	[28004] = 38927, -- Scroll of Enchant Weapon - Battlemaster
	[33990] = 38928, -- Scroll of Enchant Chest - Major Spirit
	[33991] = 38929, -- Scroll of Enchant Chest - Restore Mana Prime
	[33992] = 38930, -- Scroll of Enchant Chest - Major Resilience
	[33993] = 38931, -- Scroll of Enchant Gloves - Blasting
	[33994] = 38932, -- Scroll of Enchant Gloves - Precise Strikes
	[33995] = 38933, -- Scroll of Enchant Gloves - Major Strength
	[33996] = 38934, -- Scroll of Enchant Gloves - Assault
	[33997] = 38935, -- Scroll of Enchant Gloves - Major Spellpower
	[33999] = 38936, -- Scroll of Enchant Gloves - Major Healing
	[34001] = 38937, -- Scroll of Enchant Bracer - Major Intellect
	[34002] = 38938, -- Scroll of Enchant Bracer - Assault
	[34003] = 38939, -- Scroll of Enchant Cloak - Spell Penetration
	[34004] = 38940, -- Scroll of Enchant Cloak - Greater Agility
	[34005] = 38941, -- Scroll of Enchant Cloak - Greater Arcane Resistance
	[34006] = 38942, -- Scroll of Enchant Cloak - Greater Shadow Resistance
	[34007] = 38943, -- Scroll of Enchant Boots - Cat's Swiftness
	[34008] = 38944, -- Scroll of Enchant Boots - Boar's Speed
	[34009] = 38945, -- Scroll of Enchant Shield - Major Stamina
	[34010] = 38946, -- Scroll of Enchant Weapon - Major Healing
	[42620] = 38947, -- Scroll of Enchant Weapon - Greater Agility
	[42974] = 38948, -- Scroll of Enchant Weapon - Executioner
	[44383] = 38949, -- Scroll of Enchant Shield - Resilience
	[44483] = 38950, -- Scroll of Enchant Cloak - Superior Frost Resistance
	[44484] = 38951, -- Scroll of Enchant Gloves - Expertise
	[44488] = 38953, -- Scroll of Enchant Gloves - Precision
	[44489] = 38954, -- Scroll of Enchant Shield - Defense
	[44492] = 38955, -- Scroll of Enchant Chest - Mighty Health
	[44494] = 38956, -- Scroll of Enchant Cloak - Superior Nature Resistance
	[44500] = 38959, -- Scroll of Enchant Cloak - Superior Agility
	[44506] = 38960, -- Scroll of Enchant Gloves - Gatherer
	[44508] = 38961, -- Scroll of Enchant Boots - Greater Spirit
	[44509] = 38962, -- Scroll of Enchant Chest - Greater Mana Restoration
	[44510] = 38963, -- Scroll of Enchant Weapon - Exceptional Spirit
	[44513] = 38964, -- Scroll of Enchant Gloves - Greater Assault
	[44524] = 38965, -- Scroll of Enchant Weapon - Icebreaker
	[44528] = 38966, -- Scroll of Enchant Boots - Greater Fortitude
	[44529] = 38967, -- Scroll of Enchant Gloves - Major Agility
	[44555] = 38968, -- Scroll of Enchant Bracers - Exceptional Intellect
	[44556] = 38969, -- Scroll of Enchant Cloak - Superior Fire Resistance
	[44575] = 44815, -- Scroll of Enchant Bracers - Greater Assault
	[44576] = 38972, -- Scroll of Enchant Weapon - Lifeward
	[44582] = 38973, -- Scroll of Enchant Cloak - Spell Piercing
	[44584] = 38974, -- Scroll of Enchant Boots - Greater Vitality
	[44588] = 38975, -- Scroll of Enchant Chest - Exceptional Resilience
	[44589] = 38976, -- Scroll of Enchant Boots - Superior Agility
	[44590] = 38977, -- Scroll of Enchant Cloak - Superior Shadow Resistance
	[44591] = 38978, -- Scroll of Enchant Cloak - Titanweave
	[44592] = 38979, -- Scroll of Enchant Gloves - Exceptional Spellpower
	[44593] = 38980, -- Scroll of Enchant Bracers - Major Spirit
	[44595] = 38981, -- Scroll of Enchant 2H Weapon - Scourgebane
	[44596] = 38982, -- Scroll of Enchant Cloak - Superior Arcane Resistance
	[44598] = 38984, -- Scroll of Enchant Bracer - Expertise
	[44612] = 38985, -- Scroll of Enchant Gloves - Greater Blasting
	[44616] = 38987, -- Scroll of Enchant Bracers - Greater Stats
	[44621] = 38988, -- Scroll of Enchant Weapon - Giant Slayer
	[44623] = 38989, -- Scroll of Enchant Chest - Super Stats
	[44625] = 38990, -- Scroll of Enchant Gloves - Armsman
	[44629] = 38991, -- Scroll of Enchant Weapon - Exceptional Spellpower
	[44630] = 38992, -- Scroll of Enchant 2H Weapon - Greater Savagery
	[44631] = 38993, -- Scroll of Enchant Cloak - Shadow Armor
	[44633] = 38995, -- Scroll of Enchant Weapon - Exceptional Agility
	[44635] = 38997, -- Scroll of Enchant Bracers - Greater Spellpower
	[46578] = 38998, -- Scroll of Enchant Weapon - Deathfrost
	[46594] = 38999, -- Scroll of Enchant Chest - Defense
	[47051] = 39000, -- Scroll of Enchant Cloak - Steelweave
	[47672] = 39001, -- Scroll of Enchant Cloak - Mighty Armor
	[47766] = 39002, -- Scroll of Enchant Chest - Greater Defense
	[47898] = 39003, -- Scroll of Enchant Cloak - Greater Speed
	[47899] = 39004, -- Scroll of Enchant Cloak - Wisdom
	[47900] = 39005, -- Scroll of Enchant Chest - Super Health
	[47901] = 39006, -- Scroll of Enchant Boots - Tuskarr's Vitality
	[59619] = 44497, -- Scroll of Enchant Weapon - Accuracy
	[59621] = 44493, -- Scroll of Enchant Weapon - Berserking
	[59625] = 43987, -- Scroll of Enchant Weapon - Black Magic
	[60606] = 44449, -- Scroll of Enchant Boots - Assault
	[60609] = 44456, -- Scroll of Enchant Cloak - Speed
	[60616] = 38971, -- Scroll of Enchant Bracers - Striking
	[60621] = 44453, -- Scroll of Enchant Weapon - Greater Potency
	[60623] = 38986, -- Scroll of Enchant Boots - Icewalker
	[60653] = 44455, -- Scroll of Enchant Shield - Greater Intellect
	[60663] = 44457, -- Scroll of Enchant Cloak - Major Agility
	[60668] = 44458, -- Scroll of Enchant Gloves - Crusher
	[60691] = 44463, -- Scroll of Enchant 2H Weapon - Massacre
	[60692] = 44465, -- Scroll of Enchant Chest - Powerful Stats
	[60707] = 44466, -- Scroll of Enchant Weapon - Superior Potency
	[60714] = 44467, -- Scroll of Enchant Weapon - Mighty Spellpower
	[60763] = 44469, -- Scroll of Enchant Boots - Greater Assault
	[60767] = 44470, -- Scroll of Enchant Bracer - Superior Spellpower
	[62256] = 44947, -- Scroll of Enchant Bracer - Major Stamina
	[62257] = 44946, -- Scroll of Enchant Weapon - Titanguard
	[62948] = 45056, -- Scroll of Enchant Staff - Greater Spellpower
	[62959] = 45060, -- Scroll of Enchant Staff - Spellpower
	[63746] = 45628, -- Scroll of Enchant Boots - Lesser Accuracy
	[64441] = 46026, -- Scroll of Enchant Weapon - Blade Ward
	[64579] = 46098, -- Scroll of Enchant Weapon - Blood Draining
	[71692] = 50816, -- Scroll of Enchant Gloves - Angler
	[968676] = 967760, -- Scroll of Enchant Weapon - Unstoppable Assault I
	[968677] = 967761, -- Scroll of Enchant Weapon - Unstoppable Assault II
	[968678] = 967762, -- Scroll of Enchant Weapon - Unstoppable Assault III
	[968679] = 967763, -- Scroll of Enchant Weapon - Lucid Assault I
	[968680] = 967764, -- Scroll of Enchant Weapon - Lucid Assault II
	[968681] = 967765, -- Scroll of Enchant Weapon - Lucid Assault III
	[968682] = 967766, -- Scroll of Enchant Weapon - Spellbinder's Rage I
	[968683] = 967767, -- Scroll of Enchant Weapon - Spellbinder's Rage II
	[968684] = 967768, -- Scroll of Enchant Weapon - Spellbinder's Rage III
	[968685] = 967769, -- Scroll of Enchant Weapon - Ninja's Focus I
	[968686] = 967770, -- Scroll of Enchant Weapon - Ninja's Focus II
	[968687] = 967771, -- Scroll of Enchant Weapon - Ninja's Focus III
	[968688] = 967772, -- Scroll of Enchant Weapon - Grovewarden's Blessing I
	[968689] = 967773, -- Scroll of Enchant Weapon - Grovewarden's Blessing II
	[968690] = 967774, -- Scroll of Enchant Weapon - Grovewarden's Blessing III
	[968691] = 967775, -- Scroll of Enchant Weapon - Viscious Assault I
	[968692] = 967776, -- Scroll of Enchant Weapon - Viscious Assault II
	[968693] = 967777, -- Scroll of Enchant Weapon - Viscious Assault III
	[968694] = 967778, -- Scroll of Enchant Weapon - Arcane Dexterity I
	[968695] = 967779, -- Scroll of Enchant Weapon - Arcane Dexterity II
	[968696] = 967780, -- Scroll of Enchant Weapon - Arcane Dexterity III
	[968697] = 967781, -- Scroll of Enchant Weapon - Arcane Artillery I
	[968698] = 967782, -- Scroll of Enchant Weapon - Arcane Artillery II
	[968699] = 967783, -- Scroll of Enchant Weapon - Arcane Artillery III
	[968700] = 967784, -- Scroll of Enchant Weapon - Arcane Precision I
	[968701] = 967785, -- Scroll of Enchant Weapon - Arcane Precision II
	[968702] = 967786, -- Scroll of Enchant Weapon - Arcane Precision III
	[968770] = 967787, -- Scroll of Enchant Weapon - Crusader II
	[968771] = 967788, -- Scroll of Enchant Weapon - Crusader III
	[1968677] = 1204125, -- Scroll of Enchant Weapon - Void Assault
	[1968678] = 1204126, -- Scroll of Enchant Weapon - Overpowering Void Assault
	[1968680] = 1204127, -- Scroll of Enchant Weapon - Dread Assault
	[1968681] = 1204128, -- Scroll of Enchant Weapon - Overpowering Dread Assault
	[1968683] = 1204129, -- Scroll of Enchant Weapon - Twisted Evoker
	[1968684] = 1204130, -- Scroll of Enchant Weapon - Overpowering Twisted Evoker
	[1968686] = 1204131, -- Scroll of Enchant Weapon - Twisted Assault
	[1968687] = 1204132, -- Scroll of Enchant Weapon - Overpowering Twisted Assault
	[1968689] = 1204133, -- Scroll of Enchant Weapon - Twisted Channeler
	[1968690] = 1204134, -- Scroll of Enchant Weapon - Overpowering Twisted Channeler
	[1968692] = 1204135, -- Scroll of Enchant Weapon - Dread Omen Strikes
	[1968693] = 1204136, -- Scroll of Enchant Weapon - Overpowering Dread Omen Strikes
	[1968695] = 1204137, -- Scroll of Enchant Weapon - Void Flows
	[1968696] = 1204138, -- Scroll of Enchant Weapon - Overpowering Void Flows
	[1968698] = 1204139, -- Scroll of Enchant Weapon - Void Blasting
	[1968699] = 1204140, -- Scroll of Enchant Weapon - Overpowering Void Blasting
	[1968701] = 1204141, -- Scroll of Enchant Weapon - Dread Precision
	[1968702] = 1204142, -- Scroll of Enchant Weapon - Overpowering Dread Precision
	[1968770] = 1204143, -- Scroll of Enchant Weapon - Twisted Crusader
	[1968771] = 1204144, -- Scroll of Enchant Weapon - Overpowering Twisted Crusader
}
