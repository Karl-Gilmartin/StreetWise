// A mobile app page that shows a map using google maps api. It adds a layer of heat around certain points which are given.

import 'package:flutter/material.dart';

class HeatMap extends StatefulWidget {
  const HeatMap({Key? key}) : super(key: key);

  @override
  _HeatMapState createState() => _HeatMapState();
}

class _HeatMapState extends State<HeatMap> {
  String selectedCity = 'San Francisco';

  void changeCity(String city) {
    setState(() {
      selectedCity = city;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heatmap'),
        backgroundColor: Colors.purple.shade900,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 300),
            Text(
              "$selectedCity Heatmap",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => changeCity('New York'),
              child: Text('Change City'),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => {},
              child: Padding(
                padding: EdgeInsets.all(15.0), // Adjust the padding as needed
                child: Text(
                  'Show Details of Reports',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )
            

            // Add your map here
            // Add your heat map layer here
          ],
        ),
      ),
    );
  }
}
