// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'dart:async';
// import 'package:location/location.dart';

// class MapPage extends StatefulWidget {
//   const MapPage({Key? key}) : super(key: key);

//   @override
//   _MapPageState createState() => _MapPageState();
// }

// class _MapPageState extends State<MapPage> {
//   final Completer<GoogleMapController> _controller = Completer();
//   final LatLng _center = const LatLng(50.0755, 14.4378);

//   late GoogleMapController mapController;
//   late PermissionStatus _permissionGranted;
//   late LocationData _locationData;

//   MapType _mapType = MapType.normal;
//   Location location = Location();

//   void getLocation() async {
//     var serviceEnabled = await location.serviceEnabled();
//     if (!serviceEnabled) {
//       serviceEnabled = await location.requestService();
//       if (!serviceEnabled) {
//         return;
//       }
//     }

//     _permissionGranted = await location.hasPermission();
//     if (_permissionGranted == PermissionStatus.denied) {
//       _permissionGranted = await location.requestPermission();
//       if (_permissionGranted != PermissionStatus.granted) {
//         return;
//       }
//     }

//     _locationData = await location.getLocation();

//     navigateToLocation(_locationData.latitude, _locationData.longitude);
//   }

//   Future<void> navigateToSpecificPlace(latitude, longitude) async {
//     setState(() {
//       _mapType = MapType.satellite;
//     });
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(
//       CameraUpdate.newCameraPosition(
//         CameraPosition(
//           target: LatLng(latitude, longitude),
//           tilt: 45,
//           bearing: 0,
//           zoom: 18,
//         ),
//       ),
//     );
//   }

//   Future<void> navigateToLocation(latitude, longitude) async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(
//       CameraUpdate.newCameraPosition(
//         CameraPosition(
//           target: LatLng(latitude, longitude),
//           tilt: 0,
//           bearing: 0,
//           zoom: 12,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 500,
//           child: GoogleMap(
//             onMapCreated: (GoogleMapController controller) {
//               _controller.complete(controller);
//               getLocation();
//             },
//             initialCameraPosition: CameraPosition(target: _center, zoom: 11.0),
//             mapType: _mapType,
//             markers: {
//               Marker(
//                   icon: BitmapDescriptor.defaultMarker,
//                   markerId: const MarkerId('google_plex'),
//                   position: const LatLng(
//                     49.195061,
//                     16.606836,
//                   ),
//                   infoWindow: const InfoWindow(
//                     title: "Fotbalové hřiště",
//                     snippet: 'Volno',
//                   ),
//                   onTap: () {})
//             },
//           ),
//         ),
//         FloatingActionButton.extended(
//           onPressed: () => navigateToSpecificPlace(
//               _locationData.latitude, _locationData.longitude),
//           label: const Text('Ukázat sportoviště'),
//           icon: const Icon(Icons.location_on),
//         ),
//       ],
//     );
//   }
// }
