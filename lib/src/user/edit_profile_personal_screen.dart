import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_sample_widgets/src/user/ui_utility.dart';

class EPPersonalPage extends StatefulWidget {
  const EPPersonalPage({Key? key}) : super(key: key);

  @override
  State<EPPersonalPage> createState() => _EPPersonalPageState();
}

class _EPPersonalPageState extends State<EPPersonalPage>{
  late final TextEditingController _cadetNoController;
  late final TextEditingController _batchController;
  late final TextEditingController _fullNameController;
  late final TextEditingController _cadetNameController;
  late final TextEditingController _emailAddressController;
  late final TextEditingController _dobController;
  late final TextEditingController _affiliationController;

  @override
  void initState() {
    _cadetNoController = TextEditingController();
    _batchController = TextEditingController();
    _fullNameController = TextEditingController();
    _cadetNameController = TextEditingController();
    _emailAddressController = TextEditingController();
    _dobController = TextEditingController();
    _affiliationController = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _cadetNoController.dispose();
    _batchController.dispose();
    _fullNameController.dispose();
    _cadetNameController.dispose();
    _emailAddressController.dispose();
    _dobController.dispose();
    _affiliationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('personal details')
      ),
        // resizeToAvoidBottomInset: false,
        body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30,),
              TextField(
                controller: _cadetNoController,
                autocorrect: false,
                style: const TextStyle(fontSize: 20),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Cadet No. *",
                  hintText: "Cadet no.",
                  prefixIcon: const Icon(Icons.person),
                  border: UIUtility.textfiledinputborder(),
                  enabledBorder: UIUtility.textfiledinputborder(),
                  focusedBorder: UIUtility.textfiledfocusborder(),
                  errorBorder: UIUtility.textfilederrorborder(),
                ),
              ),
              const SizedBox(height: 25,),
              TextField(
                controller: _batchController,
                autocorrect: false,
                style: const TextStyle(fontSize: 20),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Batch *",
                  hintText: "Batch",
                  prefixIcon: const Icon(Icons.people),
                  border: UIUtility.textfiledinputborder(),
                  enabledBorder: UIUtility.textfiledinputborder(),
                  focusedBorder: UIUtility.textfiledfocusborder(),
                  errorBorder: UIUtility.textfilederrorborder(),
                ),
              ),
              const SizedBox(height: 25,),
              TextField(
                controller: _fullNameController,
                autocorrect: false,
                style: const TextStyle(fontSize: 20),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Full Name *",
                  hintText: "Full Name",
                  prefixIcon: const Icon(Icons.edit_note),
                  border: UIUtility.textfiledinputborder(),
                  enabledBorder: UIUtility.textfiledinputborder(),
                  focusedBorder: UIUtility.textfiledfocusborder(),
                  errorBorder: UIUtility.textfilederrorborder(),
                ),
              ),
              const SizedBox(height: 25,),
              TextField(
                controller: _cadetNameController,
                autocorrect: false,
                style: const TextStyle(fontSize: 20),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Cadet Name *",
                  hintText: "Cadet Name",
                  prefixIcon: const Icon(Icons.edit),
                  border: UIUtility.textfiledinputborder(),
                  enabledBorder: UIUtility.textfiledinputborder(),
                  focusedBorder: UIUtility.textfiledfocusborder(),
                  errorBorder: UIUtility.textfilederrorborder(),
                ),
              ),
              const SizedBox(height: 25,),
              TextField(
                controller: _emailAddressController,
                autocorrect: false,
                style: const TextStyle(fontSize: 20),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: "Email Address *",
                  hintText: "Email Address",
                  prefixIcon: const Icon(Icons.email),
                  border: UIUtility.textfiledinputborder(),
                  enabledBorder: UIUtility.textfiledinputborder(),
                  focusedBorder: UIUtility.textfiledfocusborder(),
                  errorBorder: UIUtility.textfilederrorborder(),
                ),
              ),const SizedBox(height: 25,),
              TextField(
                controller: _dobController,
                style: const TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  labelText: "Date of Birth",
                  hintText: "Date of Birth",
                  prefixIcon: const Icon(Icons.calendar_today),
                  border: UIUtility.textfiledinputborder(),
                  enabledBorder: UIUtility.textfiledinputborder(),
                  focusedBorder: UIUtility.textfiledfocusborder(),
                  errorBorder: UIUtility.textfilederrorborder(),
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context, initialDate: DateTime.now(),
                      firstDate: DateTime(1945),
                      lastDate: DateTime(2101)
                  );
                  if(pickedDate != null ){
                    if (kDebugMode) print(pickedDate);
                    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                    if (kDebugMode)  print(formattedDate);
                    setState(() {
                      _dobController.text = formattedDate;
                    });
                  }else{
                    print("Date is not selected");
                  }
                },
              ),
              const SizedBox(height: 25,),
              TextField(
                controller: _affiliationController,
                autocorrect: false,
                style: const TextStyle(fontSize: 20),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: "Affiliation",
                  hintText: "Affiliation",
                  prefixIcon: const Icon(Icons.mediation),
                  border: UIUtility.textfiledinputborder(),
                  enabledBorder: UIUtility.textfiledinputborder(),
                  focusedBorder: UIUtility.textfiledfocusborder(),
                  errorBorder: UIUtility.textfilederrorborder(),
                ),
              ),
              const SizedBox(height: 25,),


              // const Expanded(child: SizedBox(),),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 8.0),
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        if (kDebugMode)  print('previous pressed');
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context) =>
                        //         EPProfessionalPage(),
                        //     )
                        // );
                      },
                      child: const Text("prev"),
                    ),
                  ),
                  const Expanded(child: SizedBox(),),
                  Container(
                    padding: const EdgeInsets.only(right: 8.0),
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        if (kDebugMode)  print('next pressed');
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context) =>
                        //         EPProfessionalPage(),
                        //     )
                        // );
                      },
                      child: const Text("next"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}