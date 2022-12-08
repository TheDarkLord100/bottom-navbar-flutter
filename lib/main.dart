import 'package:flutter/material.dart';
import 'package:flutter_test1/services/http_service.dart';

import 'screens/nav_bar_screen.dart';

void main() async {
  HTTPService httpService = HTTPService();
  await httpService.getPrograms();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBarScreen(),
    );
  }
}
