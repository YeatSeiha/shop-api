import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), // Set the home screen here
      builder: DevicePreview.appBuilder, // Enables device preview
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            'Legend Cinema',
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              // Handle logout action
            },
            child: Text(
              'Logout',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("seiha"),
              accountEmail: Text("seiha@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage("https://picsum.photos/200"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contact Us"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log out"),
            ),
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2, // Two columns
        padding: EdgeInsets.all(8.0),
        children: List.generate(5, (index) {
          IconData? iconData; // Make iconData nullable
          String text = ''; // Initialize text

          switch (index) {
            case 0:
              iconData = Icons.person;
              text = 'User';
              break;
            case 1:
              iconData = Icons.contact_mail;
              text = 'Contact Us';
              break;
            case 2:
              iconData = Icons.group;
              text = 'Group';
              break;
            case 3:
              iconData = Icons.description; // Document icon
              text = 'Document';
              break;
            case 4:
              iconData = Icons.departure_board; // List icon
              text = 'List';
              break;
          }

          return GestureDetector(
            onTap: () {
              // Navigate to a new screen based on the tapped item
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserScreen()),
                );
              }
              // Add more navigation cases if needed
            },
            child: Card(
              color: Colors.red,
              margin: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(iconData, color: Colors.white, size: 40),
                  SizedBox(height: 8), // Space between icon and text
                  Text(
                    text,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Screen'),
        backgroundColor: Colors.red,
      ),
      body: Center(child: Text('User Details Here')),
    );
  }
}
