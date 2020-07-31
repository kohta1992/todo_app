class Item {
  int id;
  TaskStatus status;
  String title;
  String addedDate;
  String completedDate;

  Item(this.id, this.status, this.title, this.addedDate, this.completedDate);
}

enum TaskStatus{
  NEW,
  CHECKED,
}
