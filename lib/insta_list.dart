import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              height: deviceSize.height * 0.175,
              child: InstaStories(),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage('https://media-exp1.licdn.com/dms/image/C5103AQFcUCUIkqCrNw/profile-displayphoto-shrink_400_400/0/1579866596137?e=1614816000&v=beta&t=XXxJ6Q9-w_MN8t_pXPNQ0D-rOdOMtkKXCTr5dUP9Y70'),
                                )),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Sparsh',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Image.network(
                    'https://media-exp1.licdn.com/dms/image/C5103AQFcUCUIkqCrNw/profile-displayphoto-shrink_400_400/0/1579866596137?e=1614816000&v=beta&t=XXxJ6Q9-w_MN8t_pXPNQ0D-rOdOMtkKXCTr5dUP9Y70',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.heart,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Icon(
                        FontAwesomeIcons.comment,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Icon(
                        FontAwesomeIcons.paperPlane,
                      ),
                    ],
                  ),
                ),
                Icon(FontAwesomeIcons.bookmark),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Liked By Sparsh, sp and 528,42 others",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage('https://media-exp1.licdn.com/dms/image/C5103AQFcUCUIkqCrNw/profile-displayphoto-shrink_400_400/0/1579866596137?e=1614816000&v=beta&t=XXxJ6Q9-w_MN8t_pXPNQ0D-rOdOMtkKXCTr5dUP9Y70'),
                              fit: BoxFit.fill,
                            )),
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Add a Comment"),
                        ),
                      )
                    ],
                   ),
                ),
              ],
            ),
    );
  }
}
