import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import crafttweaker.game.IGame;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.MetalPress;

print("Immersive engineering changes");

#Engineer's Hammer
recipes.removeShaped(<immersiveengineering:tool>);
recipes.addShaped("CTImmersiveTool", <immersiveengineering:tool>,
[[null, <minecraft:iron_ingot>, <thermalfoundation:material:24>], 
 [null, <minecraft:stick>, <minecraft:iron_ingot>],
 [<minecraft:stick>, null, null]]);

 #Coke Brick
recipes.removeShaped(<immersiveengineering:stone_decoration>);
recipes.addShaped("CtRefined",<immersiveengineering:stone_decoration>,
[[<minecraft:clay_ball>,<minecraft:brick>,<minecraft:clay_ball>],
[<minecraft:brick>,<tconstruct:seared>,<minecraft:brick>],
[<minecraft:clay_ball>,<minecraft:brick>,<minecraft:clay_ball>]]);

#Charcoal from coke oven
mods.immersiveengineering.CokeOven.removeRecipe(<minecraft:coal:1>);

#plates
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:manadiamondplate>, <botania:manaresource:2>, <immersiveengineering:mold>,1000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:coldironplate>, <contenttweaker:coldironingot>, <immersiveengineering:mold>,1000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:quartzplate>, <contenttweaker:quartzingot>, <immersiveengineering:mold>,1000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:manasteelplate>, <botania:manaresource>, <immersiveengineering:mold>,1000);

#cloche
recipes.remove(<immersiveengineering:metal_device1:13>);
recipes.addShaped("CTcloche",<immersiveengineering:metal_device1:13>,
[[<actuallyadditions:block_greenhouse_glass>,<immersiveengineering:material:26>, <actuallyadditions:block_greenhouse_glass>],
[<actuallyadditions:block_greenhouse_glass>, null,<actuallyadditions:block_greenhouse_glass>],
[<immersiveengineering:treated_wood>,<immersiveengineering:material:9>, <immersiveengineering:treated_wood>]]);

#scaffolding
recipes.remove(<immersiveengineering:metal_decoration1:1>);
recipes.addShaped("CTScaffolding",<immersiveengineering:metal_decoration1:1> * 4,
[[<ic2:itemmisc:53>,<ic2:itemmisc:53>, <ic2:itemmisc:53>],
[null, <immersiveengineering:material:1>,null],
[<immersiveengineering:material:1>,null, <immersiveengineering:material:1>]]);

#heavy block
recipes.remove(<immersiveengineering:metal_decoration0:5>);
recipes.addShaped("CTHeavyBlock",<immersiveengineering:metal_decoration0:5>,
[[<ic2:itemmisc:53>,<immersiveengineering:material:8>, <ic2:itemmisc:53>],
[<minecraft:piston>, <ore:ingotElectrum>,<minecraft:piston>],
[<ic2:itemmisc:53>,<immersiveengineering:material:8>, <ic2:itemmisc:53>]]);

#light block
recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped("CTLightBlock",<immersiveengineering:metal_decoration0:4>,
[[<ore:ingotSteel>,<immersiveengineering:material:9>, <ore:ingotSteel>],
[<ore:ingotCopper>, <ore:ingotCopper>,<ore:ingotCopper>],
[<ore:ingotSteel>,<immersiveengineering:material:9>, <ore:ingotSteel>]]);

#iron component
recipes.remove(<immersiveengineering:material:8>);
recipes.addShaped("CTIronComp",<immersiveengineering:material:8>,
[[<ic2c_extras:refinedironplate>,null, <ic2c_extras:refinedironplate>],
[null, <ore:ingotCopper>,null],
[<ic2c_extras:refinedironplate>,null, <ic2c_extras:refinedironplate>]]);


#mold recipes
recipes.addShaped("CTwiremold", <immersiveengineering:mold:4>, [[null, <ic2:itemmisc:53>, null],[<ic2:itemmisc:53>, <immersiveengineering:material:20>, <ic2:itemmisc:53>], [null, <ic2:itemmisc:53>, null]]);
recipes.addShaped("CTgearmold", <immersiveengineering:mold:1>, [[null, <ic2:itemmisc:53>, null],[<ic2:itemmisc:53>, <thermalfoundation:material:291>, <ic2:itemmisc:53>], [null, <ic2:itemmisc:53>, null]]);
recipes.addShaped("CTplatemold", <immersiveengineering:mold>, [[null, <ic2:itemmisc:53>, null],[<ic2:itemmisc:53>, <thermalfoundation:material:355>, <ic2:itemmisc:53>], [null, <ic2:itemmisc:53>, null]]);

#improved blast brick
recipes.remove(<immersiveengineering:stone_decoration:2>);
recipes.addShaped("CTimprovedblastbrick", <immersiveengineering:stone_decoration:2>, 
[[<ic2:itemmisc:11>, <contenttweaker:coldironplate>, <ic2:itemmisc:11>],
[<actuallyadditions:item_misc:5>, <immersiveengineering:stone_decoration:1>, <actuallyadditions:item_misc:5>],
[<ic2:itemmisc:11>, <actuallyadditions:item_misc:5>, <ic2:itemmisc:11>]]);

#reg blast brick
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped("CTBbrick", <immersiveengineering:stone_decoration:1> * 3, 
[[<minecraft:brick>, <ceramics:unfired_clay:5>, <minecraft:brick>],
[<minecraft:brick>, <thermalfoundation:material:163>, <minecraft:brick>], 
[<minecraft:brick>, <ceramics:unfired_clay:5>, <minecraft:brick>]]);

#unrefined hot steel
mods.immersiveengineering.BlastFurnace.addRecipe(<contenttweaker:unrefinedhotsteel>, <contenttweaker:quartzingot>, 1000, <thermalfoundation:material:865>);

#Black iron (extendedcrafting)
mods.immersiveengineering.BlastFurnace.addRecipe(<extendedcrafting:material>, <immersiveengineering:material:19>, 1000, <thermalfoundation:material:865>);






