class HomeModel {
  String _name;
  String _phone;
  String _address;

  HomeModel({
    String name = '',
    String phone = '',
    String address = '',
  })  : _name = name,
        _phone = phone,
        _address = address;

  String get name => _name;
  set name(String val) => _name = val;

  String get phone => _phone;
  set phone(String val) => _phone = val;

  String get address => _address;
  set address(String val) => _address = val;
}
