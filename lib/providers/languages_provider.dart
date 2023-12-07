import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': 'What is your name?',
          'name': 'My name is Khadimul islam',
        },
        'bn_BD': {
          'message': 'কি নাম তোমার?',
          'name': 'আমার নাম খাদিমুল ইসলাম',
        }
      };
}
