import 'package:flutter/material.dart';
import 'custom_clip_path.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  final String url = "https://images.unsplash.com/photo-1533122250115-6bb28e9a48c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=375&q=80";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustonClipPath(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 115,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(url))),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 79.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
                Text(
                  "DESIGNERS",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
