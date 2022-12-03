import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  const TabButton({Key? key, required this.text, required this.icon, required this.action}) : super(key: key);

  final String text;
  final IconData icon;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => action,
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
          children: <Widget>[
            Icon(
              icon,
              color: const Color(0xFF598BED),
            ), // ic
            const SizedBox(
              width: 10,
            ), // on
            Text(
              text,
              style: const TextStyle(color: Color(0xFF598BED)),
            ), // text
          ],
        ),
      ),
    );
  }
}
