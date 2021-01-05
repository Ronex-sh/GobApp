
import 'package:shared_preferences/shared_preferences.dart';

class SpSatting {
  final fontSizeKey = 'font_Key';
  final colorKey = 'color_key';
  static SharedPreferences _sp;

  Future init() async {
    return _sp = await SharedPreferences.getInstance();
  }

  Future setColor(int color) {
    return _sp.setInt(colorKey, color);
  }

  int getColor() {
    int color = _sp.getInt(colorKey);
    if (color == null) {
      color = 0xff322bf0;
    }
    return color;
  }
}
