import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartdictionary/repository/demo_data_repository.dart';
import 'package:flutter/material.dart';

class Demo1Fragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo1FragmentState();
  }
}

class Demo1FragmentState extends State<Demo1Fragment> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(
          child: buildListView(),
        ),
        SizedBox(
          width: double.infinity,
          child: buildRaisedButton(context),
        )
      ],
    ));
  }

  ListView buildListView() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            AspectRatio(
              child: CachedNetworkImage(
                imageUrl: DemoDataRepository.getInstance().getImagePathList()[0],
                fit: BoxFit.cover,
                placeholder: Image(
                  image: AssetImage("assets/images/placeholder.png"),
                  fit: BoxFit.cover,
                ),
                errorWidget: Icon(Icons.error),
              ),
              aspectRatio: 16 / 9,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                child: Column(
                  children: <Widget>[
                    Text(
                      "沙中綫聆訊第42日，庭上繼續就鋼筋扭入螺絲帽的標準爭拗。中科興業委聘的獨立結構工程專家、港大土木工程系副教授楊德忠作供時指出，鋼筋絞牙真正長度最長可達48毫米，並根據其標準重新計算，認為現時已公佈的開鑿檢測結果約有6成不合格，對結構完整性存疑。",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    )
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.favorite),
                Icon(Icons.view_day),
                Icon(Icons.bookmark),
                Icon(Icons.photo)
              ],
            ),
            ButtonTheme(
              child: ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text("RasiedButton"),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text("FlatButton"),
                    onPressed: () {},
                  ),
                  Card(
                    child: Text("Card"),
                  ),
                ],
              ),
            )
          ],
        );
      },
      itemCount: DemoDataRepository.getInstance().getImagePathList().length,
      padding: EdgeInsets.all(20.0),
    );
  }

  RaisedButton buildRaisedButton(BuildContext context) {
    return RaisedButton(
      color: Colors.redAccent,
      textColor: Colors.white,
      onPressed: () {
//        DataRepository.get().getWaitingModelList();
        showSnackBar(context);
      },
      child: Text("Show snackBar"),
    );
  }

  void showSnackBar(BuildContext context) {
    var snackBar = SnackBar(
        content: Text("Here is a SnackBar!!!"),
        action: SnackBarAction(label: "View", onPressed: () {}));
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
