import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
//https://help.syncfusion.com/flutter/circular-charts/chart-types/pie-chart
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Piechart',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Piechart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Stats> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      
    return SafeArea(
        child: Scaffold(
            body: SfCircularChart(
      title:
          ChartTitle(text: 'Overall Stats of Personal Finance'),
      //legend:
        //  Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
      tooltipBehavior: _tooltipBehavior,
      series: <CircularSeries>[
        PieSeries<Stats, String>(
            dataSource: _chartData,
             pointColorMapper:(Stats data,  _) => data.color,
            xValueMapper: (Stats data, _) => data.stats,
            yValueMapper: (Stats data, _) => data.percent,
            dataLabelSettings: DataLabelSettings(isVisible: false),
            enableTooltip: true,
            )],
    )));
  }

  List<Stats> getChartData() {
    final List<Stats> chartData = [
      Stats('Wrong', 20, Color.fromRGBO(242, 83, 85, 75)),
      Stats('Skipped', 10, Color.fromRGBO(239, 242, 62, 75)),
      Stats('Correct', 70, Color.fromRGBO(6, 194, 106, 75)),
    ]; 
    return chartData;
  }
}

class Stats {
  Stats(this.stats, this.percent, this.color);
  final String stats;
  final int percent;
  final Color color;
}
