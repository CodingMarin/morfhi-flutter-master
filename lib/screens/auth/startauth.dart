import 'package:flutter/material.dart';
import 'package:morfhi/providers/authentication.dart';
import 'package:provider/provider.dart';

class StartAuth extends StatefulWidget {
  const StartAuth({super.key});

  @override
  State<StartAuth> createState() => _StartAuthState();
}

class _StartAuthState extends State<StartAuth> {
  // bool isLoadingGoogle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/Rectangle3.png'),
                  Image.asset(
                    'assets/Vectorback-logo.png',
                  ),
                ],
              ),
              const SizedBox(height: 60.0),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(horizontal: 0))),
                onPressed: () => Navigator.pushNamed(context, '/register'),
                child: Ink(
                  width: 250.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    gradient: LinearGradient(
                      colors: [Color(0xff1e51df), Color(0xff537ef7)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Container(
                      padding: const EdgeInsets.all(10.0),
                      constraints:
                          const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
                      alignment: Alignment.center,
                      child: const Text(
                        "Crear Cuenta",
                        style: TextStyle(fontSize: 18.0),
                      )),
                ),
              ),
              const SizedBox(height: 15.0),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(horizontal: 0))),
                onPressed: () => Navigator.pushNamed(context, '/login'),
                child: Ink(
                  width: 250.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    color: Color(0xffEAEAEA),
                  ),
                  child: Container(
                      padding: const EdgeInsets.all(10.0),
                      constraints:
                          const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
                      alignment: Alignment.center,
                      child: const Text(
                        "Iniciar Session",
                        style: TextStyle(fontSize: 18.0, color: Colors.black),
                      )),
                ),
              ),
              const SizedBox(height: 20.0),
              // !isLoadingGoogle
              //     ?
              ElevatedButton.icon(
                  style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 15.0)),
                      fixedSize: MaterialStateProperty.all(const Size(250, 40)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 31, 31, 31))),
                  // onPressed: () =>
                  onPressed: () {
                    context.read<AuthProvider>().googleLogin();
                  },
                  // onPressed: () => _googleSignIn(context),
                  icon: Image.asset('assets/google.png'),
                  label: const Text('Inicia con Google')),
              // : const Center(
              //     child: CircularProgressIndicator(),
              //   ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "¿Necesitas ayuda?",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Contactanos",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(80, 126, 225, 1)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Version: Alpha',
              ),
            ],
          )),
    );
  }
}
