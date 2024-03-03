// Importación de los paquetes necesarios de Flutter
import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_functions_screen.dart';

// Punto de entrada de la aplicación Flutter
void main() {
  // Inicia la aplicación llamando a la clase MyApp
  runApp(const MyApp());
}

// Clase principal de la aplicación, que hereda de StatelessWidget
class MyApp extends StatelessWidget {
  // Constructor de la clase MyApp
  const MyApp({super.key});

  // Método build, que construye y devuelve la interfaz de usuario de la aplicación
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Configuración de la aplicación
      debugShowCheckedModeBanner:
          false, // Deshabilita el banner de depuración en la esquina superior derecha
      theme: ThemeData(
        useMaterial3: true, // Utiliza el nuevo diseño de Material
        colorSchemeSeed: Colors.blue, // Esquema de colores predeterminado
      ),
      // Pantalla principal de la aplicación, que muestra CounterFunctionsScreen
      home: const CounterFunctionsScreen(),
    );
  }
}
