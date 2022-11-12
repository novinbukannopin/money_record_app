import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.idHistory,
    this.idUser,
    this.type,
    this.date,
    this.total,
    this.details,
    this.createdAt,
    this.updatedAt,
  });

  String? idHistory;
  String? idUser;
  String? type;
  String? date;
  String? total;
  String? details;
  String? createdAt;
  String? updatedAt;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        idHistory: json["id_history"],
        idUser: json["id_user"],
        type: json["type"],
        date: json["date"],
        total: json["total"],
        details: json["details"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id_history": idHistory,
        "id_user": idUser,
        "type": type,
        "date": date,
        "total": total,
        "details": details,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
