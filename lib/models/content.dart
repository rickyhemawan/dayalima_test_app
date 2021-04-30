class Content {
  String id;
  String name;
  String desc;
  String img;

  Content(this.id, this.name, this.desc, this.img);

  Content.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        desc = json['desc'],
        img = json['img'];

  @override
  String toString() {
    return 'Content{id: $id, name: $name, desc: $desc, img: $img}';
  }
}
