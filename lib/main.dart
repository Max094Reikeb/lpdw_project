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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
      ),
      home: const MyHomePage(title: 'Series les plus populaires'),
      color: Colors.black,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final String imageUrl = 'https://example.com/your-image.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            Text('<', style: TextStyle(color: Colors.white)),
            SizedBox(width: 50),
            Text(title, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 200,
            height: 300,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                'The missions of the Strategic Homeland Intervention, '
                'Enforcement and Logistics Division. A small team of operatives led by '
                'Agent Coulson (Clark Gregg) who must deal with the strange new world of "superheroes" '
                'after the "Battle of New York", protecting the public from new and unknown threats.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
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
