import 'package:flutter/material.dart';
import 'package:nightingale_icons/nightingale_icons.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static final icons = [
    IconModel(icon: NightingaleSolidIcons.backspace, name: 'Solid Backspace'),
    IconModel(icon: NightingaleMonotoneIcons.micDisabled, name: 'Monotone Mic disabled'),
    IconModel(icon: NightingaleSolidIcons.activityHiking, name: 'Solid Activity hiking'),
    IconModel(icon: NightingaleMonotoneIcons.moon, name: 'Monotone Moon'),
    IconModel(icon: NightingaleSolidIcons.anatomyHeartbeat, name: 'Solid Anatomy heartbeat'),
    IconModel(icon: NightingaleMonotoneIcons.activityWalking, name: 'Monotone Activity walking'),
    IconModel(icon: NightingaleSolidIcons.magic, name: 'Solid Magic'),
    IconModel(icon: NightingaleMonotoneIcons.drag, name: 'Monotone Drag'),
    IconModel(icon: NightingaleSolidIcons.cart, name: 'Solid Cart'),
    IconModel(icon: NightingaleMonotoneIcons.babyToddlerFace, name: 'Monotone Baby toddler face'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Nightingale Icons Demo'),
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
