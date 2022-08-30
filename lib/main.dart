import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: TimePickerPage(),
    );
  }
}

class TimePickerPage extends StatefulWidget {
  const TimePickerPage({super.key});

  @override
  State<TimePickerPage> createState() => _TimePickerPageState();
}

class _TimePickerPageState extends State<TimePickerPage> {
  TimeOfDay? time = const TimeOfDay(hour: 05, minute: 00);

  handlePickTime() async {
    TimeOfDay? selectedTime =
        await showTimePicker(
          context: context, initialTime: time!);
    setState(() {
      time = selectedTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Page"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(time!.hour.toString() + ":" + time!.minute.toString(),
                  style: TextStyle(fontSize: 40)),
              ElevatedButton(
                  onPressed: handlePickTime, child: Text("Select Time"))
            ]),
      ),
    );
  }
}

class ListTilePage extends StatelessWidget {
  const ListTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Page"),
      ),
      body: Container(
          child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          child: Image.network(
              "https://i.pinimg.com/originals/0a/53/c3/0a53c3bbe2f56a1ddac34ea04a26be98.jpg"),
        ),
        title: Text("Mohammad Ali"),
        subtitle: Row(children: [
          Icon(Icons.camera_alt, size: 15),
          SizedBox(
            width: 5,
          ),
          Text("Image")
        ]),
        trailing: Text("YESTERDAY"),
      )),
    );
  }
}

class ExpendedPage extends StatelessWidget {
  const ExpendedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Page")),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                color: Colors.black,
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.yellowAccent,
            )),
            Expanded(
                child: Container(
              color: Colors.green,
            )),
            Expanded(
                child: Container(
              color: Colors.brown,
            ))
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  handleLoginAction() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/instagram_logo.png",
                width: 200,
              ),
              const SizedBox(height: 20),
              SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(240, 240, 241, 255),
                                width: 1.0)),
                        filled: true,
                        hintText: "Phone number, email or username",
                        fillColor: Color.fromARGB(251, 251, 250, 255)),
                  )),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(240, 240, 241, 255),
                              width: 1.0)),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      filled: true,
                      hintText: "Password",
                      fillColor: Color.fromARGB(251, 251, 250, 255)),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: handleLoginAction, child: Text("Login")),
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Expanded(child: Divider()),
                  Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text("OR")),
                  Expanded(child: Divider())
                ],
              ),
              const SizedBox(height: 20),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.facebook),
                  label: Text("Continue as Mhmd Ali"))
            ],
          ),
        ));
  }
}
