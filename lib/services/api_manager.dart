import 'dart:convert';

import 'package:fetch_api_app/constants/constants.dart';
import 'package:fetch_api_app/models/news_info.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class APIManager {
  Future<NewsModel> getNews() async {
    var client = http.Client();
    var newsModel;

    try {
      var response = await client.get(Constants.news_url);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        newsModel = NewsModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return newsModel;
    }

    return newsModel;
  }
}
