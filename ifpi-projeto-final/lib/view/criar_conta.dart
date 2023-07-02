import 'package:flutter/material.dart';

class CriarConta extends StatefulWidget {
  const CriarConta({super.key});

  @override
  State<CriarConta> createState() => _CriarContaState();
}

class _CriarContaState extends State<CriarConta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Criar Conta', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.fromLTRB(0, 50, 0, 30),
              child: Image.asset('assets/images/logo_ifpi.png'),
            ),
            const Padding(
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
            const Padding(
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
            const Padding(
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
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/homePage', (route) => false);
                },
                style: const ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(Size(120, 40)),
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                child: const Text(
                  'Criar Conta',
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
