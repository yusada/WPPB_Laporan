import 'package:flutter/material.dart';
import 'package:wppb/model/tourism_place.dart';

class DoneTourismProvider extends ChangeNotifier {
  final List<TourismPlace> _doneTourismPlaceList = [];

  List<TourismPlace> get DoneTourismPlaceList => _doneTourismPlaceList;

  void complete(TourismPlace place, bool isDone) {
    isDone
        ? _doneTourismPlaceList.add(place)
        : _doneTourismPlaceList.remove(place);
    notifyListeners();
  }
}
