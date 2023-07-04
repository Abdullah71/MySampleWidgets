import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_sample_widgets/src/user/ui_utility.dart';

import 'edit_profile_professional_screen.dart';

class EPPersonalPage extends StatefulWidget {
  const EPPersonalPage({Key? key}) : super(key: key);

  @override
  State<EPPersonalPage> createState() => _EPPersonalPageState();
}

class _EPPersonalPageState extends State<EPPersonalPage>{
  late final TextEditingController _cadetNoController;

  @override
  void initState() {
    _cadetNoController = TextEditingController(text: 'cadet no.');
    super.initState();
  }
  @override
  void dispose() {
    _cadetNoController.dispose();
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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text('Enter Your Location', style: TextStyle(fontSize: 30),),
            const SizedBox(height: 30,),
            TextField(
              controller: _cadetNoController,
              autocorrect: false,
              style: const TextStyle(fontSize: 20),
              keyboardType: const TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                hintText: 'Cadet No.',
                labelText: "Cadet No.",
                prefixIcon: const Icon(Icons.people),
                border: UIUtility.textfiledinputborder(),
                enabledBorder: UIUtility.textfiledinputborder(),
                focusedBorder: UIUtility.textfiledfocusborder(),
                errorBorder: UIUtility.textfilederrorborder(),
              ),
            ),
            const SizedBox(height: 25,),

            const SizedBox(height: 25,),
            ElevatedButton(
              onPressed: () async {
                if (kDebugMode)  print('Get Direction pressed');
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) =>
                //         EPProfessionalPage(),
                //     )
                // );
              },
              child: const Text('next', style: TextStyle(fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}