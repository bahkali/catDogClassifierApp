import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 50),
          Text('KmadStudio',
              style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 5),
          Text('Cats and Dogs Classifier App',
              style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 30)
          ),
          SizedBox(height: 50),
          Center(child: _loading ?
          Container(
            width: 400,
            child: Column(
              children: <Widget>[
                Image.asset('assets/cat_dog_icon.png'),
                SizedBox(height: 50),
              ],),
          ): Container()),
          Container(width: MediaQuery.of(context).size.width,
          child: Column(children: <Widget>[
            GestureDetector(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width -250,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(6)
                ),
                child: Text(
                  'Capture a Photo',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width -250,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(6)
                ),
                child: Text(
                  'Select a photo',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],),
          )
        ],
        ),
      ),

    );
  }
}
