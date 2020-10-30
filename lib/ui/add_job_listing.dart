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
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 24.0),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 0.0),
                child: Text(
                  'Add a new Listing',
                  style: TextStyle(fontSize: 24),
                ),
              ),
          FormBuilderTextField(
            attribute: "Position",
            decoration: InputDecoration(labelText: "Position"),
            validators: [
              FormBuilderValidators.max(20),
            ],
          ),
              SizedBox(height: 16,),
              FormBuilderTextField(
                attribute: "desciption",
                decoration: InputDecoration(labelText: "Desciption"),
                maxLines: 3,
                validators: [
                  FormBuilderValidators.max(100),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              FormBuilderSlider(
                attribute: 'slider',
                min: 1000.0,
                max: 10000.0,
                initialValue: 5000.0,
                divisions: 100,
                activeColor: Color(0xff8af1d6),
                inactiveColor: Colors.black12,
                decoration: const InputDecoration(
                    labelText: 'Salary',
                    border: InputBorder.none,
                    labelStyle: TextStyle(fontSize: 16.0)),
                displayValues: DisplayValues.current,
              ),
              SizedBox(height: 16.0),
              FormBuilderTouchSpin(
                decoration: const InputDecoration(
                    labelText: 'Hours',
                    border: InputBorder.none,
                    labelStyle: TextStyle(fontSize: 16.0)),
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
                    labelText: 'Job location',
                    border:InputBorder.none,
                    labelStyle: TextStyle(fontSize: 16.0)),
                validators: [
                  FormBuilderValidators.required(
                      errorText: 'This field required.'),
                ],
              ),
              SizedBox(height: 15),
              FormBuilderRadioGroup(
                attribute: 'radio_group',
                decoration: const InputDecoration(
                    labelText: 'Availability',
                    border: InputBorder.none,
                    labelStyle: TextStyle(fontSize: 16.0)),
                options: [
                  FormBuilderFieldOption(
                      value: 'full-time', child: Text('Full-Time')),
                  FormBuilderFieldOption(
                      value: 'part-time', child: Text('Part-Time')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
