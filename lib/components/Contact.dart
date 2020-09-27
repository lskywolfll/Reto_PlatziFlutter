import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  final String pathImage;
  final String userName;
  final int yearsExperiencie;

  Contact(this.pathImage, this.userName,this.yearsExperiencie);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  String details = "";
  double _spacing = 15.0;
  Color colorCircular;
  Color colorEmail;

  @override
  void initState() {
    super.initState();
    colorCircular = Colors.red;
    colorEmail = Colors.white;

    if(this.widget.yearsExperiencie > 9){
      details = "Experience: ${this.widget.yearsExperiencie} years";
    }else{
      details = "Experience: 0${this.widget.yearsExperiencie} years";
    }

  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[_foto(), _userDetails(), userActionIcon(context)],
    );
  }

  Widget userInfo() {
    return Container(
      margin: EdgeInsets.only(left: 20.0, top: 10.0),
      child: Text(
        details,
        style: TextStyle(
            fontFamily: 'Lato', fontSize: 17.0, color: Color(0xFFa3a5a7)),
      ),
    );
  }

  Widget userActionIcon(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (colorCircular != Colors.black12) {
             Scaffold.of(context).showSnackBar(SnackBar(
              content: Text("Le has enviado a ${this.widget.userName} un email para contratarla"),
              backgroundColor: Colors.green,
            ));

            colorCircular = Colors.black12;
            colorEmail = Colors.black54;
          } else {
            colorCircular = Colors.red;
            colorEmail = Colors.white;
          }
        });
      },
      child: Container(
        margin: EdgeInsets.only(left: 80.0, top: _spacing),
        alignment: Alignment.centerRight,
        child: ClipOval(
          child: Container(
            color: colorCircular,
            width: 50.0,
            height: 50.0,
            child: Icon(
              Icons.email,
              color: colorEmail,
            ),
          ),
        ),
      ),
    );
  }

  Widget _userName() {
    return Container(
      margin: EdgeInsets.only(left: 20.0, top: _spacing),
      child: Text(
        this.widget.userName,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 17.0,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w900,
            color: Colors.black),
      ),
    );
  }

  Widget _userDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[_userName(), userInfo()],
    );
  }

  Widget _foto() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 70.0,
      height: 70.0,
      child: CircleAvatar(
        backgroundImage: NetworkImage(this.widget.pathImage),
      ),
    );
  }
}
