import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:math' show cos, sqrt, asin;



class ScreenMap extends StatefulWidget {
  @override
  State<ScreenMap> createState() => _ScreenMapState();
}

class _ScreenMapState extends State<ScreenMap> {
  final Completer<GoogleMapController> _controller = Completer();
  var gotPosition = 0;
  List<Marker> _markers = <Marker>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gotPosition = 0;
    setState(() {
      afunc();
    });

    
  }

  Future<void> afunc() async {
    
        setState(() {
          gotPosition = 1;
        //   _markers.add(Marker(
        // markerId: MarkerId('SomeId'),
        // position: LatLng(position1.latitude, position1.longitude),
        // infoWindow: InfoWindow(title: 'My Current Location')));
        });
      
    
  }

  @override
  Widget build(BuildContext context) {
    
    
    CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(12.504849898190843, 75.08339903766213),
      zoom: 18,
    );
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: _kGooglePlex,
          mapType: MapType.normal,
          zoomControlsEnabled: true,
          zoomGesturesEnabled: true,
          myLocationButtonEnabled: true,
          myLocationEnabled: true,
          trafficEnabled: false,
          rotateGesturesEnabled: true,
          buildingsEnabled: true,
          markers: Set<Marker>.of(_markers),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
    );
  }
  

  
}