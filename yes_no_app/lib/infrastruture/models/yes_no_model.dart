import 'package:yes_no_app/domain/entities/message.dart';

class YesNoModel {
  YesNoModel({required this.answer, required this.image, required this.forced});

  final String answer;
  final String image;
  final bool forced;

  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
    answer: json["answer"],
    image: json["image"],
    forced: json["forced"],
  );

  Map<String, dynamic> toJson() => {
    "answer": answer,
    "image": image,
    "forced": forced,
  };
  Message toMessageEntity() => Message(
    text: answer == 'yes' ? 'Sí' : 'No',
    fromWho: FromWho.hers,
    imageUrl: image,
  );
}
