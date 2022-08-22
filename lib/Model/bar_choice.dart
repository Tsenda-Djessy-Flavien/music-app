import 'package:flutter/material.dart';

class BarChoice {
  String label;
  IconData iconData;
  Widget page;

  BarChoice({required this.label, required this.iconData, required this.page});

  Icon get icon => Icon(iconData);
  BottomNavigationBarItem get item => BottomNavigationBarItem(icon: icon, label: label);
}