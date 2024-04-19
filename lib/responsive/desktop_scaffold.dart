import 'package:flutter/material.dart';
import 'package:practice_responsiveness/models/constants.dart';
import 'package:practice_responsiveness/util/my_box.dart';
import 'package:practice_responsiveness/util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBgColor,
      appBar: myAppBar,
      body: Row(
        children: [
          //open drawer
          myDrawer,

          //rest of the body
          Expanded(
            flex: 3,
            child: Column(
              children: [
                //4 boxes on the top
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        padding: const EdgeInsets.all(10),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return const MyBox();
                        }),
                  ),
                ),

                //tiles below it
                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return const MyTile();
                        }))
              ],
            ),
          ),

          const Expanded(child: Column())
        ],
      ),
    );
  }
}
