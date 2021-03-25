

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:nvsu_flutter/data/Series.dart';
import 'package:nvsu_flutter/objects/amiibo_header_bar.dart';
import 'package:nvsu_flutter/objects/series_list_item.dart';
import 'package:nvsu_flutter/stores/amiibo_store.dart';

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';


class SeriesList extends StatefulWidget {
  @override
  _SeriesListState createState() => _SeriesListState();
}

class _SeriesListState extends State<SeriesList> {


 /* @override
  initState(){
    amiiboStore.fetchGameSeries();
  }*/

@override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    Provider.of<AmiiboStore>(context).fetchGameSeries();
  }

  @override
  Widget build(BuildContext context) {




    return Scaffold(
      appBar: AmiiboHeaderBar(),
      body:Observer(

        builder: (context) {
          final future=Provider.of<AmiiboStore>(context).seriesList;
          switch(future.status){
            case FutureStatus.pending:

              return Center(child: CircularProgressIndicator(),);


            case FutureStatus.fulfilled:
              final List<Series> seriesResult=future.result;
              return ListView.builder(itemBuilder: (context, index) => SeriesListItem(index: index,series:seriesResult[index]),itemCount:  seriesResult.length,) ;
               /* delegate: SliverChildBuilderDelegate(
                        (context,index)=>SeriesListItem(index:index, series:),
                    childCount:
                ),
              );*/
          }

          return Center(child: Text("?"),);
        },

      ) ,

    );
  }








}
