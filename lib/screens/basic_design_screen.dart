import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter layout demo'),
      ),
        body: ListView(
      children: const [
        // Imagen
        Image(
            image: AssetImage('assets/lake.jpg'),
            width: 600,
            height: 240,
            fit: BoxFit.cover),

        // Título
        TitleSection(),

        // Botonera
        ButtonSection(),

        // Contenido
        ContentSection()
      ],
    ));
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FakeButton(icon: Icons.call, caption: 'CALL', color: primaryColor),
        FakeButton(
          icon: Icons.near_me,
          caption: 'ROUTE',
          color: primaryColor,
        ),
        FakeButton(
          icon: Icons.share,
          caption: 'SHARE',
          color: primaryColor,
        ),
      ],
    );
  }
}

class FakeButton extends StatelessWidget {
  const FakeButton({
    Key? key,
    required this.icon,
    required this.caption,
    required this.color,
  }) : super(key: key);

  final IconData icon;
  final String caption;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              caption,
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w500, color: color),
            ))
      ],
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }
}

class ContentSection extends StatelessWidget {
  const ContentSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32.0),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );
  }
}
