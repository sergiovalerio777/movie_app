import 'package:flutter/material.dart';


class AvatarPage2 extends StatelessWidget {
  const AvatarPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00A19D), // Fondo verde
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://b2472105.smushcdn.com/2472105/wp-content/uploads/2023/01/Perfil-Profesional-_28_1-819x1024.jpg?lossy=1&strip=1&webp=1'), // Imagen del perfil
            ),
            const SizedBox(height: 10),
            const Text(
              'Sergio Valerio',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                 fontFamily: 'Anton', // O cualquier fuente personalizada
    shadows: [
      Shadow(
        offset: Offset(2.0, 2.0),
        blurRadius: 3.0,
        color: Colors.black45,
      ),
    ],
              ),
            ),
            const Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                letterSpacing: 2.5,
                fontFamily: 'Anton', // O cualquier fuente personalizada
    shadows: [
      Shadow(
        offset: Offset(2.0, 2.0),
        blurRadius: 3.0,
        color: Colors.black45,
      ),
    ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: const Icon(Icons.phone, color: Color(0xFF00A19D)),
                      title: const Text(
                        '+51 552 542 111',
                         style: TextStyle(
                  color: Color(0xFF00A19D),
                  ),
                        ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: const Icon(Icons.email, color: Color(0xFF00A19D)),
                      title: const Text('Sergiovalerio@gmail.com',
                       style: TextStyle(
                  color: Color(0xFF00A19D),
                  ),
                      ),
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
