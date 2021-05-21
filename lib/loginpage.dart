import "package:flutter/material.dart";
import 'package:flutter_app/Register.dart';
import 'package:flutter_app/circular_progress_indicator.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  var _formKey = GlobalKey<_LoginPage>();
  String name = "";
  String numb = "";
  bool value = false;
 bool _ishiddenpass=true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Login Page ",
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Login Page",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
            body: Form(
            autovalidate:true ,
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ListView(children: <Widget>[
                    ListTile(
                        title: TextFormField(
                      controller: emailController,
                      style: TextStyle(),
                      // ignore: missing_return
                      validator: (String userInput) {
                        if (userInput.isEmpty) {
                          return "Enter an email";
                        }if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(userInput)) {
                          return "Please enter valid email";
                        }
                        return null;
                      },
                      onFieldSubmitted: (String userInput) {
                        setState(() {
                          name = userInput;
                        });
                      },
                      decoration: InputDecoration(
                          labelText: "Email ID",
                          labelStyle: TextStyle(),
                          errorStyle: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                    )),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: _ishiddenpass,
                        style: TextStyle(),
                        // ignore: missing_return
                        validator: (String userInput) {
                          if (userInput.isEmpty) {
                            return "Enter password";
                          // ignore: unnecessary_statements
                          }if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                              .hasMatch(userInput)){
                            return "Atleast one capital letter ,small letter,\n digit,special character";
                             }
                          },
                        onFieldSubmitted: (String userInput) {
                          setState(() {
                            numb = userInput;
                          });
                        },
                        decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            )),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        checkboxpass();
                        setState(() {
                          this.value = !value;
                        });
                      },
                      leading: Checkbox(value: value, onChanged: (value) {}),
                      title: Text(
                        "Show Password",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: InkWell(
                                  child: RichText(
                              text: TextSpan(
                                    text: "Register ",
                                    style: TextStyle(
                                        color: Colors.indigoAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0)),
                            ),
                               onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>Create()));
                                }
                                )
                           ),
                            Container(
                              width: 20.0,
                            ),
                            Expanded(
                                child: RaisedButton(
                                    color: Theme.of(context).primaryColorDark,
                                    textColor:
                                        Theme.of(context).primaryColorLight,
                                    child: Text(
                                      "Sign In",
                                      textScaleFactor: 1.5,
                                    ),
                                    onPressed: () {
                                      if (_formKey.currentState.validate()) {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Indicator()));
                                      }
                                    }))
                          ],
                        ))
                  ]),
                ))));
  }

  bool validate() {}
  void checkboxpass(){
    setState(() {
      _ishiddenpass=!_ishiddenpass;
    });

  }

  }
