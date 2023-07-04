import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_sample_widgets/navigation_screen.dart';
import 'package:my_sample_widgets/src/user/edit_profile_personal_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const EPPersonalPage(),
      // home: const LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>{
  late final TextEditingController _latController;
  late final TextEditingController _lngController;

  @override
  void initState() {
    _latController = TextEditingController(text: '23.8103');
    _lngController = TextEditingController(text: '90.4125');
    super.initState();
  }
  @override
  void dispose() {
    _latController.dispose();
    _lngController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('My Sample Widgets')
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Enter Your Location', style: TextStyle(fontSize: 30),),
            const SizedBox(height: 30,),
            TextField(
              controller: _latController,
              autocorrect: false,
              style: const TextStyle(fontSize: 20),
              keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
              decoration: const InputDecoration(
                hintText: 'latitude',
              ),
            ),
            const SizedBox(height: 25,),
            TextField(
              controller: _lngController,
              autocorrect: false,
              style: const TextStyle(fontSize: 20),
              keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
              decoration: const InputDecoration(
                hintText: 'longitude',
              ),
            ),
            const SizedBox(height: 25,),
            ElevatedButton(
                onPressed: () async {
                  if (kDebugMode)  print('Get Direction pressed');
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>
                      NavigationScreen(
                        double.parse(_latController.text),
                        double.parse(_lngController.text)
                      )
                    )
                  );
                },
                child: const Text('Get Directions'),
            )
          ],
        ),
      ),
    );
  }
}
