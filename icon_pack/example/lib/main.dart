import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static final icons = [
    // IconModel(icon: FreudSolidIcons.backspace, name: 'Solid Backspace'),
    // IconModel(icon: FreudMonotoneIcons.gear, name: 'Monotone Gear'),
    // IconModel(icon: FreudSolidIcons.activityCycling, name: 'Solid Activity cycling'),
    // IconModel(icon: FreudMonotoneIcons.moon, name: 'Monotone Moon'),
    // IconModel(icon: FreudSolidIcons.addRound, name: 'Solid Add round'),
    // IconModel(icon: FreudMonotoneIcons.activityWalking, name: 'Monotone Activity walking'),
    // IconModel(icon: FreudSolidIcons.arrowTopRightRound, name: 'Solid Arrow top right round'),
    // IconModel(icon: FreudMonotoneIcons.arrowDropDownMd, name: 'Monotone Arrow dropdown md'),
    // IconModel(icon: FreudSolidIcons.cart, name: 'Solid Cart'),
    // IconModel(icon: FreudMonotoneIcons.arrowDropUpMd, name: 'Monotone Arrow dropUp md'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Freud Icons Demo'),
        ),
        body: GridView.builder(
          itemCount: icons.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 8),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(icons[index].icon, size: 50.0),
                  const SizedBox(height: 30.0),
                  Text(icons[index].name, textAlign: TextAlign.center),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

/// A class that represents an Icon object
class IconModel {
  final IconData icon;
  final String name;

  const IconModel({required this.icon, required this.name});
}
