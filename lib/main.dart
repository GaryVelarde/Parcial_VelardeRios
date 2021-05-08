import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parcial',
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              //fondo
              Container(
                color: Colors.grey[400],
              ),
              //Cabecera degradada

              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                child: Container(
                    height: 250,
                    width: 390,
                    margin: EdgeInsets.all(5),
                    //alignment: Alignment.topRight,
                    child: Column(children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/mark2.png',
                            fit: BoxFit.scaleDown,
                            scale: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 70),
                            child: Icon(
                              FontAwesomeIcons.solidImages,
                              color: Colors.white,
                              size: 15.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Mark Zuckerberg",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            FontAwesomeIcons.solidEdit,
                            color: Colors.white,
                            size: 15.0,
                          ),
                        ],
                      )
                    ]),
                    decoration: new BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.pink[800], Colors.purple[700]],
                            stops: [0.2, 0.7],
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter))),
              ),
              //Parte baja
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                child: Container(
                  margin: EdgeInsets.only(top: 255, left: 5),
                  color: Colors.grey[200],
                  width: 384,
                  height: 450,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 200, left: 17),
                color: Colors.white,
                width: 360,
                height: 490,
                child: ListView(
                  padding: EdgeInsets.all(15),
                  children: [
                    Center(
                      child: Text(
                        "USER PROFILE",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "User name",
                      style: TextStyle(color: Colors.purple[700]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InputUser(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Email Id",
                      style: TextStyle(color: Colors.purple[700]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InputEmail(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Mobile Number",
                      style: TextStyle(color: Colors.purple[700]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InputPhone(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Date of Birth",
                      style: TextStyle(color: Colors.purple[700]),
                    ),
                    InputDate(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sex",
                      style: TextStyle(color: Colors.purple[700]),
                    ),
                    SwitchSex(),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.pink[800], Colors.purple[700]],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 300.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "SAVE",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SwitchSex extends StatefulWidget {
  const SwitchSex({
    Key key,
  }) : super(key: key);

  @override
  _SwitchSexState createState() => _SwitchSexState();
}

class _SwitchSexState extends State<SwitchSex> {
  bool masc = false;
  bool fem = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          value: masc,
          onChanged: (value) {
            setState(() {
              masc = value;
              selectMale();
            });
          },
          activeTrackColor: Colors.purple[700],
          activeColor: Colors.white60,
        ),
        Text("Male"),
        Switch(
          value: fem,
          onChanged: (value) {
            setState(() {
              fem = value;
              selectFemale();
            });
          },
          activeTrackColor: Colors.purple[700],
          activeColor: Colors.white60,
        ),
        Text("Female"),
      ],
    );
  }

  void selectMale() {
    if (masc == true) {
      fem = false;
    }
  }

  void selectFemale() {
    if (fem == true) {
      masc = false;
    }
  }
}

class InputPhone extends StatefulWidget {
  const InputPhone({
    Key key,
  }) : super(key: key);

  @override
  _InputPhoneState createState() => _InputPhoneState();
}

class _InputPhoneState extends State<InputPhone> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(height: 0.5),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.phone_iphone,
          color: Colors.purple[700],
          size: 30,
        ),
        hintText: 'Mobile number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}

class InputEmail extends StatefulWidget {
  const InputEmail({
    Key key,
  }) : super(key: key);

  @override
  _InputEmailState createState() => _InputEmailState();
}

class _InputEmailState extends State<InputEmail> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(height: 0.5),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.email,
          color: Colors.purple[700],
          size: 30,
        ),
        hintText: 'Enter email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}

class InputUser extends StatefulWidget {
  const InputUser({
    Key key,
  }) : super(key: key);

  @override
  _InputUserState createState() => _InputUserState();
}

class _InputUserState extends State<InputUser> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(height: 0.5),
      decoration: InputDecoration(
        prefixIcon: Icon(
          FontAwesomeIcons.userCircle,
          color: Colors.purple[700],
          size: 30,
        ),
        hintText: 'Enter User Name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}

class InputDate extends StatefulWidget {
  const InputDate({
    Key key,
  }) : super(key: key);

  @override
  _InputDateState createState() => _InputDateState();
}

class _InputDateState extends State<InputDate> {
  String fecha = '';
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(height: 0.5),
      decoration: InputDecoration(
        prefixIcon: Icon(
          FontAwesomeIcons.calendarAlt,
          color: Colors.purple[700],
          size: 30,
        ),
        hintText: 'DD / MM / YYYY',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      onTap: () {
        //Para que no se muestre el teclado al momento de mandar el calendario
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2022),
      initialDate: DateTime.now(),
    );
    if (date != null) {
      setState(() {
        fecha = date.toString();
        textController.text = fecha;
      });
    }
  }
}
