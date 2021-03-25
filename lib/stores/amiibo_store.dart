import 'package:mobx/mobx.dart';

import 'package:nvsu_flutter/data/Amiibo.dart';
import 'package:nvsu_flutter/data/Series.dart';
import 'package:nvsu_flutter/BL.dart';
// Include generated file
part 'amiibo_store.g.dart';

// This is the class used by rest of your codebase
class AmiiboStore = _AmiiboStore with _$AmiiboStore;

// The store-class
abstract class _AmiiboStore with Store {

  @observable
  ObservableFuture<List<Amiibo>> amiiboList;
  @observable
  ObservableFuture<List<Series>> seriesList;



  @action
  Future<List<Series>> fetchGameSeries() => seriesList=ObservableFuture(
      JSONHandler.fetchSeries()
  );

  @action
  Future<List<Amiibo>> fetchAmiibosFromGameSeries(String series)=>amiiboList=ObservableFuture(
      JSONHandler.fetchAmiibosFromSeries(series)
  );

}