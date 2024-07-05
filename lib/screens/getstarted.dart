import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:morfhi/screens/auth/authgate.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  Future<void> goToHome() async {
    await Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const AuthGate()),
        (Route<dynamic> route) => false,
      );
    });
  }

  @override
  void initState() {
    super.initState();
    goToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(80, 126, 225, 1),
      body: SafeArea(
        child: Bounce(
          child: Center(
              child: Image.asset(
            'assets/name.png',
            width: 150.0,
          )),
        ),
      ),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Version: Alpha',
                style: TextStyle(color: Colors.white),
              ),
            ],
          )),
    );
  }
}
