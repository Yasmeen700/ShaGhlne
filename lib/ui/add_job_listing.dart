import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AddJob extends StatefulWidget {
  @override
  _AddJobState createState() => _AddJobState();
}

class _AddJobState extends State<AddJob> {
  @override
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FormBuilder(
          key: _fbKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 0.0, horizontal: 12.0),
            child: ListView(
              children: [
              FormBuilderSlider(
              attribute: 'slider',
              validators: [FormBuilderValidators.min(6)],
              min: 0.0,
              max: 10.0,
              initialValue: 7.0,
              divisions: 20,
              activeColor: Colors.red,
              inactiveColor: Colors.pink[100],
              decoration: const InputDecoration(
                labelText: 'Number of things',
              ),
              displayValues: DisplayValues.current,
            ),
            SizedBox(height: 16.0),
            FormBuilderChoiceChip(
              attribute: 'choice_chip',
              decoration: const InputDecoration(
                labelText: 'Select an option',
              ),
              options: [
                FormBuilderFieldOption(value: 'Test', child: Text('Test')),
                FormBuilderFieldOption(
                    value: 'Test 1', child: Text('Test 1')),
                FormBuilderFieldOption(
                    value: 'Test 2', child: Text('Test 2')),
                FormBuilderFieldOption(
                    value: 'Test 3', child: Text('Test 3')),
                FormBuilderFieldOption(
                    value: 'Test 4', child: Text('Test 4')),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            FormBuilderTouchSpin(
              decoration: const InputDecoration(labelText: 'Stepper'),
              attribute: 'stepper',
              initialValue: 10,
              step: 1,
              iconSize: 48.0,
              addIcon: const Icon(Icons.arrow_right),
              subtractIcon: const Icon(Icons.arrow_left),
            ),
            SizedBox(
              height: 16.0,
            ),
            FormBuilderCountryPicker(
              // initialValue: 'Germany',
              attribute: 'country',
              // readOnly: true,
              // style: TextStyle(color: Colors.black, fontSize: 18),
              priorityListByIsoCode: ['US'],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Country',
              ),
              validators: [
                FormBuilderValidators.required(
                    errorText: 'This field required.'),
              ],
            ),
            SizedBox(height: 15),
            FormBuilderSignaturePad(
              decoration: const InputDecoration(labelText: 'Signature'),
              attribute: 'signature',
              // height: 250,
              clearButtonText: 'Start Over',
            ),
            SizedBox(height: 15),
            FormBuilderRadioGroup(
              attribute: 'radio_group',
              decoration: const InputDecoration(labelText: 'Radio Group'),
              options: [
                FormBuilderFieldOption(value: 'M', child: Text('Male')),
                FormBuilderFieldOption(value: 'F', child: Text('Female')),
              ],
            ),
            SizedBox(height: 16.0,)
            ,
            MaterialButton(
              color: Theme
                  .of(context)
                  .accentColor,
              child:
              Text('Submit', style: TextStyle(color: Colors.white)),
              onPressed: () {
                if (_fbKey.currentState.saveAndValidate()) {
                  print(_fbKey.currentState.value);
                } else {
                  print(_fbKey.currentState.value);
                  print('validation failed');
                }
              },
            ),
          ],
        ),
      ),
    ),)
    ,
    );
  }
}
