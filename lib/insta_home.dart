import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'insta_body.dart';


class InstaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final topBar = AppBar(
      backgroundColor: Color(0xfff8faf8),
      centerTitle: true,
      elevation: 1.0,
      leading: Icon(Icons.camera_alt),
      title: SizedBox(
        height: 35.0,
        child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe1mXowQOoDhnVexElVo_B017a1E__nKe8Yw&usqp=CAU'),),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Icon(Icons.send),
        ),
      ],
    );
    return Scaffold(
    appBar: topBar,
      body : InstaBody(),
      bottomNavigationBar: Container(
        color : Colors.white,
        height: 50,
        child : BottomAppBar(
          child : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(icon: Icon(Icons.home),
                  onPressed: null),
              IconButton(icon: Icon(Icons.search), onPressed: null),
              IconButton(icon: Icon(Icons.add_box), onPressed: null),
              IconButton(icon: Icon(Icons.favorite), onPressed: null),
              IconButton(icon: Icon(Icons.account_box), onPressed: null)
            ],
          )
        ),
      ),
    );
  }
}

