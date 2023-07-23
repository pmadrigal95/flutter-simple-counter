import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold = Una nueva pantalla del dispositivo
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter Functions'), // titulo del app bar
      ),
      body: Center(
          // Colocar los widgets en medio de la pantalla
          child: Column(
        // Acomodar los widgets en una fila vertical
        mainAxisAlignment:
            MainAxisAlignment.center, // Alineacion de la pantalla
        children: [
          // widgets que se van a desplegar en fila
          Text(
            '$clickCounter',
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
          ),

          // Text('Click${clickCounter == 1 ? '' : 's'}', style: const TextStyle(fontSize: 25))
          if (clickCounter == 1)
          const Text('Click', style: TextStyle(fontSize: 25))

          else
          const Text('Clicks', style: TextStyle(fontSize: 25))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        //Boton flotante
        onPressed: () {
          // setState(() {
          //   clickCounter++;
          // });

          clickCounter++;
          setState(() {}); // Actualizar el componente con los valores nuevos

        }, // Evento click
        child: const Icon(Icons.plus_one), // Icono
      ),
    );
  }
}
