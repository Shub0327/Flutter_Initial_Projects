import 'package:flutter/material.dart';

main() => runApp(const MaterialApp(
      home: Myapp(),
    ));

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Center(
          child: Text(
            "Terna Student ID",
            style: TextStyle(
              color: Colors.yellowAccent,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: SizedBox(
                    width: 250,
                    height: 250,
                    child: Image.asset("images/img.png")),
              ),
              const Divider(
                height: 30,
                thickness: 2,
                color: Colors.black,
                endIndent: 20.0,
                indent: 20.0,
              ),
              const SizedBox(
                height: 30,
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Name",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                "Shubham Mankar",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.yellowAccent,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const SizedBox(
                height: 30,
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Roll No.",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                "TU4S2122007",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.yellowAccent,
                ),
              ),
              const SizedBox(
                height: 30,
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Mail",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.mail,
                    color: Colors.yellowAccent,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    "shubhamma59@gmail.com",
                    style: TextStyle(fontSize: 15.0, color: Colors.yellowAccent),
                  ),

                ],
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
