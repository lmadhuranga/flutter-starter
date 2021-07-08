import 'dart:developer';

class User {
  static const String PassionCooking = 'cooking';
  static const String PassionHiking = 'hiking';

  String firstName = '';
  String lastName = '';

  Map<String, bool> passions = {
    PassionCooking:false,
    PassionHiking:false,
  };

  bool newsletter = false;

  save() {
    log('firstName');
    log(this.firstName);
    log('lastName');
    log(this.lastName);
    print('save users using a web service');
  }
}