#Smeltery
mods.tconstruct.Smeltery.addMelting(<exnihilo:osmium_gravel>,   <liquid:osmium.molten> * 288, 700); # Gravel
mods.tconstruct.Smeltery.addMelting(<exnihilo:osmium_sand>,     <liquid:osmium.molten> * 288, 700); # Sand
mods.tconstruct.Smeltery.addMelting(<exnihilo:osmium_dust>,     <liquid:osmium.molten> * 288, 700); # Dust 
mods.tconstruct.Smeltery.addMelting(<aobd:oreGravelTitanium>,       <liquid:titanium> * 288, 700); # Gravel
mods.tconstruct.Smeltery.addMelting(<aobd:oreNetherGravelTitanium>, <liquid:titanium> * 288, 700); # Gravel
mods.tconstruct.Smeltery.addMelting(<aobd:oreSandTitanium>,         <liquid:titanium> * 288, 700); # Sand
mods.tconstruct.Smeltery.addMelting(<aobd:oreDustTitanium>,         <liquid:titanium> * 288, 700); # Dust
mods.tconstruct.Smeltery.addMelting(<aobd:oreGravelTungsten>,       <liquid:tungsten> * 288, 700); # Gravel
mods.tconstruct.Smeltery.addMelting(<aobd:oreNetherGravelTungsten>, <liquid:tungsten> * 288, 700); # Gravel
mods.tconstruct.Smeltery.addMelting(<aobd:oreSandTungsten>,         <liquid:tungsten> * 288, 700); # Sand
mods.tconstruct.Smeltery.addMelting(<aobd:oreDustTungsten>,         <liquid:tungsten> * 288, 700); # Dust
mods.tconstruct.Smeltery.addMelting(<exastrisrebirth:ender_draconiumdust_gravel>,   <liquid:draconium> * 288, 700); # Gravel
mods.tconstruct.Smeltery.addMelting(<exastrisrebirth:draconiumdust_sand>,           <liquid:draconium> * 288, 700); # Sand
mods.tconstruct.Smeltery.addMelting(<exastrisrebirth:draconiumdust_dust>,           <liquid:draconium> * 288, 700); # Dust
mods.tconstruct.Smeltery.addMelting(<Artifacts:spike_block>,   <liquid:iron.molten> * 144, 700);
mods.tconstruct.Smeltery.addMelting(<ExtraUtilities:spike_base>,   <liquid:iron.molten> * 288, 700);
mods.tconstruct.Smeltery.addMelting(<ExtraUtilities:spike_base_gold>,   <liquid:gold.molten> * 288, 400);
mods.tconstruct.Smeltery.addMelting(<Magneticraft:item.ingotZinc>,   <liquid:zinc.molten> * 144, 400, <Magneticraft:block_zinc>);
mods.tconstruct.Smeltery.addMelting(<Magneticraft:item.dust:12>,   <liquid:zinc.molten> * 144, 400, <Magneticraft:block_zinc>);
mods.tconstruct.Smeltery.addMelting(<Magneticraft:item.ingotBrass>,   <liquid:brass.molten> * 144, 400, <Magneticraft:block_brass>);
mods.tconstruct.Smeltery.addMelting(<Magneticraft:item.dustBrass>,   <liquid:brass.molten> * 144, 400, <Magneticraft:block_brass>);
mods.tconstruct.Smeltery.addMelting(<ExtraUtilities:plant/ender_lilly>,   <liquid:ender> * 4000, 900, <TConstruct:MetalBlock:10>);
mods.tconstruct.Smeltery.addMelting(<Magneticraft:block_brass>,   <liquid:brass.molten> * 1296, 1000, <Magneticraft:block_brass>);
mods.tconstruct.Smeltery.addMelting(<Magneticraft:block_zinc>,   <liquid:zinc.molten> * 1296, 1000, <Magneticraft:block_zinc>);
mods.tconstruct.Smeltery.addMelting(<ExtraPlanets:tile.neptune:7>,   <liquid:zinc.molten> * 1296, 1000, <ExtraPlanets:tile.neptune:7>);
mods.tconstruct.Smeltery.addMelting(<ExtraPlanets:tile.pluto:7>,   <liquid:tungsten> * 1296, 1000, <ExtraPlanets:tile.pluto:7>);

#casting
mods.tconstruct.Casting.removeBasinRecipe(<BigReactors:BRMetalBlock>);
mods.tconstruct.Casting.removeTableRecipe(<BigReactors:BRIngot>);
mods.tconstruct.Casting.addTableRecipe(<BigReactors:BRIngot>, <liquid:yellorium> * 144, <TConstruct:metalPattern>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<EnderIO:itemAlloy:6>, <liquid:dark.steel.molten> * 144, <TConstruct:metalPattern>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<EnderIO:blockIngotStorage:6>, <liquid:dark.steel.molten> * 1296, null, true, 20);
mods.tconstruct.Casting.addBasinRecipe(<BigReactors:BRMetalBlock>, <liquid:yellorium> * 1296, null, false, 20);
mods.tconstruct.Casting.addTableRecipe(<Magneticraft:item.ingotZinc>, <liquid:zinc.molten> * 144, <TConstruct:metalPattern>, false, 20);
mods.tconstruct.Casting.addTableRecipe(<Magneticraft:item.ingotBrass>, <liquid:brass.molten> * 144, <TConstruct:metalPattern>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<Magneticraft:block_brass>, <liquid:brass.molten> * 1296, null, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<Magneticraft:block_zinc>, <liquid:zinc.molten> * 1296, null, false, 20);

