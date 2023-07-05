import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projeto_final/view/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  login() async {
    try {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const HomePage()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Usuário ou senha inválidos')));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Usuário ou senha inválidos')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  autofocus: true,
                  controller: _emailController,
                  decoration: const InputDecoration(
                      labelText: 'E-mail',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  controller: _senhaController,
                  decoration: const InputDecoration(
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
                    margin: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {
                        login();
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
                    margin: const EdgeInsets.all(20),
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
      ),
    );
  }
}
