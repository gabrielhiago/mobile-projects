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
        title: const Text('Lista de Contatos',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.person_2_rounded),
              title: const Text('Fulano de Tal'),
              subtitle: const Text('fulanodetal@gmail.com'),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Navigator.pushNamed(context, '/infoContato');
              },
            ),
          ],
        ),
      ),
    );
  }
}
