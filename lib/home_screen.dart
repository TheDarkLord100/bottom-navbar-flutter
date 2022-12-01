import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFFFFFF),
        leading: const Icon(
          Icons.sort,
          color: Color(0xFF939CA3),
        ),
        actions: const [
          Icon(
            Icons.forum_outlined,
            color: Color(0xFF939CA3),
          ),
          SizedBox(width: 15,),
          Icon(
            Icons.notifications,
            color: Color(0xFF939CA3),
          ),
          SizedBox(width: 15,),
        ],
      ),
      body: ListView(
        children: [
          Text('Hello, Priya!')
        ],
      ),
    );
  }
}
