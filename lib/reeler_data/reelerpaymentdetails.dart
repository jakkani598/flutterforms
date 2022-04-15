
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReelerpaymentDetailsForm extends StatefulWidget {
  const ReelerpaymentDetailsForm({Key? key}) : super(key: key);

  @override
  State<ReelerpaymentDetailsForm> createState() => ReelerpaymentDetailsFormState();
}

class ReelerpaymentDetailsFormState extends State<ReelerpaymentDetailsForm> {
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
          const Padding(padding: EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15)),
          Container(
            padding: const EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 15),
            child: const Text("Bank Account",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'BANK NAME',
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
                labelText: 'ENTER ACCOUNT NUMBER',
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
                labelText: 'RE-ENTER BANK ACCOUNT NUMBER',
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
                labelText: 'IFSC CODE',
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
                labelText: 'ACCOUNT NAME',
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
}
