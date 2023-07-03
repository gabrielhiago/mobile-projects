import 'package:flutter/material.dart';

class InfoContato extends StatefulWidget {
  const InfoContato({super.key});

  @override
  State<InfoContato> createState() => _InfoContatoState();
}

class _InfoContatoState extends State<InfoContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Informações de Contato',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                    labelText: 'E-mail',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Latitude',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Longitude',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Senha',
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye_rounded)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Confirmar Senha',
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye_rounded)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(180, 40)),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.green)),
                    child: const Text(
                      'Salvar Alterações',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(180, 40)),
                      backgroundColor: MaterialStatePropertyAll(Colors.red),
                    ),
                    child: const Text(
                      'Remover Contato',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
