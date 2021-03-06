import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MovieList.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          'Movies',
          style: GoogleFonts.pacifico(color: Colors.black, fontSize: 30.0),
        ),
      ),
      body: MovieList(),
    );
  }
}