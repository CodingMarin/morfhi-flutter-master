// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:morfhi/screens/manager/tasks/tasks.dart';
import 'package:morfhi/screens/manager/viewtasks/viewtasks.dart';

class Manager extends StatefulWidget {
  const Manager({super.key});

  @override
  State<Manager> createState() => _ManagerState();
}

class _ManagerState extends State<Manager> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[Tasks(), ViewTasks()];
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
            icon: Icon(MdiIcons.plusCircleOutline),
            label: 'Crear Tarea',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.textBoxCheckOutline),
            label: 'Mis Tareas',
          ),
        ],
      ),
    );
  }
}
