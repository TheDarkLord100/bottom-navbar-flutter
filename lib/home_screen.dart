import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        leading: const Icon(
          Icons.sort,
          color: Color(0xFF939CA3),
        ),
        actions: const [
          Icon(
            Icons.forum_outlined,
            color: Color(0xFF939CA3),
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.notifications,
            color: Color(0xFF939CA3),
          ),
          SizedBox(
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
                color: const Color(0xFF6D747A)),
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
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF598BED),
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Icon(
                          Icons.book_outlined,
                          color: Color(0xFF598BED),
                        ), // ic
                        SizedBox(
                          width: 10,
                        ), // on
                        Text(
                          "Programs",
                          style: TextStyle(color: Color(0xFF598BED)),
                        ), // text
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF598BED),
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Icon(
                          Icons.help,
                          color: Color(0xFF598BED),
                        ), // ic
                        SizedBox(
                          width: 10,
                        ), // on
                        Text(
                          "Get Help",
                          style: TextStyle(color: Color(0xFF598BED)),
                        ), // text
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF598BED),
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Icon(
                          Icons.import_contacts,
                          color: Color(0xFF598BED),
                        ), // ic
                        SizedBox(
                          width: 10,
                        ), // on
                        Text(
                          "Learn",
                          style: TextStyle(color: Color(0xFF598BED)),
                        ), // text
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF598BED),
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Icon(
                          Icons.insert_chart,
                          color: Color(0xFF598BED),
                        ), // ic
                        SizedBox(
                          width: 10,
                        ), // on
                        Text(
                          "DD Tracker",
                          style: TextStyle(color: Color(0xFF598BED)),
                        ), // text
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Programs for you',
                style:
                    GoogleFonts.lora(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'View all  ',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: const Color(0xFF6D747A)),
                    ),
                    const Icon(
                      Icons.arrow_right_alt_outlined,
                      color: Color(0xFF6D747A),
                    )
                  ],
                ),
              )
            ],
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
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFF0E443E),
                          blurRadius: 4.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Image(
                        image: AssetImage('assets/card 1.png'),
                        fit: BoxFit.fill,
                        height: 140,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'LIFESTYLE',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xFF5988ED)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10),
                          child: Text(
                          'A complete guide for your new born baby',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(padding: EdgeInsets.only(left: 10),
                        child: Text('16 lessons', style: TextStyle(fontSize: 12, color: Color(0xFF6D747A)),),
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
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFF0E443E),
                          blurRadius: 4.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Image(
                        image: AssetImage('assets/card 1.png'),
                        fit: BoxFit.fill,
                        height: 140,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'WORKING PARENTS',
                          style:
                          TextStyle(fontSize: 12, color: Color(0xFF5988ED)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10),
                          child: Text(
                            'Understanding Human behaviour',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(padding: EdgeInsets.only(left: 10),
                        child: Text('12 lessons', style: TextStyle(fontSize: 12, color: Color(0xFF6D747A)),),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
