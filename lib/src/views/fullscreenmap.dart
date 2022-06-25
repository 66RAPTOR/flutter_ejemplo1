import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class FullScreenMap extends StatefulWidget {
  @override
  State<FullScreenMap> createState() => _FullScreenMapState();
}

class _FullScreenMapState extends State<FullScreenMap> {
  // const FullScreenMap({Key? key}) : super(key: key);
  MapboxMapController? mapController;
  static const String accesToken =
      "sk.eyJ1IjoicmFwdG9yNjYiLCJhIjoiY2w0dDEyNjJxMGN4NzNrcXB3dWlkZ2c3dSJ9.aqv0hquw4kJd10lE0DG7ng";

  var isLight = true;

  _onMapCreated(MapboxMapController controller) {
    mapController = controller;
  }

  _onStyleLoadedCallback() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Style loaded :)"),
      backgroundColor: Theme.of(context).primaryColor,
      duration: Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pagina 02"),
        ),
        body: MapboxMap(
          accessToken: accesToken,
          onMapCreated: _onMapCreated,
          initialCameraPosition:
              CameraPosition(target: LatLng(37.810575, -122.477174)),
        ));
  }
}
