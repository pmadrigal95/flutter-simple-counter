import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_functions_screen.dart';
// import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  // Nombrar widget con el key
  const MyApp({super.key}); // Inicializacion

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // quitar banner de modo de desarrollo
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueAccent
      ),
      home: const CounterFunctionsScreen()
    );
  }
}
