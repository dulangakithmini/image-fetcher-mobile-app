class ImageModel {
  int? id;
  String? url;
  String? title;

  ImageModel(this.id, this.url, this.title);

  // When passing a json to json.decode(), we get a map with key type String and value type dynamic
  ImageModel.fromJson(parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}
