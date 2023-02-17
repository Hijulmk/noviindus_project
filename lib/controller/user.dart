import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:noviindus_project/models/usernamemodel.dart';

class userResponce {
  Future<String> getuser() async {
    final result =
        await http.get(Uri.parse('http://flutter.noviindus.co.in/api/LoginApi'));
    print(result.body);
    return jsonDecode(result.body)['status'].toString();
  }

}
