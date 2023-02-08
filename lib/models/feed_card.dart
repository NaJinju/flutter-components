class FeedCardModel {
  final String title, content, regdate, imageUrl;
  final bool isFree;
  final int likeCount, commentCount;

  FeedCardModel({
    required this.title,
    required this.content,
    required this.regdate,
    required this.isFree,
    required this.likeCount,
    required this.commentCount,
    required this.imageUrl,
  })

  // FeedCardModel.fromJson(Map<String, dynamic> json)
  //     : title = json['title'],
  //       thumb = json['thumb'],
  //       id = json['id'];
}
