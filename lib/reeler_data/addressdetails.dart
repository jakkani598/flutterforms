
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../radiotheme/myradiolisttile.dart';

class AddressDetailsForm extends StatefulWidget {
  const AddressDetailsForm({Key? key}) : super(key: key);

  @override
  State<AddressDetailsForm> createState() => AddressDetailsFormState();
}

class AddressDetailsFormState extends State<AddressDetailsForm> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ADDRESS DETAILS"),
        ),
        body: ListView(children: <Widget>[
          const Padding(
              padding: EdgeInsets.only(left: 15, top: 2, bottom: 2, right: 15)),
          Container(
            padding:
            const EdgeInsets.only(left: 15, top: 15, bottom: 5, right: 15),
            child: const Text(
              "SELECT STATE",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'SELECT STATE',
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.done,
                    color: Colors.green,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'SELECT CITY',
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.done,
                    color: Colors.green,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          const Padding(
              padding:
              EdgeInsets.only(left: 15, top: 10, bottom: 2, right: 15)),
          Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'PIN CODE',
                            suffixIcon: IconButton(
                              icon: const Icon(
                                Icons.done,
                                color: Colors.green,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                          child: SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                _selectDate(context);
                              },
                              child: Text('SELECT'),
                            ),
                          ),
                        ))
                  ],
                ),
              )),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: SizedBox(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 40.0,horizontal: 20.0),
                  border: OutlineInputBorder(),
                  labelText: 'ENTER ADDRESS',
                  helperMaxLines: 10,
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.done,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, right: 8.0, bottom: 30.0, top: 15.0),
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("SAVE"),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    textStyle: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold)),
              ),
            ),
          )
        ]));
  }

  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2010),
        lastDate: DateTime(2025),
        initialDatePickerMode: DatePickerMode.day,
        initialEntryMode: DatePickerEntryMode.calendar);
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
  }

  String formateDate(DateTime date) {
    return DateFormat("dd-MM-yyyy").format(date);
  }
}
