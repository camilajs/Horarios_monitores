class MonitorModel {
  final String imagem;
  final String nome;
  final List<String> horarios;

  MonitorModel({
    required this.imagem,
    required this.nome,
    required this.horarios
  });

  factory MonitorModel.fromMap(Map<String, dynamic> map){
    return MonitorModel(
      imagem: map["img"],
      nome: map["nome"],
      horarios: List<String>.from((map['horarios'] as List))
      );
  }
}