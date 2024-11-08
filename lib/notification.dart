import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    DevicePreview(
        builder: (context) =>
            MyApp()
    )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Legend Cinema 4D',
            style: TextStyle(color: Colors.white), // Set the text color to white
          ),
    actions: [
    TextButton(
    onPressed: () {
    // Handle logout logic
    },
    child: Text(
    'LOGOUT',
    style: TextStyle(color: Colors.white),
    ),
    ),
    ],
    backgroundColor: Colors.red,
    ),
    drawer: Drawer(
    child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
    // Drawer header
    DrawerHeader(
    decoration: BoxDecoration(
    color: Colors.red,
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Icon(Icons.person, size: 60, color: Colors.white),
    SizedBox(height: 10),
    Text(
    'Z3yha',
    style: TextStyle(
    color: Colors.white,
    fontSize: 24,
    ),
    ),
    Text(
    'Admin',
    style: TextStyle(
    color: Colors.white70,
    fontSize: 16,
    ),
    ),
    ],
    ),
    ),
    // Drawer items
    ListTile(
    leading: Icon(Icons.dashboard),
    title: Text('Dashboard'),
    onTap: () {
    // Handle dashboard navigation
    Navigator.pop(context); // Close drawer after tap
    },
    ),
    ListTile(
    leading: Icon(Icons.event),
    title: Text('Events'),
    onTap: () {
    // Handle events navigation
    Navigator.pop(context);
    },
    ),
    ListTile(
    leading: Icon(Icons.settings),
    title: Text('Settings'),
    onTap: () {
    // Handle settings navigation
    Navigator.pop(context);
    },
    ),
    ListTile(
    leading: Icon(Icons.logout),
    title: Text('Logout'),
    onTap: () {
    // Handle logout logic
    Navigator.pop(context);
    },
    ),
    ],
    ),
    ),
    body: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    // Active MIRT and Chair Actions button
    Text(
    'About Me',
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 10),
    ElevatedButton(
    onPressed: () {
    // Handle chair actions
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.red,
    padding: EdgeInsets.symmetric(vertical: 15),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.event_note,
        color: Colors.white, // Change to your desired color
      ),
      SizedBox(width: 10),

        Text(
          'Notification Ticket',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16,
          ),
        ),
    ],
    ),
    ),
    SizedBox(height: 20),
    // Fire Event section

      Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fire Event',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text('11:30 am  |  10/10/2018'),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.red),
                  SizedBox(width: 5),
                  Text('Building #7 (IT department)'),
                ],
              ),
              SizedBox(height: 5),
              Text('Primary Emergency Operation Centre'),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Close MIRT logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Text(
                  'Close',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 20),
      // Notified users list
      Expanded(
        child: ListView(
          children: [
            UserNotification(
              name: 'Lyda',
              message: 'Did not respond in time - declined',
            ),
            UserNotification(
              name: 'Sokthen',
              message: 'Notified at 11:30 am, 10/10/18',
            ),
            UserNotification(
              name: 'Mno',
              message: 'Yet to acknowledge receipt',
            ),
            UserNotification(
              name: 'Hov',
              message: 'Yet to acknowledge receipt',
            ),
          ],
        ),
      ),
    ],
    ),
    ),
        ),
    );
  }
}

class UserNotification extends StatelessWidget {
  final String name;
  final String message;

  const UserNotification({
    required this.name,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        child: Icon(Icons.person, color: Colors.white),
      ),
      title: Text(name),
      subtitle: Text(message),
    );
  }
}
