
import 'package:flutter/material.dart';
import 'package:nvsu_flutter/data/Series.dart';
import 'package:nvsu_flutter/screens/amiibo_list_page.dart';

class SeriesListItem extends StatelessWidget {


  final int index;
  final Series series;

  SeriesListItem({this.index,this.series});

  @override
  Widget build(BuildContext context) {

      return GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AmiiboListView(series.name),)),
        child: Container(
          margin: EdgeInsets.all(8),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Colors.grey.shade200
          ),
          height: 80,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right:12.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left:Radius.circular(12)),
                      color: HSLColor.fromColor(Theme.of(context).accentColor).withLightness(0.35).toColor()
                  ),
                  height: double.infinity,
                  width: 80,
                  alignment: Alignment.center,
                  child: Text("${index+1}",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                ),
              ),
              Text(series.name,style: TextStyle(fontSize: 18,color: Colors.grey.shade800),),
            ],
          ),
        ),
      );
    }
}
