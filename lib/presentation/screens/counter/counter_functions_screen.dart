// Importación del paquete necesario de Flutter
import 'package:flutter/material.dart';

// Clase CounterFunctionsScreen que hereda de StatefulWidget
class CounterFunctionsScreen extends StatefulWidget {
  // Constructor de la clase CounterFunctionsScreen
  const CounterFunctionsScreen({super.key});

  // Método obligatorio que devuelve el estado asociado con CounterFunctionsScreen
  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

// Clase _CounterFunctionsScreenState que hereda de State<CounterFunctionsScreen>
class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  // Variable que almacena el número de clics en el botón flotante
  int clickCounter = 0;

  // Método que construye y devuelve la interfaz de usuario de CounterFunctionsScreen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de aplicación que muestra el título 'Counter Functions'
      appBar: AppBar(
        title: const Center(child: Text('Counter Functions - ANAHÍ ESTRELLA')),
        // Botón de acción que reinicia el contador cuando se presiona
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      // Cuerpo de la pantalla que muestra el contador y los botones flotantes personalizados
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
      // Botones flotantes personalizados que permiten reiniciar, restar y sumar al contador
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Botón flotante personalizado para reiniciar el contador
          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          // Botón flotante personalizado para restar al contador
          CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              setState(() {
                if (clickCounter == 0) return;
                clickCounter--;
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          // Botón flotante personalizado para sumar al contador
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
          ),
        ],
      ),
    );
  }
}

// Clase CustomButton que hereda de StatelessWidget
class CustomButton extends StatelessWidget {
  // Atributos del botón personalizado
  final IconData icon;
  final VoidCallback? onPressed;

  // Constructor de la clase CustomButton
  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  // Método que construye y devuelve el botón flotante personalizado
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(), // Forma del botón flotante
      onPressed: onPressed, // Acción al presionar el botón
      child: Icon(icon), // Icono del botón flotante
    );
  }
}
