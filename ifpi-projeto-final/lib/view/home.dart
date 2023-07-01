import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            const Text('Projeto Final', style: TextStyle(color: Colors.white)),
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
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/listaContatos');
                            },
                            style: const ButtonStyle(
                              padding: MaterialStatePropertyAll(
                                EdgeInsets.fromLTRB(43.5, 60, 43.5, 60),
                              ),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.green),
                            ),
                            child: const Text(
                              'CONTATOS',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/mapa');
                            },
                            style: const ButtonStyle(
                              padding: MaterialStatePropertyAll(
                                EdgeInsets.all(59),
                              ),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.green),
                            ),
                            child: const Text(
                              'MAPA',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                              padding: MaterialStatePropertyAll(
                                EdgeInsets.all(59),
                              ),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.green),
                            ),
                            child: const Text(
                              'EXTRA',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                              padding: MaterialStatePropertyAll(
                                EdgeInsets.all(59),
                              ),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.green),
                            ),
                            child: const Text(
                              'EXTRA',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
