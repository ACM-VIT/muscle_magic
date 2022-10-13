import "package:flutter/material.dart";

class ApiModal {
  final String name;
  final String gifUrl;

  const ApiModal({
    required this.name,
    required this.gifUrl,
  });

  factory ApiModal.fromJson(Map<String, dynamic> json) {
    return ApiModal(
      name: json['name'],
      gifUrl: json['gifUrl'],
    );
  }
}
