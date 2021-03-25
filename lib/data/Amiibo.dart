import 'dart:typed_data';

import 'package:nvsu_flutter/data/Series.dart';

class Amiibo{
  String character;
  String series;
  String image;
  String name;
  Amiibo({this.name,this.series,this.character,this.image});



  factory Amiibo.fromJSON(Map<String,dynamic> json){
    return Amiibo(
      character: json['character'] as String,
      series: json['gameSeries'] as String,
      image: json['image'] as String,
      name: json['name'] as String
    );
  }
  @override
  String toString() {
    return "$name , $series , $image , $character";
  }
}