//import "package:flutter/material.dart";
//import 'package:flutter_app/list.dart';
//import 'package:flutter_app/loginpage.dart';
//import 'package:flutter_app/circular_progress_indicator.dart';
//
////    void main(){
////        runApp(MaterialApp(
////         title: "My Favourite Car",
////         home: FavouriteCar(),
////        )
////    );
////    }
//
//class FavouriteCar extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return _FavouriteCarState();
//  }
//}
//
//class _FavouriteCarState extends State<FavouriteCar> {
//  var _formKey = GlobalKey<_FavouriteCarState>();
//  String nameCar = "";
//  var _Models = ['First Class', 'Second Class', 'Third Class'];
//  var _currentItemSelected = 'First Class';
//  TextEditingController tittleController = TextEditingController();
//  TextEditingController descriptionController = TextEditingController();
//
//  @override
//  Widget build(BuildContext context) {
//    TextStyle textStyle = Theme.of(context).textTheme.title;
//    // TODO: implement build
//    return GestureDetector(
//        onTap: () {
//          FocusScope.of(context).requestFocus(FocusNode());
//        },
//        child: Scaffold(
//          appBar: AppBar(
//              title: Text("Travelling Details"),
//              leading: IconButton(
//                icon: Icon(Icons.arrow_back),
//                onPressed: () {
//                  Navigator.pop(context);
//                },
//              )),
//          body: Form(
//              autovalidate: true,
//              key: _formKey,
//              child: Padding(
//                  padding: EdgeInsets.all(20.0),
//                  child: ListView(
//                    children: <Widget>[
//                      ListTile(
//                        title: DropdownButton<String>(
//                          items: _Models.map((String dropDownStringItem) {
//                            return DropdownMenuItem<String>(
//                              value: dropDownStringItem,
//                              child: Text(dropDownStringItem),
//                            );
//                          }).toList(),
//                          onChanged: (String newValueSelected) {
//                            DropDownItemSelected(newValueSelected);
//                          },
//                          value: _currentItemSelected,
//                        ),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.all(20.0),
//                        child: TextFormField(
//                          controller: tittleController,
//                          style: textStyle,
//                          // ignore: missing_return
//                          validator: (String value) {
//                            if (value.isEmpty) {
//                              return 'Please enter Departure';
//                            }
//                          },
//                          onFieldSubmitted: (String userInput) {
//                            setState(() {
//                              nameCar = userInput;
//                            });
//                          },
//                          decoration: InputDecoration(
//                            labelText: "Departure",
//                            labelStyle: textStyle,
//                            errorStyle: TextStyle(
//                                color: Colors.redAccent, fontSize: 20.0),
//                            border: OutlineInputBorder(
//                                borderRadius: BorderRadius.circular(5.0)),
//                          ),
//                        ),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.all(20.0),
//                        child: TextFormField(
//                          controller: descriptionController,
//                          style: textStyle,
//                          // ignore: missing_return
//                          validator: (String value) {
//                            if (value.isEmpty) {
//                              return 'Please enter Arrival';
//                            }
//                          },
//                          onFieldSubmitted: (String userInput) {
//                            setState(() {
//                              nameCar = userInput;
//                            });
//                          },
//                          decoration: InputDecoration(
//                            labelText: "Arrival",
//                            labelStyle: textStyle,
//                            errorStyle: TextStyle(
//                                color: Colors.redAccent, fontSize: 20.0),
//                            border: OutlineInputBorder(
//                                borderRadius: BorderRadius.circular(5.0)),
//                          ),
//                        ),
//                      ),
//                      Padding(
//                          padding: EdgeInsets.all(20.0),
//                          child: Row(children: <Widget>[
//                            Expanded(
//                              child: RaisedButton(
//                                color: Theme.of(context).primaryColorDark,
//                                textColor: Theme.of(context).primaryColorLight,
//                                child: Text(
//                                  "Search",
//                                  textScaleFactor: 1.5,
//                                ),
//                                onPressed: () {
//                                  setState(() {
//                                    Navigator.push(
//                                        context,
//                                        MaterialPageRoute(
//                                            builder: (context) => Indicator()));
//                                  });
//                                },
//                              ),
//                            ),
//                            Container(width: 5.0),
//                            Expanded(
//                                child: RaisedButton(
//                                    color: Theme.of(context).primaryColorDark,
//                                    textColor:
//                                        Theme.of(context).primaryColorLight,
//                                    child: Text(
//                                      "Book",
//                                      textScaleFactor: 1.5,
//                                    ),
//                                    onPressed: () {
////                                     if(_formKey.currentState.) {
//                                      Navigator.push(
//                                          context,
//                                          MaterialPageRoute(
//                                            builder: (context) => LoginPage(),
//                                          ));
//                                    }))
//                          ]))
//                    ],
//                  ))),
//        ));
//  }
//
//  // ignore: non_constant_identifier_names
//  void DropDownItemSelected(String newValueSelected) {
//    setState(() {
//      this._currentItemSelected = newValueSelected;
//    });
//  }
//}
