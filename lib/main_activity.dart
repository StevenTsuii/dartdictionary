import 'package:dartdictionary/fragment/demo1_fragment.dart';
import 'package:dartdictionary/fragment/demo2_fragment.dart';
import 'package:dartdictionary/fragment/demo3_fragment.dart';
import 'package:dartdictionary/repository/demo_data_repository.dart';
import 'package:flutter/material.dart';

class MainActivity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainActivityState();
  }
}

class MainActivityState extends State<MainActivity> {
  var _selectedIndex = 0;
  var _bottomBarTitleList = ["Home", "Search", "Settings"];
  var _appBarTitle = "Home";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: Builder(builder: (context) => buildWidget(context)),
      drawer: buildDrawer(context),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildWidget(BuildContext context) {
    switch (_selectedIndex) {
      case 0:
        return Demo1Fragment();
      case 1:
        return Demo2Fragment();
      case 2:
        return Demo3Fragment();
      default:
        return Demo1Fragment();
    }
  }

  void selectBottomNavigationBarItem(int index) {
    setState(() {
      _selectedIndex = index;
      _appBarTitle = _bottomBarTitleList[index];
    });
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image.network(
              DemoDataRepository.getInstance().getImagePathList()[5],
              fit: BoxFit.contain,
            ),
            decoration: BoxDecoration(color: Colors.red),
          ),
          ListTile(
            title: Text("Home"),
            subtitle: Text("Main page"),
            onTap: () {
              Navigator.pop(context);
              selectBottomNavigationBarItem(0);
            },
          ),
          ListTile(
            title: Text("Search"),
            subtitle: Text("Search via network"),
            onTap: () {
              Navigator.pop(context);
              selectBottomNavigationBarItem(1);
            },
          ),
          ListTile(
            title: Text("Settings"),
            subtitle: Text("Manage your profile"),
            onTap: () {
              Navigator.pop(context);
              selectBottomNavigationBarItem(2);
            },
          )
        ],
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home), title: Text(_bottomBarTitleList[0])),
        BottomNavigationBarItem(
            icon: Icon(Icons.search), title: Text(_bottomBarTitleList[1])),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), title: Text(_bottomBarTitleList[2]))
      ],
      currentIndex: _selectedIndex,
      fixedColor: Colors.deepOrangeAccent,
      onTap: (int index) {
        selectBottomNavigationBarItem(index);
      },
    );
  }

//  Future requestApi() async {
//    var url = "http://www.ha.org.hk/opendata/aed/aedwtdata-tc.json";
//
//    // Await the http get response, then decode the json-formatted responce.
//    var response = await http.get(url);
//    if (response.statusCode == 200) {
//      var jsonResponse = convert.jsonDecode(response.body);
//      var itemCount = jsonResponse['waitTime'];
//      print("waitTime count: $itemCount.");
//    } else {
//      print("Request failed with status: ${response.statusCode}.");
//    }
//  }
}
