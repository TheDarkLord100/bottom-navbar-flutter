import 'package:flutter/material.dart';

import '../services/http_service.dart';
import 'nav_bar_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Future<void> _loadDetails() async {
    HTTPService httpService = HTTPService();
    await httpService.getPrograms();
    await httpService.getLessons();

    setState(() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const NavBarScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    _loadDetails();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
