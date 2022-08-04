import 'package:mvvm_templet/dependencies/dependencies.dart';
import 'package:mvvm_templet/models/home.dart';
import 'package:mvvm_templet/screens/viewmodel.dart';
import 'package:mvvm_templet/services/home/home_service.dart';

class HomeViewmodel extends Viewmodel {
  HomeService get _service => dependency();

  bool _isLoading = false;

  get isLoading => _isLoading;
  set isLoading(value) {
    turnBusy();
    _isLoading = value;
    turnIdle();
  }

  // get the list from service class
  List<HomeModel> getList() {
    List<HomeModel> _list = _service.homeList();
    return _list;
  }
}
