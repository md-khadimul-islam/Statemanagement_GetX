import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;
  RxDouble opacity = .4.obs;
  RxString imagePath = ''.obs;

  incrementCounter () {
    counter.value++;
    // print(counter.value);
  }

  incrementOpacity (double value) {
    opacity.value = value;
  }

 Future getImage ()async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.camera);
    if(image != null) {
      imagePath.value = image.path.toString();
    }
  }
}