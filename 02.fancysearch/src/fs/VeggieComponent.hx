package fs;

import Doom.*;
import doom.Component;
import haxe.ds.Option;

class VeggieComponent extends Component<{}, Option<Veggie>> {
  override function render() {
    return switch state {
      case Some(item):
        article([
          h2(item.vegetable),
          table([
            comp(new CookingComponent("steamed", item.steamed)),
            comp(new CookingComponent("micro waved", item.microwaved)),
            comp(new CookingComponent("blanched", item.blanched)),
            comp(new CookingComponent("boiled", item.boiled)),
            comp(new CookingComponent("other", item.other))
          ])
        ]);
      case None:
        article("Please Search for a veggie");
    };
  }
}
