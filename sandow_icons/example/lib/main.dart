import 'package:flutter/material.dart';
import 'package:sandow_icons/sandow_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sandow Icons Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Sandow Icons Demo'),
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
    IconModel(icon: SandowSolidIcons.activityBoxing, name: 'Solid Activity boxing'),
    IconModel(icon: SandowMonotoneIcons.activityHiking, name: 'Monotone Activity hiking'),
    IconModel(icon: SandowSolidIcons.activityCyclingBiking, name: 'Solid Activity cycling biking'),
    IconModel(icon: SandowMonotoneIcons.activityKarate, name: 'Monotone Activity karate'),
    IconModel(icon: SandowSolidIcons.addPlus, name: 'Solid Add plus'),
    IconModel(icon: SandowMonotoneIcons.activityWalking, name: 'Monotone Activity walking'),
    IconModel(icon: SandowSolidIcons.arrowRightSquare, name: 'Solid Arrow right square'),
    IconModel(icon: SandowMonotoneIcons.arrowDropDownMd, name: 'Monotone Arrow dropdown md'),
    IconModel(icon: SandowSolidIcons.cart, name: 'Solid Cart'),
    IconModel(icon: SandowMonotoneIcons.arrowDropUpMd, name: 'Monotone Arrow dropUp md'),
    IconModel(icon: SandowSolidIcons.camera, name: 'Solid Camera'),
    IconModel(icon: SandowMonotoneIcons.extraSolid, name: 'Monotone Extra solid'),
    IconModel(icon: SandowSolidIcons.email, name: 'Solid Email'),
    IconModel(icon: SandowMonotoneIcons.emergency, name: 'Monotone Emergency'),
    IconModel(icon: SandowSolidIcons.headHeart, name: 'Solid Head heart'),
    IconModel(icon: SandowMonotoneIcons.micDisabled, name: 'Monotone Mic Disabled'),
    IconModel(icon: SandowSolidIcons.wallet, name: 'Solid Wallet'),
    IconModel(icon: SandowMonotoneIcons.moon, name: 'Monotone Moon'),
    IconModel(icon: SandowSolidIcons.warning, name: 'Solid Warning'),
    IconModel(icon: SandowMonotoneIcons.moreVertial, name: 'Monotone More vertial'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
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
    );
  }
}

/// A class that represents an Icon object
class IconModel {
  final IconData icon;
  final String name;

  const IconModel({required this.icon, required this.name});
}
