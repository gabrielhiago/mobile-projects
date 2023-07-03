import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class Mapa extends StatefulWidget {
  const Mapa({super.key});

  @override
  State<Mapa> createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  _localizacaoAtual() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Set<Marker> _marcadores = {};
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-5.088849181413348, -42.811251074446076);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  _carregarMarcadores() {
    Set<Marker> marcadoresUsuarios = {};
    Marker marcadorIfpi = Marker(
        markerId: MarkerId('IFPI'),
        position: LatLng(-5.088849181413348, -42.811251074446076));
    marcadoresUsuarios.add(marcadorIfpi);
    setState(() {
      var _marcadores = marcadoresUsuarios;
    });
  }

  static const CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(-5.08868888319583, -42.81129398979228), zoom: 14.4746);

  @override
  void initState() {
    super.initState();
    _carregarMarcadores();
    _localizacaoAtual();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Mapa', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: GoogleMap(
        myLocationEnabled: true,
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: _marcadores,
      ),
    );
  }
}
