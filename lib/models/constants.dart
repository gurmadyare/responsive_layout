import 'package:flutter/material.dart';

AppBar myAppBar = AppBar(
  backgroundColor: Colors.black,
);

Drawer myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: [
      //header
      const DrawerHeader(
        child: Icon(Icons.favorite),
      ),

      //below
      ListTile(
        leading: Icon(Icons.home, color: Colors.brown[900]),
        title: const Text("Home"),
      ),
      const SizedBox(height: 10),
      ListTile(
        leading: Icon(Icons.dashboard, color: Colors.brown[900]),
        title: const Text("Dashboard"),
      ),
      const SizedBox(height: 10),

      ListTile(
        leading: Icon(Icons.settings, color: Colors.brown[900]),
        title: const Text("Settings"),
      ),
      const SizedBox(height: 10),

      ListTile(
        leading: Icon(Icons.logout, color: Colors.brown[900]),
        title: const Text("Logout"),
      ),
    ],
  ),
);

var myDefaultBgColor = Colors.grey[300];
