import 'package:flutter/material.dart';
import 'package:flutter_page_view_nested_utils/page_view_nested_utils.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({Key? key}) : super(key: key);

  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  late PageController _pageController;
  late PageViewNestedUtils _pageViewScrollUtils;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageViewScrollUtils = PageViewNestedUtils(_pageController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Try scroll"),
      ),
      body: Container(
        child: NotificationListener(
          onNotification: _pageViewScrollUtils.handleNotification,
          child: PageView(
            controller: _pageController,
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Column(
                    children: [
                      Expanded(child: Page2()),
                      SizedBox(
                        height: 16,
                      ),
                      Expanded(child: Page2()),
                    ],
                  ),
                ),
              ),
              Center(
                child: Text("b"),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Column(
                    children: [
                      Expanded(child: Page2()),
                      SizedBox(
                        height: 16,
                      ),
                      Expanded(child: Page2()),
                    ],
                  ),
                ),
              ),
              Center(
                child: Text("d"),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Column(
                    children: [
                      Expanded(child: Page2()),
                      SizedBox(
                        height: 16,
                      ),
                      Expanded(child: Page2()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: PageView(
        children: [
          Center(
            child: Text("a"),
          ),
          Center(
            child: Text("b"),
          ),
          Center(
            child: Text("c"),
          ),
          Center(
            child: Text("d"),
          ),
          Center(
            child: Text("e"),
          ),
        ],
      ),
    );
  }
}
