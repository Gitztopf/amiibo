
class Series{
  String name;


  Series(this.name);

  factory Series.fromJSON(Map<String,dynamic> json){
    return Series(
        json['name'] as String
    );
  }

  @override
  String toString() {
    return "$name";
  }
}