class TestService {
  List<Map<String, Object>> dataMatematica = [
    {"id": 1, "data": "23/03/20", "valor": 77, "nota": 81},
    {"id": 2, "data": "01/11/20", "valor": 20, "nota": 4},
    {"id": 3, "data": "29/11/20", "valor": 6, "nota": 65},
  ];
  List<Map<String, Object>> dataPortugues = [
    {"id": 1, "data": "23/03/20", "valor": 77, "nota": 81},
    {"id": 2, "data": "01/11/20", "valor": 20, "nota": 4},
    {"id": 3, "data": "29/11/20", "valor": 6, "nota": 65},
  ];
  List<Map<String, Object>> dataGeografica = [
    {"id": 1, "data": "23/03/20", "valor": 77, "nota": 81},
    {"id": 2, "data": "01/11/20", "valor": 20, "nota": 4},
    {"id": 3, "data": "29/11/20", "valor": 6, "nota": 65},
  ];

  diciplinas() {
    return [
      {"matematica": dataMatematica},
      {"portugues": dataPortugues},
      {"geografia": dataGeografica}
    ];
  }
}


