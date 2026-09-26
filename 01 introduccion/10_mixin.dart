abstract class Animal {}

abstract class MamiFero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('estoy volando!');
}

mixin Caminante {
  void caminar() => print('estoy caminando!');
}

mixin Nadador {
  void nadar() => print('estoy nadando!');
}

class Delfin extends MamiFero with Nadador {}

class Murcielago extends MamiFero with Volador, Caminante {}

class Gato extends MamiFero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}

class Pato extends Ave with Nadador, Volador, Caminante {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  final namor = Pato();
  namor.caminar();
  namor.volar();
  namor.nadar();
}
