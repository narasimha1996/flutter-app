import 'package:flutter/material.dart';

class Create extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Create();
  }
}

class _Create extends State<Create> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  String firstName = "";
  String lastName = "";
  String userName = "";
  String password = "";
  String confirm = "";
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Registration"),
        ),
        body: Form(
            autovalidate: true,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: TextFormField(
                      controller: firstNameController,
                      style: TextStyle(),
                      decoration: InputDecoration(
                        labelText: "First name",
                        labelStyle: TextStyle(),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        errorStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      // ignore: missing_return
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "enter First name";
                        }
                      },
                      onFieldSubmitted: (String userInput) {
                        setState(() {
                          firstName = userInput;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: ListTile(
                      title: TextFormField(
                        controller: lastNameController,
                        style: TextStyle(),
                        decoration: InputDecoration(
                          labelText: "Last name",
                          labelStyle: TextStyle(),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        // ignore: missing_return
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "enter last name";
                          }
                        },
                        onFieldSubmitted: (String userInput) {
                          setState(() {
                            lastName = userInput;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: ListTile(
                      title: TextFormField(
                        controller: userNameController,
                        style: TextStyle(),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "username",
                          labelStyle: TextStyle(),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        // ignore: missing_return
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter an email';
                          }
                          if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                            return "Please enter valid email";
                          }
                          return null;
                        },
                        onFieldSubmitted: (String userInput) {
                          setState(() {
                            userName = userInput;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: ListTile(
                      title: TextFormField(
                        controller: passwordController,
                        style: TextStyle(),
                        decoration: InputDecoration(
                          labelText: "password",
                          labelStyle: TextStyle(),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        // ignore: missing_return
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "enter password";
                          }
                          return null;
                        },
                        onFieldSubmitted: (String userInput) {
                          setState(() {
                            password = userInput;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: ListTile(
                      title: TextFormField(
                        controller: confirmController,
                        obscureText: true,
                        style: TextStyle(),
                        decoration: InputDecoration(
                          labelText: "confirm password",
                          labelStyle: TextStyle(),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        // ignore: missing_return
                        validator: (String value) {
                          if (value.isEmpty) {
                            return "Please re-enter password ";
                          }
                          if (passwordController.text !=
                              confirmController.text) {
                            return "Password do not match";
                          }
                          return null;
                        },
                        onFieldSubmitted: (String userInput) {
                          setState(() {
                            confirm = userInput;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: InkWell(
                                child: RichText(
                                    text: TextSpan(
                                  text: "Login Instead",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                )),
                                onTap: () {})),
                        Container(
                          width: 20.0,
                        ),
                        Expanded(
                            child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,
                          textColor: Theme.of(context).primaryColorLight,
                          child: Text("Next", textScaleFactor: 1.5),
                          onPressed: () {},
                        ))
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
