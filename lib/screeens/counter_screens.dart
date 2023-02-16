import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    const TextStyle estiloTexto = TextStyle(
      fontSize: 30,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          elevation: 10,
        ),
        backgroundColor: Color.fromARGB(255, 0, 102, 255),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Número de taps:',
              style: estiloTexto,
            ),
            Text(
              '$contador',
              style: estiloTexto,
            ),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              onPressed: () => setState(() => contador--),
              child: const Icon(Icons.exposure_minus_1),
            ),
            FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              onPressed: () => setState(() => contador = 0),
              child: const Icon(Icons.restart_alt),
            ),
            FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              onPressed: () => setState(() => contador++),
              child: const Icon(Icons.exposure_plus_1),
            ),
          ],
        ));
  }
}
