class Category {
  final int id;
  final String name;
  final String img;
  final String listData;

  Category(this.id, this.name, this.img, this.listData);

  Category.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        img = json['img'],
        listData = json['listData'];

  @override
  String toString() {
    return 'Category{id: $id, name: $name, img: $img, listData: $listData}';
  }
}
