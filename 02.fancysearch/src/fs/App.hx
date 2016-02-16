package fs;

import Doom.*;
import doom.Component;

class App extends Component<AppApi, AppState> {
  public function new(api : AppApi, state : AppState) {
    super(api, state);
    api.onUpdate = function() {
      update(api.state);
    };
    thx.Timer.immediate(api.load);
  }

  override function render() {
    return div(["class" => "fancy-container"], [
      h1("veggies cooking time"),
      comp(new SearchItem({}, state))
    ]);
  }
}
