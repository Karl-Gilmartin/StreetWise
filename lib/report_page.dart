import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';

class ReportPage extends StatefulWidget {
  final String name;

  const ReportPage({Key? key, required this.name}) : super(key: key);

  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  String? _location = 'Fetching...';
  String _time = '';
  final TextEditingController _detailsController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    _time = DateFormat('yyyy-MM-dd – kk:mm').format(DateTime.now());
  }

  Future<void> _getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        setState(() {
          _location = 'Location permission denied';
        });
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      setState(() {
        _location = 'Location permissions are permanently denied';
      });
      return;
    }

    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      _location = '${position.latitude}, ${position.longitude}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${widget.name}'),
            Text('Location: $_location'),
            Text('Time: $_time'),
            TextField(
              controller: _detailsController,
              decoration: InputDecoration(labelText: 'Details'),
              keyboardType: TextInputType.multiline,
              maxLines: null, // Makes it grow as user types
            ),
          ],
        ),
      ),
    );
  }
}
