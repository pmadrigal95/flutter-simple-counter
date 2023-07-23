import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Scaffold = Una nueva pantalla del dispositivo
        appBar: AppBar(
            centerTitle: true,
            title: const Text('Counter Screen'), // titulo del app bar
            // leading: IconButton(
            //   icon: const Icon(Icons.refresh_rounded),
            //   onPressed: () {},
            // ),
            actions: [
              IconButton(
                icon: const Icon(Icons.refresh_rounded),
                onPressed: () {
                  setState(() {
                    clickCounter = 0;
                  });
                },
              ),
            ]),
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
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),

            // Text('Click${clickCounter == 1 ? '' : 's'}', style: const TextStyle(fontSize: 25))
            if (clickCounter == 1)
              const Text('Click', style: TextStyle(fontSize: 25))
            else
              const Text('Clicks', style: TextStyle(fontSize: 25))
          ],
        )),
        // floatingActionButton: FloatingActionButton(
        //   //Boton flotante
        //   onPressed: () {
        //     // setState(() {
        //     //   clickCounter++;
        //     // });

        //     clickCounter++;
        //     setState(() {}); // Actualizar el componente con los valores nuevos
        //   }, // Evento click
        //   child: const Icon(Icons.plus_one), // Icono
        // ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),

            const SizedBox(height: 10), // espacio en blanco

            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() {
                  if (clickCounter == 0) return;
                  clickCounter--;
                });
              },
            ),

            const SizedBox(height: 10), // espacio en blanco

            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  // Props

  final IconData icon;

  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  // const CustomButton(
  //   this.icon, {
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //Boton flotante
      shape: const StadiumBorder(),

      enableFeedback: true,

      elevation: 0,

      onPressed: onPressed, // Evento click

      child: Icon(icon), // Icono
    );
  }
}
