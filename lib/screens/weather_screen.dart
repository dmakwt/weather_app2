import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  final String city;

  WeatherScreen(this.city);

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.city),
      ),
    );
  }
}
