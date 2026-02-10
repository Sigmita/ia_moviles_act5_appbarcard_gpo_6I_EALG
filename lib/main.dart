import 'package:flutter/material.dart';

void main() => runApp(const AppNetflix());

class AppNetflix extends StatelessWidget {
  const AppNetflix({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      home: Pelicula(),
    );
  }
}

class Pelicula extends StatelessWidget {
  const Pelicula({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Fondo claro para que resalte la tarjeta
      appBar: AppBar(
        title: const Text('Pelicula Scarface'),
        leading: const Icon(Icons.camera),
        leadingWidth: 80,
        backgroundColor: const Color.fromARGB(255, 40, 72, 255), // Azul del código original
        actions: const [
          Icon(Icons.bedroom_child),
          SizedBox(width: 10),
          Icon(Icons.flight),
          SizedBox(width: 15),
        ],
      ),
      drawer: const Drawer(),
      // Aquí integramos la tarjeta dentro del body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 320,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                // Degradado guinda oscuro
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF800020), // Guinda profundo
                    Color(0xFF33000D), // Casi negro
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 15,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Avatar con imagen desde la red
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/Sigmita/ia_moviles_act5_appbarcard_gpo_6I_EALG/refs/heads/main/alexis.jpg',
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Título
                  const Text(
                    'Alexys Leal',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Subtítulo
                  const Text(
                    'Gerente de suscripciones',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontStyle: FontStyle.italic,
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