import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projeto_final/view/criar_conta.dart';
import 'package:projeto_final/view/info_contato.dart';
import 'package:projeto_final/view/login.dart';
import 'package:projeto_final/view/home.dart';
import 'package:projeto_final/view/lista_contatos.dart';
import 'package:projeto_final/view/mapa.dart';
import 'package:projeto_final/view/recuperar_senha.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  StreamSubscription? streamSubscription;

  @override
  void initState() {
    super.initState();
    streamSubscription =
        FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomePage()));
      }
    });
  }

  @override
  void dispose() {
    streamSubscription!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/loginPage': (context) => const LoginPage(),
        '/homePage': (context) => const HomePage(),
        '/listaContatos': (context) => const ListaContatos(),
        '/mapa': (context) => const Mapa(),
        '/criarConta': (context) => const CriarConta(),
        '/infoContato': (context) => const InfoContato(),
        '/recuperarSenha': (context) => const RecuperarSenha(),
      },
    );
  }
}
