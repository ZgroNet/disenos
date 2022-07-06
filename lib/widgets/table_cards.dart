import 'dart:ui';

import 'package:flutter/material.dart';

class TableCards extends StatelessWidget {
  const TableCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SigleCard(color: Colors.blue, icon: Icons.border_all, text: 'General'),
          _SigleCard(color: Colors.pinkAccent, icon: Icons.car_rental, text: 'Transport'),
        ]),
        TableRow(children: [
          _SigleCard(color: Colors.purple, icon: Icons.shop, text: 'Shopping'),
          _SigleCard(color: Colors.purpleAccent, icon: Icons.cloud, text: 'Bill'),
        ]),
        TableRow(children: [
          _SigleCard(color: Colors.deepPurple, icon: Icons.movie, text: 'Entertainment'),
          _SigleCard(color: Colors.blueGrey, icon: Icons.food_bank_outlined, text: 'Grocery'),
        ]),
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon),
            radius: 30,
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
