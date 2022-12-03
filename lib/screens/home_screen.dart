import 'package:flutter/material.dart';
import 'package:flutter_test1/widgets/heading.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colours.dart';
import '../widgets/tab_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFFFFFF),
        leading: Icon(
          Icons.sort,
          color: Colours.appBarIconGrey,
        ),
        actions:  [
          Icon(
            Icons.forum_outlined,
            color: Colours.appBarIconGrey,
          ),
          const SizedBox(
            width: 15,
          ),
          Icon(
            Icons.notifications,
            color: Colours.appBarIconGrey,
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 20),
        children: [
          Text(
            'Hello, Priya!',
            style: GoogleFonts.lora(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'What do you wanna learn today?',
            style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colours.textGrey),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 130,
            child: GridView.count(
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              crossAxisCount: 2,
              childAspectRatio: 3,
              children: <Widget>[
                TabButton(
                    text: 'Programs', icon: Icons.book_outlined, action: () {}),
                TabButton(text: 'Get Help', icon: Icons.help, action: () {}),
                TabButton(
                    text: 'Learn', icon: Icons.import_contacts, action: () {}),
                TabButton(
                    text: 'DD Tracker',
                    icon: Icons.insert_chart,
                    action: () {}),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Heading(
            headingText: 'Programs for you',
            action: () {},
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 240,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFEBEDF0)),
                      color: const Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colours.shadow,
                          blurRadius: 4.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(
                        image: AssetImage('assets/card 1.png'),
                        fit: BoxFit.fill,
                        height: 140,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'LIFESTYLE',
                          style: TextStyle(
                              fontSize: 12, color: Colours.primaryBlue),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10),
                          child: Text(
                            'A complete guide for your new born baby',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          '16 lessons',
                          style:
                              TextStyle(fontSize: 12, color: Colours.textGrey),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 240,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFEBEDF0)),
                      color: const Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colours.shadow,
                          blurRadius: 4.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(
                        image: AssetImage('assets/card 1.png'),
                        fit: BoxFit.fill,
                        height: 140,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'WORKING PARENTS',
                          style: TextStyle(
                              fontSize: 12, color: Colours.primaryBlue),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10),
                          child: Text(
                            'Understanding Human behaviour',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          '12 lessons',
                          style:
                              TextStyle(fontSize: 12, color: Colours.textGrey),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Heading(headingText: 'Events and experiences', action: () {}),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 240,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFEBEDF0)),
                      color: const Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colours.shadow,
                          blurRadius: 4.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(
                        image: AssetImage('assets/card 2.png'),
                        fit: BoxFit.fill,
                        height: 140,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'BEHAVIOUR',
                          style: TextStyle(
                              fontSize: 12, color: Colours.primaryBlue),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10),
                          child: Text(
                            'Understanding of human behaviour',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      // const SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '13 Feb, Sunday',
                              style: TextStyle(
                                  fontSize: 12, color: Colours.textGrey),
                            ),
                            OutlinedButton(
                              onPressed: null,
                              style: ButtonStyle(
                                side: MaterialStateProperty.all(
                                    BorderSide(color: Colours.primaryBlue)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0))),
                              ),
                              child: Text(
                                "Book",
                                style: TextStyle(color: Colours.primaryBlue),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 240,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFEBEDF0)),
                      color: const Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colours.shadow,
                          blurRadius: 4.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(
                        image: AssetImage('assets/card 2.png'),
                        fit: BoxFit.fill,
                        height: 140,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'BEHAVIOUR',
                          style: TextStyle(
                              fontSize: 12, color: Colours.primaryBlue),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10),
                          child: Text(
                            'Understanding of human behaviour',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      // const SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '13 Feb, Sunday',
                              style: TextStyle(
                                  fontSize: 12, color: Colours.textGrey),
                            ),
                            OutlinedButton(
                              onPressed: null,
                              style: ButtonStyle(
                                side: MaterialStateProperty.all(
                                    BorderSide(color: Colours.primaryBlue)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0))),
                              ),
                              child: Text(
                                "Book",
                                style: TextStyle(color: Colours.primaryBlue),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Heading(headingText: 'Lessons for you', action: () {}),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 240,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFEBEDF0)),
                      color: const Color(0xFFFFFFFF),
                      boxShadow:  [
                        BoxShadow(
                          color: Colours.shadow,
                          blurRadius: 4.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(
                        image: AssetImage('assets/card 2.png'),
                        fit: BoxFit.fill,
                        height: 140,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'BEHAVIOUR',
                          style: TextStyle(
                              fontSize: 12, color: Colours.primaryBlue),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10),
                          child: Text(
                            'Understanding of human behaviour',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '3 min',
                              style: TextStyle(
                                  fontSize: 12, color: Colours.textGrey),
                            ),
                            const Icon(Icons.lock_outline)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 240,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFEBEDF0)),
                      color: const Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colours.shadow,
                          blurRadius: 4.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(
                        image: AssetImage('assets/card 2.png'),
                        fit: BoxFit.fill,
                        height: 140,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'BEHAVIOUR',
                          style: TextStyle(
                              fontSize: 12, color: Colours.primaryBlue),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10),
                          child: Text(
                            'Understanding of human behaviour',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Text(
                              '1 min',
                              style: TextStyle(
                                  fontSize: 12, color: Colours.textGrey),
                            ),
                            const Icon(Icons.lock_outline)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
