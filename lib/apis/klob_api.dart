import 'dart:convert';

import 'package:dayalima_test_app/models/category.dart';
import 'package:dayalima_test_app/models/content.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class KlobAPI {
  static const String BASE_URL =
      'https://s3-ap-southeast-1.amazonaws.com/static.klob.id/tmp_files/';

  static Future<List<Category>> fetchCategories() async {
    final Uri url = Uri.parse(BASE_URL + 'index.json');
    final http.Response response = await http.get(url);
    final List<dynamic> decoded = jsonDecode(response.body)['data'];
    return decoded.map((e) => Category.fromJson(e)).toList();
  }

  static Future<List<Content>> fetchContents({@required path}) async {
    final Uri url = Uri.parse(BASE_URL + path);
    final http.Response response = await http.get(url);
    final List<dynamic> decoded = jsonDecode(response.body)['data'];
    return decoded.map((e) => Content.fromJson(e)).toList();
  }
}
