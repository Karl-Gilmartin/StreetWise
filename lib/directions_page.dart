import 'package:flutter/material.dart';

class DirectionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Directions'),
        backgroundColor: Colors.purple.shade900, // Adjust the color to match your theme
      ),
      body: Column(
        children: [
          // Search bar at the top
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Street Name....',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          // Image of the map
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0), // Adjust the border radius as needed
                child: Image.asset(
                  'assets/images/map.png', // Replace with your map image asset path
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Direction details card
          Card(
            margin: EdgeInsets.all(16.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text('Directions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('From: The Belltable', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Text('To: Savoy Hotel', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('Time of travel: 18:45', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Text(
                    'Details: The route has been changed as a safety precaution and may not be the quickest route',
                    style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ),
          // Bottom buttons
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement settings navigation
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple.shade900, // Background color
                  ),
                  child: Text('Settings'),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement home navigation
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple.shade900, // Background color
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0), // Add your desired padding
                      child: Text('Start Navigation', style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
