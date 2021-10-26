import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
          child: RaisedButton(
            child: Text('Go to Previous ',style: TextStyle(fontSize: 40),),
          onPressed: (){
              Navigator.pop(context);
          },
          )

      ),
    );
  }
}
