import 'package:flutter/material.dart';
import 'package:flutter_dwa/pages/home/main_page.dart';
import 'package:flutter_dwa/pages/sign_in_page.dart';
import 'package:flutter_dwa/pages/sign_up_page.dart';
import 'package:flutter_dwa/pages/splash_page.dart';
import 'package:flutter_dwa/providers/auth_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
        },
      ),
    );
  }
}
