import 'dart:developer';

import 'package:flutter_rest_api_example/constants.dart';
import 'package:flutter_rest_api_example/model/user_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
 Future<List<UserModel>?> getUsers() async {
   try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.userUrl);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> _model = userModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
   return null;
}
}

