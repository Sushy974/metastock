class Product {
  Product(
    this._archive,
    this._description,
    this._name,
    this._picture,
    this._stock,
    this._threshold,
    this._uniprice,
  );

  bool _archive;
  String _description;
  String _name;
  String _picture;
  int _stock;
  int _threshold;
  int _uniprice;

  bool get archive => _archive;

  set archive(bool value) {
    _archive = value;
  }

  String get description => _description;

  int get uniprice => _uniprice;

  set uniprice(int value) {
    _uniprice = value;
  }

  int get threshold => _threshold;

  set threshold(int value) {
    _threshold = value;
  }

  int get stock => _stock;

  set stock(int value) {
    _stock = value;
  }

  String get picture => _picture;

  set picture(String value) {
    _picture = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  set description(String value) {
    _description = value;
  }
}
