import 'package:flutter/material.dart';
import 'package:flutter_page_view_nested_utils/tabbar_view.dart';

class TabBarViewPage extends StatefulWidget {
  const TabBarViewPage({Key? key}) : super(key: key);

  @override
  State<TabBarViewPage> createState() => _TabBarViewPageState();
}

class _TabBarViewPageState extends State<TabBarViewPage>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          isScrollable: true,
          controller: _controller,
          tabs: [
            Tab(
              text: "体育",
            ),
            Tab(
              text: "音乐",
            ),
            Tab(
              text: "艺术",
            ),
            Tab(
              text: "军事",
            ),
            Tab(
              text: "汽车",
            ),
          ],
        ),
      ),
      body: NestedTabBarView(
        controller: _controller,
        children: [
          Page2(),
          Center(
            child: Text("体育"),
          ),
          Center(
            child: Text("体育"),
          ),
          Page2(),
          Page2(),
        ],
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          labelColor: Colors.black87,
          isScrollable: true,
          controller: _controller,
          tabs: [
            Tab(
              text: "体育",
            ),
            Tab(
              text: "音乐",
            ),
            Tab(
              text: "艺术",
            ),
            Tab(
              text: "军事",
            ),
            Tab(
              text: "汽车",
            ),
          ],
        ),
        Expanded(
            child: NestedTabBarView(
          controller: _controller,
          children: [
            Center(
              child: Text("体育"),
            ),
            Center(
              child: Text("体育"),
            ),
            Center(
              child: Text("体育"),
            ),
            Center(
              child: Text("体育"),
            ),
            Center(
              child: Text("体育"),
            ),
          ],
        ))
      ],
    );
  }
}