#shapeless
recipes.addShapeless(<aobd:oreBrokenTitanium> * 4,          [<aobd:oreGravelTitanium>]);        # Gravel
recipes.addShapeless(<aobd:oreNetherBrokenTitanium> * 4,    [<aobd:oreNetherGravelTitanium>]);  # Gravel
recipes.addShapeless(<aobd:oreCrushedTitanium> * 4,         [<aobd:oreSandTitanium>]);          # Sand
recipes.addShapeless(<aobd:orePowderedTitanium> * 4,        [<aobd:oreDustTitanium>]);          # Dust
recipes.addShapeless(<exnihilo:exnihilo.osmium_broken> * 4,     [<exnihilo:osmium_gravel>]);    # Gravel
recipes.addShapeless(<exnihilo:exnihilo.osmium_crushed> * 4,    [<exnihilo:osmium_sand>]);      # Sand
recipes.addShapeless(<exnihilo:exnihilo.osmium_powdered> * 4,   [<exnihilo:osmium_dust>]);      # Dust
recipes.addShapeless(<aobd:oreBrokenTungsten> * 4,          [<aobd:oreGravelTungsten>]);        # Gravel
recipes.addShapeless(<aobd:oreNetherBrokenTungsten> * 4,    [<aobd:oreNetherGravelTungsten>]);  # Gravel
recipes.addShapeless(<aobd:oreCrushedTungsten> * 4,         [<aobd:oreSandTungsten>]);          # Sand
recipes.addShapeless(<aobd:orePowderedTungsten> * 4,        [<aobd:oreDustTungsten>]);          # Dust

#stats
mods.tconstruct.ToolStats.setBowDrawspeed("Lumium", 10);
mods.tconstruct.ToolStats.setBowFlightSpeed("Lumium", 6.5);
mods.tconstruct.ToolStats.setDamage("Refined Glowstone", 24);
mods.tconstruct.ToolStats.setDamage("avaritia_infinitymetal", 100);
mods.tconstruct.ToolStats.setBowDrawspeed("avaritia_infinitymetal", 10);

#alloy
mods.tconstruct.Smeltery.addAlloy(<liquid:constantan.molten> * 288, [<liquid:nickel.molten> * 144, <liquid:copper.molten> * 144]);

#fuel
mods.tconstruct.Smeltery.addFuel(<liquid:fire_water>, 60000, 64);

#removed
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:132>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:139>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:129>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:134>);

#Credit For Unstable parts goes to the FTB Team.
#Unstable parts
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:hatchetHead:314>, <liquid:molten.unstableingots> * 144, <TConstruct:metalPattern:4>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<ExtraUtilities:unstableingot>.withTag({stable: 1 as byte}), <liquid:molten.unstableingots> * 144, <TConstruct:metalPattern:0>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<ExtraUtilities:unstableingot:1>, <liquid:molten.unstableingots> * 16, <TConstruct:metalPattern:27>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:pickaxeHead:314>, <liquid:molten.unstableingots> * 144, <TConstruct:metalPattern:2>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:shovelHead:314>, <liquid:molten.unstableingots> * 144, <TConstruct:metalPattern:3>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:toughBinding:314>, <liquid:molten.unstableingots> * 144, <TConstruct:metalPattern:15>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:toughRod:314>, <liquid:molten.unstableingots> * 432, <TConstruct:metalPattern:14>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:heavyPlate:314>, <liquid:molten.unstableingots> * 1152, <TConstruct:metalPattern:16>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:swordBlade:314>, <liquid:molten.unstableingots> * 144, <TConstruct:metalPattern:5>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:wideGuard:314>, <liquid:molten.unstableingots> * 72, <TConstruct:metalPattern:6>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:handGuard:314>, <liquid:molten.unstableingots> * 72, <TConstruct:metalPattern:7>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:crossbar:314>, <liquid:molten.unstableingots> * 72, <TConstruct:metalPattern:8>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:knifeBlade:314>, <liquid:molten.unstableingots> * 72, <TConstruct:metalPattern:12>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:frypanHead:314>, <liquid:molten.unstableingots> * 144, <TConstruct:metalPattern:10>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:signHead:314>, <liquid:molten.unstableingots> * 144, <TConstruct:metalPattern:11>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:chiselHead:314>, <liquid:molten.unstableingots> * 72, <TConstruct:metalPattern:13>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:broadAxeHead:314>, <liquid:molten.unstableingots> * 1152, <TConstruct:metalPattern:17>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:excavatorHead:314>, <liquid:molten.unstableingots> * 1152, <TConstruct:metalPattern:19>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:largeSwordBlade:314>, <liquid:molten.unstableingots> * 1152, <TConstruct:metalPattern:20>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:hammerHead:314>, <liquid:molten.unstableingots> * 1152, <TConstruct:metalPattern:21>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:arrowhead:314>, <liquid:molten.unstableingots> * 144, <TConstruct:metalPattern:25>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:ShurikenPart:314>, <liquid:molten.unstableingots> * 72, <TConstruct:Cast>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:BowLimbPart:314>, <liquid:molten.unstableingots> * 576, <TConstruct:Cast:3>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:CrossbowLimbPart:314>, <liquid:molten.unstableingots> * 216, <TConstruct:Cast:3>, false, 20);
mods.tconstruct.Casting.addBasinRecipe(<TConstruct:CrossbowBodyPart:314>, <liquid:molten.unstableingots> * 720, <TConstruct:Cast:2>, false, 20);