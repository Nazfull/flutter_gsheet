import 'package:flutter/material.dart';
import 'package:flutter_gsheet/gsheet_setup.dart';
import 'package:gsheets/gsheets.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await GsheetIntIt();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Gsheet Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final inputText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextFormField(
                controller: inputText,
                onChanged: (value) {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffe4e4e4)),
                  ),
                  contentPadding: EdgeInsets.only(top: 10, left: 5),
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    color: Color(0xffb2b2b2),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextButton(
                onPressed: () {},
                child: Text('Save', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
