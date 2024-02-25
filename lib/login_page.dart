import 'package:flutter/material.dart';
import 'package:street_wise/landing_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top container with logo and white background
          Expanded(
            flex:
                2, // Adjust flex factor to change the space ratio of the top container
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple.shade900,
                borderRadius: BorderRadius.circular(20), // Adjust the radius value as per your preference
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Logo
                    Image.asset(
                      'assets/images/streetwise_logo_white.png', // Replace with your logo
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Navigate Safe, Navigate Smart', // Replace with your app name
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    // You can add your login text form fields here
                  ],
                ),
              ),
            ),
          ),
          // Bottom container with purple background
          Expanded(
            flex:
                2, // Adjust flex factor to change the space ratio of the bottom container
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                    10), // Adjust the radius value as per your preference
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(25), // Add desired padding value
                      child: TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          labelText: 'Name',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(25), // Add desired padding value
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    // Add additional widgets or text if you want
                    
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle your register logic here
                          },
                          child: Text('Register'),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage(name: _nameController.text)));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple.shade900, // Button background color
                        onPrimary: Colors.white, // Button text color
                      ),
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
