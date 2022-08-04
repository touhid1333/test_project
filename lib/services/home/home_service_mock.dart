import 'package:mvvm_templet/models/home.dart';
import 'package:mvvm_templet/services/home/home_service.dart';

class HomeServiceMock implements HomeService {
  @override
  homeList() {
    List<HomeModel> personList = [
      HomeModel(
        name: "MD Karimul Hasan",
        phone: "+8801709174366",
        address: "Xyz, house - 2, Block - x, Xyz, Dhaka",
      ),
      HomeModel(
        name: "MD Karimul Hasan",
        phone: "+8801709174366",
        address: "Xyz, house - 2, Block - x, Xyz, Dhaka",
      ),
      HomeModel(
        name: "MD Karimul Hasan",
        phone: "+8801709174366",
        address: "Xyz, house - 2, Block - x, Xyz, Dhaka",
      ),
      HomeModel(
        name: "MD Karimul Hasan",
        phone: "+8801709174366",
        address: "Xyz, house - 2, Block - x, Xyz, Dhaka",
      ),
    ];
    return personList;
  }
}
