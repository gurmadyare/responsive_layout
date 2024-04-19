import 'package:flutter/material.dart';
import 'package:practice_responsiveness/responsive/desktop_scaffold.dart';
import 'package:practice_responsiveness/responsive/mobile_scaffold.dart';
import 'package:practice_responsiveness/responsive/responsive_layout.dart';
import 'package:practice_responsiveness/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive layout',
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
