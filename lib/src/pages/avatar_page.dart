import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
             backgroundImage: NetworkImage('https://wp-media.patheos.com/blogs/sites/563/2016/05/precious-bloodsh1c.jpg'),
             radius: 25.0,
            ),
          ),
                    Container(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('CM'),
              backgroundColor: Colors.cyan,
            ),
          )
        ],
      ),

        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.backspace),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: FadeInImage(
        image: NetworkImage('https://wp-media.patheos.com/blogs/sites/563/2016/05/precious-bloodsh1c.jpg'),
        placeholder: AssetImage('assets/jar-loading.gif'),
        fadeInDuration: Duration(milliseconds: 200),
       ),
      ),

      
      
    );
  }
}