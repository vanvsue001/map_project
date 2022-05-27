import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Map App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late MapShapeSource _dataSource;

  @override
  void initState() {
    _dataSource = const MapShapeSource.asset(
      'assets/uvu_map.json',
      shapeDataField: 'NAME',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SfMaps(
          layers: [
            MapShapeLayer(source: _dataSource)
          ],
        ),
      ),
    );
  }

}
