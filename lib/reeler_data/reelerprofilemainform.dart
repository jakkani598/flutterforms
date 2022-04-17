import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:intl/intl.dart';

import '../radiotheme/myradiolisttile.dart';

class ReelerProfileMainForm extends StatefulWidget {
  const ReelerProfileMainForm({Key? key}) : super(key: key);

  @override
  State<ReelerProfileMainForm> createState() => ReelerProfileMainFormState();
}

class ReelerProfileMainFormState extends State<ReelerProfileMainForm> {
  int _value = 0;
  String _dateValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PROFILE"),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ElevatedButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Row(children: const [
                      Image(
                        image: AssetImage('assets/images/correct.png'),
                        width: 30,
                        height: 30,
                      ),
                      Padding(padding: EdgeInsets.all(5.0)),
                      Text('ReshaMandi')
                    ]),
                    content: const Text('Profile updated successfully'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                child: const Text(
                  "SAVE",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        body: ListView(children: <Widget>[
          Card(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 5.0, top: 5.0, right: 2.0, bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: const Image(
                              image: AssetImage('assets/images/man.png'),
                              width: 80,
                              height: 80,
                            )),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    child: const Text(
                                  "Your Selfie",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                )),
                                Container(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text("CLICK SELFIE"),
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(left: 15, top: 2, bottom: 2, right: 15)),
          Container(
            padding:
                const EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
            child: const Text(
              "PRIMARY DETAILS",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'FIRST NAME',
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
                labelText: 'MIDDLE NAME',
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
                labelText: 'LAST NAME',
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
            padding:
                const EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
            child: const Text(
              "DATE OF BIRTH",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(_dateValue ?? 'Please Select Date',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Expanded(
                        child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          _selectDate(context);
                        },
                        child: const Text('Pick Date'),
                      ),
                    ))
                  ],
                ),
              )),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your Secondary Phone Number',
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
                labelText: 'Yarn Capacity',
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
              padding: EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15)),
          Container(
            padding:
                const EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15),
            child: const Text(
              "PICK MY WASTAGE",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 15)),
          Container(
              child: Row(
            children: [
              MyRadioListTile<int>(
                value: 1,
                groupValue: _value,
                leading: 'Yes',
                onChanged: (value) => setState(() => _value = value!),
              ),
              MyRadioListTile<int>(
                value: 0,
                groupValue: _value,
                leading: 'No',
                onChanged: (value) => setState(() => _value = value!),
              ),
            ],
          )),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, right: 8.0, bottom: 30.0, top: 15.0),
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("SAVE CHANGES"),
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
  _selectDate(BuildContext context) async {
      DateTime? datePicked= await DatePicker.showSimpleDatePicker(
      context,
      initialDate: DateTime(1994),
      firstDate: DateTime(1960),
      lastDate: DateTime(2012),
      dateFormat: "dd-MM-yyyy",
      locale: DateTimePickerLocale.en_us,
      looping: true,
    );
    final DateFormat formatter = DateFormat('dd-MM-yyyy');
    final String formatted = formatter.format(datePicked!);
    setState(() {
      _dateValue = formatted;
    });
  }
}
