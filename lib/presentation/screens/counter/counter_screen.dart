// Importación del paquete Flutter necesario
import 'package:flutter/material.dart';

// Clase CounterScreen que hereda de StatefulWidget
class CounterScreen extends StatefulWidget {
  // Constructor de la clase CounterScreen
  const CounterScreen({super.key});

  // Método obligatorio que devuelve el estado asociado con CounterScreen
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

// Clase _CounterScreenState que hereda de State<CounterScreen>
class _CounterScreenState extends State<CounterScreen> {
  // Variable que almacena el número de clics en el botón flotante
  int clickCounter = 0;

  // Método que construye y devuelve la interfaz de usuario de CounterScreen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de aplicación que muestra el título 'Counter Screen'
      appBar: AppBar(
        title: const Center(child: Text('Counter Screen')),
      ),
      // Cuerpo de la pantalla que muestra el contador y el botón flotante
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Widget de texto que muestra el número de clics
            Text('$clickCounter',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            // Widget de texto que muestra 'Click' o 'Clicks' dependiendo del número de clics
            Text('Click${clickCounter == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 25))
          ],
        ),
      ),
      // Botón flotante que incrementa el contador al hacer clic
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter++;
          });
        },
        child: const Icon(Icons.plus_one), // Icono del botón flotante
      ),
    );
  }
}
