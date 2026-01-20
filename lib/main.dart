import 'package:flutter/material.dart';
import 'package:reminder_app/app.rout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
       title: 'Reminder App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
    
  }
}
