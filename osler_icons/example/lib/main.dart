import 'package:flutter/material.dart';
import 'package:osler_icons/osler_icons.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static final icons = [
    IconModel(icon: OslerSolidIcons.backspace, name: 'Solid Backspace'),
    IconModel(icon: OslerMonotoneIcons.camera, name: 'Monotone Camera'),
    IconModel(icon: OslerSolidIcons.activityHiking, name: 'Solid Activity hiking'),
    IconModel(icon: OslerMonotoneIcons.moon, name: 'Monotone Moon'),
    IconModel(icon: OslerSolidIcons.dna, name: 'Solid DNA'),
    IconModel(icon: OslerMonotoneIcons.activityWalking, name: 'Monotone Activity walking'),
    IconModel(icon: OslerSolidIcons.magic, name: 'Solid Magic'),
    IconModel(icon: OslerMonotoneIcons.drag, name: 'Monotone Drag'),
    IconModel(icon: OslerSolidIcons.cart, name: 'Solid Cart'),
    IconModel(icon: OslerMonotoneIcons.headDigital, name: 'Monotone Head Digital'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Osler Icons Demo'),
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
