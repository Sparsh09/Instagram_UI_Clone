import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final topText = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Stories',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: <Widget>[
            Icon(Icons.play_arrow),
            Text(
              'Watch All',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
    final stories = Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) =>
              Stack(alignment: Alignment.bottomRight, children: <Widget>[
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage('https://media-exp1.licdn.com/dms/image/C5103AQFcUCUIkqCrNw/profile-displayphoto-shrink_400_400/0/1579866596137?e=1614816000&v=beta&t=XXxJ6Q9-w_MN8t_pXPNQ0D-rOdOMtkKXCTr5dUP9Y70'),
                    ),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 8.0),

                ),
                index == 0 ? Positioned(
                  right: 10.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 10.0,
                    child: Icon(Icons.add, size: 14.0, color: Colors.white),
                  ),) : Container()
              ]
              ),
          itemCount: 5,
          scrollDirection: Axis.horizontal,
        ));
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}
