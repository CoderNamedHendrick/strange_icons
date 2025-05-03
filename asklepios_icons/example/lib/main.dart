import 'package:asklepios_icons/asklepios_icons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Asklepios Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final icons = [
    IconModel(icon: AsklepiosSolidIcons.add, name: 'Add'),
    IconModel(icon: AsklepiosMonotoneIcons.flaskTriangle, name: 'Flask Triangle'),
    IconModel(icon: AsklepiosSolidIcons.camera, name: 'Camera'),
    IconModel(icon: AsklepiosMonotoneIcons.activityWalking, name: 'Activity Walking'),
    IconModel(icon: AsklepiosSolidIcons.addSquare, name: 'Add Square'),
    IconModel(icon: AsklepiosMonotoneIcons.add, name: 'Add'),
    IconModel(icon: AsklepiosSolidIcons.activityWalking, name: 'Activity Walking'),
    IconModel(icon: AsklepiosMonotoneIcons.direction, name: 'Direction'),
    IconModel(icon: AsklepiosSolidIcons.anatomyBrain, name: 'Anatomy Brain'),
    IconModel(icon: AsklepiosMonotoneIcons.cart, name: 'Cart'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
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
    );
  }
}

/// A class that represents an Icon object
class IconModel {
  final IconData icon;
  final String name;

  const IconModel({required this.icon, required this.name});
}
