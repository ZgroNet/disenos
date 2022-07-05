import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5],
          colors: [Color(0xFF5EE8C5), Color(0xFF30BAD6)],
        )),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            ScreenPrincipal(),
            ScreenSecundario(),
          ],
        ),
      ),
    );
  }
}

class ScreenPrincipal extends StatelessWidget {
  const ScreenPrincipal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        // Imagen de fondo
        Fondo(),

        ContenidoPrincipal(),
      ],
    );
  }
}

class ScreenSecundario extends StatelessWidget {
  const ScreenSecundario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          // ignore: sort_child_properties_last
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Bienvenido',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xff0098FA), shape: const StadiumBorder()),
        ),
      ),
    );
  }
}

class ContenidoPrincipal extends StatelessWidget {
  const ContenidoPrincipal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const Text(
            '11º',
            style: textStyle,
          ),
          const Text(
            'Miércoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        alignment: Alignment.topCenter,
        color: const Color(0xFF30BAD6),
        child: const Image(
          image: AssetImage('assets/scroll-1.png'),
        ));
  }
}
