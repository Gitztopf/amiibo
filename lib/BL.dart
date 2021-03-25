
import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart'as http;

import 'data/Amiibo.dart';
import 'data/Series.dart';



class JSONHandler{

  static Future<List<Series>>fetchSeries()async{
    List<Series> gameList=[];
    var url=Uri.https("www.amiiboapi.com","/api/amiiboseries");
    http.Response response=await http.get(url);
    final parsedJSON=jsonDecode(response.body)["amiibo"];
    gameList=parsedJSON.map<Series>((json)=>Series.fromJSON(json)).toList();
    return gameList;
  }

  static Future<List<Amiibo>> fetchAmiibosFromSeries(String gameSeries)async{
    List<Amiibo> amiiboList=[];
    http.Response response = await http.get(Uri.https("www.amiiboapi.com","/api/amiibo/", {"amiiboSeries":gameSeries}));
    final parsedJSON=jsonDecode(response.body)["amiibo"];
    amiiboList=parsedJSON.map<Amiibo>((json)=>Amiibo.fromJSON(json)).toList();
    return amiiboList;
  }
}