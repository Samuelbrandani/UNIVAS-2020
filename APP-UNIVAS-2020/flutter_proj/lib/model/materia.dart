class Materia {
  int id;
  String data;
  int valor;
  int nota;

  Materia({this.id, this.data, this.valor, this.nota});

  Materia.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    data = json['data'];
    valor = json['valor'];
    nota = json['nota'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['data'] = this.data;
    data['valor'] = this.valor;
    data['nota'] = this.nota;
    return data;
  }
}
