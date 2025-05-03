import 'package:flutter/material.dart';
import 'package:strange_icons/strange_icons.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static final icons = [
    // solid icons
    IconModel(icon: AsklepiosSolidIcons.backspace, name: 'Asklepios Solid Backspace'),
    IconModel(icon: FreudSolidIcons.backspace, name: 'Freud Solid Backspace'),
    IconModel(icon: NightingaleSolidIcons.backspace, name: 'Nightingale Solid Backspace'),
    IconModel(icon: OslerSolidIcons.backspace, name: 'Osler Solid Backspace'),
    IconModel(icon: SandowSolidIcons.browserUser, name: 'Sandow Solid BrowserUser'),
    IconModel(icon: TuringSolidIcons.backspace, name: 'Osler Solid Backspace'),
    IconModel(icon: AsklepiosSolidIcons.camera, name: 'Asklepios Solid Camera'),
    IconModel(icon: FreudSolidIcons.activityCycling, name: 'Freud Solid ActivityCycling'),
    IconModel(icon: NightingaleSolidIcons.activityHiking, name: 'Nightingale Solid ActivityHiking'),
    IconModel(icon: OslerSolidIcons.activityHiking, name: 'Osler Solid ActivityHiking'),
    IconModel(icon: SandowSolidIcons.activityHiking, name: 'Sandow Solid ActivityHiking'),
    IconModel(icon: TuringSolidIcons.activityHiking, name: 'Turing Solid ActivityHiking'),

    // monotone icons
    IconModel(icon: AsklepiosMonotoneIcons.moon, name: 'Asklepios Monotone Moon'),
    IconModel(icon: FreudMonotoneIcons.moon, name: 'Freud Monotone Moon'),
    IconModel(icon: NightingaleMonotoneIcons.moon, name: 'Nightingale Monotone Moon'),
    IconModel(icon: OslerMonotoneIcons.moon, name: 'Osler Monotone Moon'),
    IconModel(icon: SandowMonotoneIcons.moon, name: 'Sandow Monotone Moon'),
    IconModel(icon: TuringMonotoneIcons.moon, name: 'Turing Monotone Moon'),
    IconModel(icon: AsklepiosMonotoneIcons.gear, name: 'Asklepios Monotone Gear'),
    IconModel(icon: FreudMonotoneIcons.gear, name: 'Freud Monotone Gear'),
    IconModel(icon: NightingaleMonotoneIcons.micDisabled, name: 'Nightingale Monotone MicDisabled'),
    IconModel(icon: OslerMonotoneIcons.gear, name: 'Osler Monotone Gear'),
    IconModel(icon: SandowMonotoneIcons.micDisabled, name: 'Sandow Monotone MicDisabled'),
    IconModel(icon: TuringMonotoneIcons.gear, name: 'Turing Monotone Gear'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Strange Icons Demo'),
        ),
        body: GridView.builder(
          itemCount: icons.length,
          padding: EdgeInsets.all(8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 8),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: <Widget>[
                  Icon(icons[index].icon, size: 30.0),
                  Text(icons[index].name, textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
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
