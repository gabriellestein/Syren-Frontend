import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:syren_front_end/backEndInterfaceScripts/interface.dart';
import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

  // created controller for displaying Google Maps
  Completer<GoogleMapController> _controller = Completer();

  // given camera position
  static final CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(35.6069, -77.3665),
    zoom: 12,
  );

  Uint8List? marketimages;
  List<String> images = ['assets/marker.png',
    'assets/hospital.png'];

  // created empty list of markers
  final List<Marker> _markers = <Marker>[];

  Map<String,String> imageMap = {
    'marker':'assets/marker.png',
    'hospital':'assets/hospital.png',
    'health':'assets/health.png',
    'food_bank':'assets/food_bank.png',
    'christian_church':'assets/christian_church.png',
    'synagogue':'assets/synagogue.png',
    'mosque':'assets/mosque.png',
    'police':'assets/police.png',
    'school':'assets/school.png'
  };

  // created list of coordinates of various locations
  List<LatLng> _latLen = List.empty();


  // declared method to get Images
  Future<Uint8List> getImages(String path, int width) async{
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetHeight: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return(await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();

  }

  @override
  void initState()  {
    // TODO: implement initState
    super.initState();
    _latLen = [];
    /*
    Interface i = Interface();
    List<Place> places = i.getPlaces();
    for(int i = 0; i < places.length; i ++) {
      double lat = places[i].lat;
      double lng = places[i].long;
      _latLen.add(LatLng(lat,lng));
    }*/
    // initialize loadData method
    loadData();
  }

  // created method for displaying custom markers according to index
  loadData() async{
    Interface i = Interface();
    List<Place> places = i.getPlaces();
    if(places.length == 0) {
      await Future.delayed(const Duration(seconds:5));
    }
    for(int i=0 ;i<places.length; i++){
      String index = imageMap['marker'].toString();
      if(places[i].types.contains('hospital')) {
          index = imageMap['hospital'].toString();
      }
      else if(places[i].types.contains('health')) {
        index = imageMap['health'].toString();
      }
      else if(places[i].types.contains('food')) {
        index = imageMap['food_bank'].toString();
      }
      else if(places[i].types.contains('police')) {
        index = imageMap['police'].toString();
      }
      else if(places[i].types.contains('school')) {
        index = imageMap['school'].toString();
      }
      else if(places[i].types.contains('mosque')) {
        index = imageMap['mosque'].toString();
      }
      else if(places[i].types.contains('synagogue')) {
        index = imageMap['synagogue'].toString();
      }
      else if(places[i].types.contains('church')) {
        index = imageMap['christian_church'].toString();
      }
      final Uint8List markIcons = await getImages(index, 60);
      // makers added according to index
      _markers.add(
          Marker(
            // given marker id
            markerId: MarkerId(i.toString()),
            // given marker icon
            icon: BitmapDescriptor.fromBytes(markIcons),
            // given position
            position: LatLng(places[i].lat, places[i].long),
            infoWindow: InfoWindow(
              // given title for marker
              title: places[i].name,
              snippet: places[i].phone,
              onTap: () => launch("tel://" + places[i].phone)
            ),
          )
      );
      setState(() {
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0F9D58),
        // on below line we have given title of app
        title: Text("Maps Page"),
      ),
      body: Container(
        child: SafeArea(
          child: GoogleMap(
            // given camera position
            initialCameraPosition: _kGoogle,
            // set markers on google map
            markers: Set<Marker>.of(_markers),
            // on below line we have given map type
            mapType: MapType.normal,
            // on below line we have enabled location
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            // on below line we have enabled compass
            compassEnabled: true,
            // below line displays google map in our app
            onMapCreated: (GoogleMapController controller){
              _controller.complete(controller);
            },
          ),
        ),
      ),
    );
  }
}