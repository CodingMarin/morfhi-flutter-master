import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:morfhi/providers/authentication.dart';
import 'package:morfhi/screens/challenge/challenge.dart';
import 'package:morfhi/screens/manager/manager.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final user = FirebaseAuth.instance.currentUser!;
  String selectedItem = 'Manager';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
            onTap: () async => context.read<AuthProvider>().googleLogout(),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(user.photoURL!),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          user.displayName.toString(),
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey[100],
        elevation: 1.0,
        actions: [
          Center(
            child: PopupMenuButton(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 3.0, horizontal: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[300]),
                  child: Row(
                    children: [
                      Text(selectedItem,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[900])),
                      Icon(
                        MdiIcons.chevronDown,
                        color: Colors.grey[900],
                      )
                    ],
                  ),
                ),
                onSelected: (value) {
                  // your logic
                  setState(() {
                    selectedItem = value.toString();
                  });
                },
                itemBuilder: (context) {
                  return const [
                    PopupMenuItem(
                      value: 'Manager',
                      child: Text("Manager"),
                    ),
                    PopupMenuItem(
                      value: 'Retador',
                      child: Text("Retador"),
                    ),
                  ];
                }),
          )
        ],
      ),
      body: selectedItem == 'Manager' ? const Manager() : const Challenge(),
    );
  }
}
