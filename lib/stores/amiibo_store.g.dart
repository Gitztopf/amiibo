// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amiibo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AmiiboStore on _AmiiboStore, Store {
  final _$amiiboListAtom = Atom(name: '_AmiiboStore.amiiboList');

  @override
  ObservableFuture<List<Amiibo>> get amiiboList {
    _$amiiboListAtom.reportRead();
    return super.amiiboList;
  }

  @override
  set amiiboList(ObservableFuture<List<Amiibo>> value) {
    _$amiiboListAtom.reportWrite(value, super.amiiboList, () {
      super.amiiboList = value;
    });
  }

  final _$seriesListAtom = Atom(name: '_AmiiboStore.seriesList');

  @override
  ObservableFuture<List<Series>> get seriesList {
    _$seriesListAtom.reportRead();
    return super.seriesList;
  }

  @override
  set seriesList(ObservableFuture<List<Series>> value) {
    _$seriesListAtom.reportWrite(value, super.seriesList, () {
      super.seriesList = value;
    });
  }

  final _$_AmiiboStoreActionController = ActionController(name: '_AmiiboStore');

  @override
  Future<List<Series>> fetchGameSeries() {
    final _$actionInfo = _$_AmiiboStoreActionController.startAction(
        name: '_AmiiboStore.fetchGameSeries');
    try {
      return super.fetchGameSeries();
    } finally {
      _$_AmiiboStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<List<Amiibo>> fetchAmiibosFromGameSeries(String series) {
    final _$actionInfo = _$_AmiiboStoreActionController.startAction(
        name: '_AmiiboStore.fetchAmiibosFromGameSeries');
    try {
      return super.fetchAmiibosFromGameSeries(series);
    } finally {
      _$_AmiiboStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
amiiboList: ${amiiboList},
seriesList: ${seriesList}
    ''';
  }
}
