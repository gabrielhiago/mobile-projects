
import 'package:flutter/material.dart';

class ListaContatos extends StatefulWidget {
  const ListaContatos({super.key});

  @override
  State<ListaContatos> createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            const Text('Lista de Contatos', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.person_2_rounded),
                  title: Text('Fulano de Tal'),
                ),
                ListTile(
                  leading: Icon(Icons.person_2_rounded),
                  title: Text('Beltrano de Tal'),
                ),
                ListTile(
                  leading: Icon(Icons.person_2_rounded),
                  title: Text('Ciclano de Tal'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
