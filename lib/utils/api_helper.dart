import 'dart:convert';

import 'package:appretive_infosoft/screens/home/model/api_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  static final ApiHelper apiHelper = ApiHelper._();

  ApiHelper._();

  Future<UserModel> getApi() async {
    var response = await http
        .get(Uri.parse("https://api.api-ninjas.com/v1/randomuser"), headers: {
      'X-RapidAPI-Key': '88130da9c0mshfc722e959c1e7bbp182b77jsn147ea36d443e',
      'X-RapidAPI-Host': 'random-user-by-api-ninjas.p.rapidapi.com'
    });

    var json = await jsonDecode(response.body);

    UserModel u1 = UserModel.fromJson(json);
    return u1;
  }
}
