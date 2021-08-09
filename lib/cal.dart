import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var output = "";
  List<dynamic> lst = [1, 2, 3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("TODO APP")),
      ),
      body: ListView.builder(
          itemCount: lst.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(top: 20),
              height: 50,
              color: Colors.blueAccent,
              child: ListTile(
                title: Center(
                  child: Text(
                    "${lst[index]}",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                trailing: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Edit Item"),
                              content: TextField(
                                onChanged: (value) {
                                  output = value;
                                },
                              ),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      setState(() {
                                        lst.replaceRange(
                                            index, index + 1, {output});
                                      });
                                    },
                                    child: Text("Edit"))
                              ],
                            );
                          });
                    },
                    child: Icon(Icons.edit)),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Add Item"),
                  content: TextField(
                    onChanged: (value) {
                      output = value;
                    },
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          setState(() {
                            lst.add(output);
                          });
                        },
                        child: Text("Add"))
                  ],
                );
              });
        },
        child: Text("Add"),
      ),
    );
  }
}
