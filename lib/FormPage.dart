import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter1/models/user.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageSate createState() => _FormPageSate();
}

class _FormPageSate extends State<FormPage> {
  final _user = User();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Page"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Builder(
          builder: (context) => Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'First name'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter firname';
                    }
                    return null;
                  },
                  onSaved: (val) => setState(() => _user.firstName = val),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Last name'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter last';
                    }
                    return null;
                  },
                  onSaved: (val) => setState(() => _user.lastName = val),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 16.0),
                  child: Text('Subscribe'),
                ),
                SwitchListTile(
                  title: const Text('Monthe news letterc'),
                  value: _user.newsletter,
                  onChanged: (bool val) =>
                      setState(() => _user.newsletter = val),
                ),
                CheckboxListTile(
                  title: const Text('Cooking'),
                  value: _user.passions[User.PassionCooking],
                  onChanged: (val) =>
                      setState(() => _user.passions[User.PassionCooking] = val),
                ),
                CheckboxListTile(
                  title: const Text('Hiking'),
                  value: _user.passions[User.PassionHiking],
                  onChanged: (val) =>
                      setState(() => _user.passions[User.PassionHiking] = val),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  child: RaisedButton(
                    child: Text('Save me'),
                    onPressed: () {
                      final form  = _formKey.currentState;
                       if (form.validate()) {
                         form.save();
                         log('saveed');
                         _user.save();
                         _showDialog(context);
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('Submited Data')));
  }
}
