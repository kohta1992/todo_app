import 'package:todo_app/db/item.dart';

class ItemList {
  List<Item> _items;

  ItemListMode _mode;

  ItemList(this._items, this._mode);

  set items(List<Item> value) {
    _items = value;
  }

  set mode(ItemListMode value) {
    _mode = value;
  }
}

enum ItemListMode {
  CHECK_LIST,
  CALC_CHECK_LIST,
}
