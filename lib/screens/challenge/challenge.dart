import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:morfhi/screens/challenge/offers.dart';

class Challenge extends StatefulWidget {
  const Challenge({super.key});

  @override
  State<Challenge> createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[Offers(), Offers()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[100],
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
        selectedIconTheme: const IconThemeData(
          color: Color.fromARGB(255, 0, 110, 255),
          size: 25.0,
        ),
        onTap: (int index) => setState(() => _selectedIndex = index),
        currentIndex: _selectedIndex,
        elevation: 8.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.briefcaseVariant),
            label: 'Retos',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.textBoxCheckOutline),
            label: 'Retos Creados',
          ),
        ],
      ),
    );
  }
}
