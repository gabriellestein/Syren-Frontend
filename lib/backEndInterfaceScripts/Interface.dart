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
    Future<Map<String, dynamic>> data = _openFile();
    _initializeList(data);
  }

  // Open currentData.json
  Future<Map<String, dynamic>> _openFile() async
  {
    var jsonText = await rootBundle.loadString('assets/currentData.json');
    Map<String, dynamic> data = json.decode(jsonText);
    print(data['ChIJbVM-gxjorokRxzwFbWlM-T4']);
    return data;
  }

  //Create list of place objects from json objects
  void _initializeList(Future<Map<String, dynamic>> data)
  {

  }

  List<Place> getPlaces() { return _places; }
}

class Place
{
  String _name = '';
  int _lat = 0;
  int _long = 0;
  String _phone = '';
  String _url = '';
  String _placeId = '';

  Place(String name, int lat, int long, String phone, String url, String placeId)
  {
    this._name = name;
    this._lat = lat;
    this._long = long;
    this._phone = phone;
    this._url = url;
    this._placeId = placeId;
  }

  String getName() { return _name; }
  int getLatitude() { return _lat; }
  int getLongitude() { return _long; }
  String getPhoneNumber() { return _phone; }
  String getPlaceURL() { return _url; }
  String getPlaceID() { return _placeId; }
}