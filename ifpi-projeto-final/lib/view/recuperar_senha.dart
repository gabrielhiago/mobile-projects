import 'package:flutter/material.dart';

class RecuperarSenha extends StatefulWidget {
  const RecuperarSenha({super.key});

  @override
  State<RecuperarSenha> createState() => _RecuperarSenhaState();
}

class _RecuperarSenhaState extends State<RecuperarSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Recuperar Senha', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Senha',
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove_red_eye_rounded)),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Confirmar Senha',
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove_red_eye_rounded)),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(40),
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(Size(120, 40)),
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                child: const Text(
                  'Recuperar Senha',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
