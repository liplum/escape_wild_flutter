import 'package:escape_wild/core.dart';
import 'package:escape_wild/foundation.dart';

class CraftRecipes {
  CraftRecipes._();

  static void registerAll() {
    Contents.craftRecipes.addAll([
      MergeWetCraftRecipe(
        "tinder",
        CraftRecipeCat.fire,
        inputTags: [50.tag("flammable-floc")],
        outputMass: 30,
        output: () => Stuff.tinder,
      ),
      MergeWetCraftRecipe(
        "hand-drill-kit",
        CraftRecipeCat.fire,
        inputTags: [
          50.tag("tinder"),
          50.tag("sticks"),
          200.tag("log"),
        ],
        output: () => Tools.handDrillKit,
      ),
      TagCraftRecipe(
        "straw-rope",
        CraftRecipeCat.refine,
        ingredients: [200.tag("straw")],
        output: () => Stuff.strawRope,
        outputMass: 100,
      ),
      TagCraftRecipe(
        "stone-axe",
        CraftRecipeCat.tool,
        ingredients: [
          1000.tag("stone"),
          500.tag("log"),
          50.tag("rope"),
        ],
        output: () => Tools.stoneAxe,
      ),
/*      TagCraftRecipe("water-filter", CraftRecipeCat.survival,
          tags: [
            20.g("plastic-bottle"),
            300.g("sand"),
            200.g("straw"),
          ],
          output: () => Tools.waterFilter)*/
    ]);
  }
}
