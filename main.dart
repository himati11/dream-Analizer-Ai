import 'package:flutter/material.dart';
impimportort 'package:google_fonts/google_fonts.dart';

voidvoid main() {
importimportAppApp(DreamAnalyzerApp());
}

class DreamAnalyzerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primaryColor: Colors.deepPurple,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark theme
      appBar: AppBar(
        title: Text("Dream Analyzer AI"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton("Dream Journal", Icons.book, Colors.blue, () {}),
            CustomButton("AI Analysis", Icons.analytics, Colors.green, () {}),
            CustomButton("Community", Icons.group, Colors.orange, () {}),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  CustomButton(this.title, this.icon, this.color, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        ),
        onPressed: onTap,
        icon: Icon(icon, color: Colors.white),
        label: Text(title, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
