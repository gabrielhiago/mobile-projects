import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore bancoDados = FirebaseFirestore.instance;

Future<List> getContatos() async {
  List contatos = [];
  CollectionReference collectionReferenceContatos =
      bancoDados.collection('contatos');
  QuerySnapshot queryContatos = await collectionReferenceContatos.get();
  for (var documento in queryContatos.docs) {
    contatos.add(documento.data());
  }
  return contatos;
}
