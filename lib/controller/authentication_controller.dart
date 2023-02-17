import 'package:flutter/material.dart';



class AuthController {
  static final AuthController _instance = AuthController._constructor();

  static AuthController get instance => _instance;

  AuthController._constructor();
  Future<bool> login(String username, String password) async {
    final result = await getData("auth/login", params: {
      'username': username,
      'password': password,
      'mode': 'customer',
    });
    if (result['success'] as bool) {
      saveToken(result['access_token']);
    }
    showToast(result['message']);

    return result['success'];
  }

  Future<bool> loginGetOTP(String mobile) async {
    final result = await getData("auth/send-otp", params: {
      'mobile_no': mobile, //10 numbers
      'mode': 'customer'
    });
    showToast(result['message']);
    return result['success'];
  }

  Future<bool> registerGetOTP(String mobile) async {
    final result = await getData("otp/generate/$mobile");
    showToast(result['message']);
    return result['success'];
  }

  Future<bool> get isValidToken async {
    final String tokenValue = await token;
    final result = await getData('auth/profile',
        header: {'Authorization': 'Bearer $tokenValue'}, post: false);
    return result['statusCode'] == 200;
  }

  Future<bool> loginVerifyOTP(String mobile, String otp) async {
    final result = await getData("auth/verify-otp", params: {
      'mobile_no': mobile, //10 numbers
      'otp': otp,
      'mode': 'customer',
    });
    if (result['success'] as bool) {
      saveToken(result['access_token']);
    }
    showToast(result['message']);
    return result['success'];
  }

  Future<bool> registerVerifyOTP(String mobile, String otp) async {
    final result = await getData("otp/verify", params: {
      'mobile_no': mobile, //10 numbers
      'otp': otp,
      'mode': 'customer',
    });
    showToast(result['message']);
    return result['success'];
  }

  Future<bool> registerData(
    String fullname,
    String photoId,
    String photoLocation,
    String mobile,
    String email,
    String aadhaar,
    String dob,
    String age,
    String bloodType,
    String rhType,
    String gender,
    String latLong,
  ) async {
    final result = await getData("customers/registration", params: {
      "full_name": fullname,
      "photo_id": photoId,
      "photo_location": photoLocation,
      "mobile": mobile,
      "email": email,
      "adhaar_number": aadhaar,
      "date_of_birth": dob,
      "age": age,
      "blood_type": bloodType,
      "rh_type": rhType,
      "gender": gender,
      "latitude_longitude": latLong,
      "referrer": "string"
    });
    showToast(result['message']);
    if (result['success'] as bool) {
      saveToken(result['access_token']);
    }

    return result['success'];
  }

  logout(BuildContext context) async {
    final navigator = Navigator.of(context);
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();

    navigator.pushReplacement(
        MaterialPageRoute(builder: (context) => const WelcomeScreen()));
  }

  saveToken(String token) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(tokenKey, token);
  }

  Future<String> get token async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(tokenKey) ?? "";
  }
}
