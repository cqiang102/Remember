import 'package:flutter/material.dart';

import 'add_page.dart';

/// author : lacia
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
            // isScrollable: true,
            enableFeedback: true,
            indicatorSize: TabBarIndicatorSize.label,
            controller: _controller,
            tabs: const [Tab(text: '记一下'), Tab(text: '看一下')]),
      ),
      body: TabBarView(controller: _controller, children: [
        const AddPage(),
        Container(
          color: Colors.blue,
        ),
      ]),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }
}
