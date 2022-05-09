import 'package:flutter/material.dart';
import 'widgets/bottom_navigation_bar.dart';

class LocationPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'M-Car',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF8F8F8),
        textTheme: Theme.of(context).textTheme.apply(displayColor: Color(
            0xFF1F0E0E),),
      ),
      home: LocationScreen(),
    );
  }
}

class LocationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Map(),
    );
  }
}

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "aaa",
    );
  }
}