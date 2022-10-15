import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:muscle_magic/networking/apiKeys.dart';

import 'package:muscle_magic/auth/secrets.dart';

import 'package:muscle_magic/networking/api_modal.dart';

Future fetchAPI() async {
  Uri uri = Uri.parse("https://exercisedb.p.rapidapi.com/exercises");
  Map<String, String> headers = {

     "X-RapidAPI-Key": x_Rapid_API_Key,
     "X-RapidAPI-Host": x_Rapid_API_Host,

    "X-RapidAPI-Key": apikey,
    "X-RapidAPI-Host": 'exercisedb.p.rapidapi.com',

  };
  
  final response = await http.get(uri, headers: headers);

  List<ApiModal> excercise = [];
  var jsonData = jsonDecode(response.body);
  for (var t in jsonData) {
    ApiModal album = ApiModal(name: t['name'], gifUrl: t['gifUrl']);
    excercise.add(album);
  }
  // print(excercise.length);
  return excercise;
}
