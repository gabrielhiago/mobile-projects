import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapa extends StatefulWidget {
  const Mapa({super.key});

  @override
  State<Mapa> createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  _localizacaoAtual() async {
  }

  final Set<Marker> _marcadores = {};
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  late GoogleMapController mapController;



  _carregarMarcadores() {
    Set<Marker> marcadoresUsuarios = {};
    Marker marcadorIfpi = const Marker(
        markerId: MarkerId('IFPI'),
        position: LatLng(-5.088849181413348, -42.811251074446076));
    marcadoresUsuarios.add(marcadorIfpi);
    setState(() {
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

  @override
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
