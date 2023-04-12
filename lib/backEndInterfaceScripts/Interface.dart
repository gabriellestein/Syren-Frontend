import 'dart:convert';
import 'dart:io';
import 'dart:async' show Future;
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';

class Interface {
  static final Interface _instance = Interface._internal();

  late List<Place> _places;
  // using a factory is important
  // because it promises to return _an_ object of this type
  // but it doesn't promise to make a new one.
  factory Interface() {
    return _instance;
  }

  // This named constructor is the "real" constructor
  // It'll be called exactly once, by the static property assignment above
  // it's also private, so it can only be called in this class
  Interface._internal()
  {
    _initializeList();
  }

  // Open currentData.json
  Future<Map<String, dynamic>> _openFile() async
  {
    var jsonText = await rootBundle.loadString('assets/currentData.json');
    Map<String, dynamic> rawData;
    rawData = json.decode(jsonText);
    return rawData;
  }

  //Create list of place objects from json objects
  void _initializeList() async
  {
    Map<String, dynamic> data = await _openFile();
    for(Map<String,dynamic> value in data.values) {
      Place place = Place();
      place.name = value.values.elementAt(0);
      Map<String, dynamic> latLong = jsonDecode(value.values.elementAt(1));
      place.lat = latLong.values.elementAt(0);
      place.long = latLong.values.elementAt(1);
      place.phone = value.values.elementAt(2);
      place.url = value.values.elementAt(3);
      place.placeID = value.values.elementAt(4);
      _places.add(place);
    }
  }

  List<Place> getPlaces() { return _places; }
}

class Place
{
  String name = '';
  int lat = 0;
  int long = 0;
  String phone = '';
  String url = '';
  String placeID = '';

  Place()
  {
  }
}