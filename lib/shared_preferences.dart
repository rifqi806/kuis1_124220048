import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static SharedPreferences? _preferences;

  static const _keyUsername = 'username';
  static const _keyPassword = 'password';
  static const _keyValidasi = 'validasi';

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future setProfile(
      String username, String password, String validasi) async {
    if (_preferences == null) await init();

    await _preferences?.setString(_keyUsername, username);
    await _preferences?.setString(_keyPassword, password);
  }

  static String? getUserame() {
    return _preferences?.getString(_keyUsername);
  }

  static String? getPassword() {
    return _preferences?.getString(_keyPassword);
  }

  static String? getValidasi() {
    return _preferences?.getString(_keyValidasi);
  }

  static Future clear() async {
    if (_preferences == null) await init();

    await _preferences?.clear();
  }
}

class OrderPreferences {
  static SharedPreferences? _preferences;

  static const _keyJumlah = 'jumlah';

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future setJumlah(String jumlah) async {
    if (_preferences == null) await init();

    await _preferences?.setString(_keyJumlah, jumlah);
  }
}
