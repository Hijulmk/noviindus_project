import 'package:noviindus_project/models/usernamemodel.dart';

class UserController {
  static final UserController _instance = UserController._constructor();

  static UserController get instance => _instance;

  UserController._constructor();

  Future<usermodel?> getUserData() async {
    final String tokenValue = await AuthController.instance.token;
    final result = await getData('auth/profile',
        header: {'Authorization': 'Bearer $tokenValue'}, post: false);
    if (result['statusCode'] == 200) {
      Profile profile = Profile.fromJson(result['result']);
      return profile;
    } else {
      return null;
    }
  }
}