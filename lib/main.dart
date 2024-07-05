import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:morfhi/providers/authentication.dart';
import 'package:morfhi/screens/auth/forgotpassword.dart';
import 'package:morfhi/screens/auth/login.dart';
import 'package:morfhi/screens/auth/register.dart';
import 'package:morfhi/screens/getstarted.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Color.fromRGBO(80, 126, 225, 1),
      statusBarColor: Color.fromRGBO(80, 126, 225, 1)));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Morfhi",
      initialRoute: '/',
      routes: {
        '/': (context) => const GetStarted(),
        '/register': (context) => const Register(),
        '/login': (context) => const Login(),
        '/forgot': (context) => const ForgotPassword(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
