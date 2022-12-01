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
        padding: const EdgeInsets.only(left: 18, right: 18,
        top: 20),
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
              color: const Color(0xFF6D747A)
            ),
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
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.book_outlined,
                        color: Color(0xFF598BED),), // ic
                        SizedBox(width: 10,),// on
                        Text("Programs",
                        style: TextStyle(
                          color: Color(0xFF598BED)
                        ),), // text
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
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.help,
                          color: Color(0xFF598BED),), // ic
                        SizedBox(width: 10,),// on
                        Text("Get Help",
                          style: TextStyle(
                              color: Color(0xFF598BED)
                          ),), // text
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
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.import_contacts,
                          color: Color(0xFF598BED),), // ic
                        SizedBox(width: 10,),// on
                        Text("Learn",
                          style: TextStyle(
                              color: Color(0xFF598BED)
                          ),), // text
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
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.insert_chart,
                          color: Color(0xFF598BED),), // ic
                        SizedBox(width: 10,),// on
                        Text("DD Tracker",
                          style: TextStyle(
                              color: Color(0xFF598BED)
                          ),), // text
                      ],
                    ),
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
