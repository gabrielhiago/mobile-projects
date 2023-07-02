import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.only(top: 50.0),
              child: Image.asset('assets/images/logo_ifpi.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                    labelText: 'Usuário',
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
                    labelText: 'Senha',
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
                  margin: const EdgeInsets.all(40),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/homePage', (route) => false);
                    },
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(120, 40)),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.green)),
                    child: const Text(
                      'Entrar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Text('ou'),
                Container(
                  margin: const EdgeInsets.all(40),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/criarConta');
                    },
                    style: const ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(120, 40)),
                    ),
                    child: const Text('Criar Conta'),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/recuperarSenha');
                },
                child: const Text(
                  'Esqueceu a Senha?',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
