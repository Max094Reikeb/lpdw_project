import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lpdw_project/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Series les plus populaires'),
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackground,
      appBar: AppBar(
        backgroundColor: AppColors.screenBackground,
        title: const Text(
          "Series les plus populaires",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int position) {
          return _buildSeriesCard();
        },
        itemCount: 100,
      ),
    );
  }

  Widget _buildSeriesCard() {
    return Card(
      color: AppColors.cardBackground,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 30,
              child: AspectRatio(
                aspectRatio: 1,
                child: Placeholder(), // Placeholder
              ),
            ),
            Expanded(
              flex: 70,
              child: Column(
                children: [
                  Text(
                    'Agents of child',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'res/svg/ic_publisher_bicolor.svg',
                        width: 15,
                        height: 12,
                      ),
                      Text('BLBLA')
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'res/svg/ic_tv_bicolor.svg',
                        width: 15,
                        height: 12,
                      ),
                      Text('BLBLA')
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'res/svg/ic_calendar_bicolor.svg',
                        width: 15,
                        height: 12,
                      ),
                      Text('BLBLA')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
