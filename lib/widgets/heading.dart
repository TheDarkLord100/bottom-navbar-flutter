import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading extends StatelessWidget {
  const Heading({super.key, required this.headingText, required this.action});

  final String headingText;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          headingText,
          style:
          GoogleFonts.lora(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        TextButton(
          onPressed: () => action,
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
    );
  }
}
