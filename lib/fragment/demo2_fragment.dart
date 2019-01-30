import 'package:dartdictionary/repository/demo_data_repository.dart';
import 'package:flutter/material.dart';

class Demo2Fragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo2FragmentState();
  }
}

class Demo2FragmentState extends State<Demo2Fragment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  12.0, 12.0, 12.0, 6.0),
                              child: Text(
                                "AAAAAAAA BBBBBB CC",
                                style: TextStyle(
                                    fontSize: 22.0, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  12.0, 6.0, 12.0, 12.0),
                              child: Text(
                                "BBBBBBB",
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                "5m",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.star_border,
                                  size: 35.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 2.0,
                      color: Colors.grey,
                    )
                  ],
                );
              },
              itemCount: DemoDataRepository.getInstance().getImagePathList().length,
              padding: EdgeInsets.all(10.0),
            ))
      ],
    );
  }

}