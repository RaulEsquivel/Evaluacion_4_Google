import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  final _initialCameraPosition=CameraPosition(target: LatLng(13.667554933393438, -89.09969785186831),zoom: 9);
  Set<Marker> _markers ={};


  void _onMapCreated(GoogleMapController controller){
    controller.setMapStyle(Utils.mapStyle);
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('id-1'), 
          position: LatLng(13.725771724685561, -89.36672549403046),
          infoWindow: InfoWindow(
            title: 'Encomiendas SV Sucursal Lourdes, La libertad',
            snippet: 'Sucusal ubicada en La libertad, Lourdes por el Psj.Pablo Neruda'
          )
        ),
      );

      _markers.add(
        Marker(
          markerId: MarkerId('id-2'), 
          position: LatLng(13.679008964959387, -89.26851014771088),
          infoWindow: InfoWindow(
            title: 'Encomiendas SV Sucursal Merliot,La libertad',
            snippet: 'Sucusal ubicada en La libertad, Merliot por la Urbanizacion jardines del Volcán II'
          )
        ),
      );

      _markers.add(
        Marker(
          markerId: MarkerId('id-3'), 
          position: LatLng(13.676683402418067, -89.28960004668006),
          infoWindow: InfoWindow(
            title: 'Encomiendas SV Sucursal Santa Tecla,La libertad',
            snippet: 'Sucusal ubicada en La libertad, Santa Tecla por la Tercera calle poniente'
          )
        ),
      );

      _markers.add(
        Marker(
          markerId: MarkerId('id-4'), 
          position: LatLng(13.640676699480377, -88.78546067599412),
          infoWindow: InfoWindow(
            title: 'Encomiendas SV Sucursal San Vicente',
            snippet: 'Sucusal ubicada en San Vicente'
          )
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ENCOMIENDAS SV SUCURSALES - PARCIAL 4'),
      ),
      body: GoogleMap(onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: _initialCameraPosition,),
    );
    
  }
}

class Utils{
  static String mapStyle= '''
  [
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ebe3cd"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#523735"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#f5f1e6"
      }
    ]
  },
  {
    "featureType": "administrative",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#c9b2a6"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#dcd2be"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#ae9e90"
      }
    ]
  },
  {
    "featureType": "landscape.natural",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dfd2ae"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dfd2ae"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#93817c"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#a5b076"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#447530"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#f5f1e6"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#fdfcf8"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#f8c967"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#e9bc62"
      }
    ]
  },
  {
    "featureType": "road.highway.controlled_access",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e98d58"
      }
    ]
  },
  {
    "featureType": "road.highway.controlled_access",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#db8555"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#806b63"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dfd2ae"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#8f7d77"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#ebe3cd"
      }
    ]
  },
  {
    "featureType": "transit.station",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dfd2ae"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#b9d3c2"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#92998d"
      }
    ]
  }
]
  ''';
}