import 'package:flutter/material.dart';
import 'package:weather_app/screens/weather_screen.dart';
import 'package:weather_app/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();

    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('Weather APP'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 35,
                right: 35,
                top: 20,
                bottom: 50,
              ),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(hintText: 'City'),
              ),
            ),
            TextButton.icon(
              label: Text(
                'Search',
                style: TextStyle(fontSize: 24),
              ),
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return WeatherScreen(_textEditingController.text);
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
