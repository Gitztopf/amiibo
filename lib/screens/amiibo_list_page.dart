import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:nvsu_flutter/data/Amiibo.dart';
import 'package:nvsu_flutter/objects/amiibo_header_bar.dart';
import 'package:nvsu_flutter/objects/amiibo_list_item.dart';
import 'package:nvsu_flutter/stores/amiibo_store.dart';
import 'package:provider/provider.dart';

class AmiiboListView extends StatefulWidget {
  @override
  _AmiiboListViewState createState() => _AmiiboListViewState();

  String gameSeries;

  AmiiboListView(this.gameSeries);



}
class _AmiiboListViewState extends State<AmiiboListView> {

  @override
  void didChangeDependencies() {
    print(widget.gameSeries);
    Provider.of<AmiiboStore>(context).fetchAmiibosFromGameSeries(widget.gameSeries);
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AmiiboHeaderBar(),
      body: Observer(builder: (context) {
        final future=Provider.of<AmiiboStore>(context).amiiboList;
        switch(future.status){
          case FutureStatus.pending:
            return Center(child: CircularProgressIndicator(),);
          case FutureStatus.fulfilled:
            List<Amiibo> amiiboList=future.result;
            return Container(
              child: ListView.builder(itemBuilder: (context, index) =>
              AmiiboListItem(amiiboList[index]),
                itemCount: amiiboList.length,
              )
            );
        }
        return Center(child:Container(child:Text("?")));
      },),
    );
  }


}
