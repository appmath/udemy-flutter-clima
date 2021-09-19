import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:untitled/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    print('Called build');

    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getLocation();
            //Get the current location
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print('Latitude: ${location.latitude}');
    print('Longitude: ${location.longitude}');
  }

  @override
  void initState() {
    print('Called initState');
  }
  .

  @override
  void deactivate() {
    print('Called deactivate');
  }
}
