import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          // Text('花了多少？'),
          TextField(
            keyboardType: TextInputType.number,
            maxLines: 1,
            style: TextStyle(fontSize: 28,color: Colors.blueAccent),
            decoration: InputDecoration(
              labelStyle: TextStyle(fontSize: 18),
              hintStyle: TextStyle(fontSize: 18),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.currency_yuan,size: 60,),
              ),
                labelText: '花了多少？',
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
          ),
          SizedBox(height: 15,),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: '用来干嘛？',
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
          ),
          Text('标签'),
        ],
      ),
    );
  }
}
