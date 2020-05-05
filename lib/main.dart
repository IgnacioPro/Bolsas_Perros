import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Las Rozas Perruna',
      home: MyMap(),
    );
  }
}

class MyMap extends StatefulWidget {
  @override
  State<MyMap> createState() => MyMapSampleState();
}

class MyMapSampleState extends State<MyMap> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(40.4929200, -3.8737100),
          zoom: 15, 
        ),
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: Icon(Icons.add),
          onPressed: (){},
          backgroundColor: Colors.lightBlue[200],
        ),
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50.0),
        color: Colors.white,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonLocation: (
        FloatingActionButtonLocation.centerDocked
      ),
      );
    }
  }