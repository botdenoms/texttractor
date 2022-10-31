import 'package:flutter/material.dart';

import './widgets/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            elevation: 1,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text(
              'Texttractor',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size(
                screen.width,
                screen.height * .2,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    const Text('Options'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OptionsCard(
                          title: 'camera',
                          icon: Icons.camera,
                          color: Colors.purpleAccent,
                          function: () {},
                        ),
                        OptionsCard(
                          title: 'Docx',
                          icon: Icons.document_scanner_rounded,
                          color: Colors.redAccent,
                          function: () {},
                        ),
                        OptionsCard(
                          title: 'Text file',
                          icon: Icons.text_format_rounded,
                          color: Colors.greenAccent,
                          function: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('History'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return const HistoryCard();
              },
              childCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
