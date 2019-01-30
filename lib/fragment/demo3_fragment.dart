import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartdictionary/repository/demo_data_repository.dart';
import 'package:flutter/material.dart';

class Demo3Fragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Demo3FragmentState();
  }
}

class Demo3FragmentState extends State<Demo3Fragment> {
  @override
  Widget build(BuildContext context) {
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
      ],
    );
  }
}
