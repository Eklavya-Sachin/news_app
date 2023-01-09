import 'package:news_app/app/models/news_model_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../constants/api_constants.dart';

class ApiServices {
  static Future<News> getAllNewsArticles() async {
    try {
      var response = await http.get(Uri.parse(API_GET_ALL_NEWS_ARTICLES));
      var result = response.body;
      if (response.statusCode == 200) {
        final news = newsFromJson(result);
        return news;
      } else {
        return News();
      }
    } on Exception catch (e) {
      debugPrint('This is a custom Error line for fetched news: \n$e');
      return News();
    }
  }
}
