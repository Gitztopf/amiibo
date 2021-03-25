import 'package:flutter/material.dart';
import 'package:nvsu_flutter/data/Amiibo.dart';

class AmiiboListItem extends StatelessWidget {

  Amiibo selectedAmiibo;

  AmiiboListItem(this.selectedAmiibo);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.grey.shade200
      ),
      child: Row(
        children: [
          Container(

              margin: EdgeInsets.only(right: 12),
              height: 80,
              width:80,
              decoration: BoxDecoration(

                  image: DecorationImage(
                    image: NetworkImage(selectedAmiibo.image),
                    scale: 6

                  ),
                  borderRadius: BorderRadius.horizontal(left:Radius.circular(12)),
                  color: Colors.grey.shade300
              ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.only(right: 12),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(selectedAmiibo.name,style: TextStyle(color: Colors.grey.shade800,fontSize: 20),overflow: TextOverflow.fade,
                  softWrap: false,),
                  Text(selectedAmiibo.series,style: TextStyle(color: Colors.grey.shade600,fontSize: 16))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
