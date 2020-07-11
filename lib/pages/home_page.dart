import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  List<Widget> topTabs;
  int currentTopTabIndex;
  TabController topController;
  Function(int) onTopTabChanged;

  HomePage({
    Key key, this.topTabs, this.topController, this.onTopTabChanged, this.currentTopTabIndex
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 1), // changes position of shadow
                )
              ]
          ),
          child: TabBar(
            tabs: topTabs,
            controller: topController,
            labelColor: Theme.of(context).primaryColor,
            indicatorColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Colors.grey,
            onTap: (index) => {
              onTopTabChanged(index)
            },
          ),
        ),
        Expanded(
            child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    height: 100,
                    color: Colors.amber[600],
                    child: const Center(child: Text('Entry A')),
                  ),
                  Container(
                    height: 100,
                    color: Colors.amber[500],
                    child: const Center(child: Text('Entry B')),
                  ),
                  Container(
                    height: 100,
                    color: Colors.amber[100],
                    child: const Center(child: Text('Entry C')),
                  ),
                  Container(
                    height: 100,
                    color: Colors.amber[500],
                    child: const Center(child: Text('Entry B')),
                  ),
                  Container(
                    height: 100,
                    color: Colors.amber[100],
                    child: const Center(child: Text('Entry C')),
                  ),
                ]
            )
        )
      ],
    );
  }
}