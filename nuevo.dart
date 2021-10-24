import 'package:app/pantalla2.dart';
import 'package:flutter/material.dart';

class nombre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Comida"),
        ),
        backgroundColor: Colors.red,
      ),
      body: lista(),
    );
  }
}

class platillos {
  String nombre, infomacion;
  Image foto;
  platillos(this.nombre, this.infomacion, this.foto);
}

class lista extends StatefulWidget {
  @override
  State<lista> createState() => _listaState();
}

class _listaState extends State<lista> {
  late List comida;

  @override
  void initState() {
    comida = [
      platillos("Salmon", "Pieza de salmon (250 gr), acompañado con ensalada ",
          Image.asset("assets/images/1.jpg")),
      platillos(
          "Spaguetti a la Bolognesa",
          "Pasta tipo spaguetthi bañada en salsa Bolognesa",
          Image.asset("assets/images/2.jpg")),
      platillos(
          "Rib Eye",
          "Corte de carne tipo Rib Eye (250 gr), acompañado con papas a la francesa",
          Image.asset("assets/images/3.jpg")),
      platillos("Pizza", "Pizza de 8 rebanadas con ingredientes a elegir",
          Image.asset("assets/images/4.jpg")),
      platillos(
          "Hamburguesa",
          "Hamburguesa (150 gr), acompañada con papas a la francesa",
          Image.asset("assets/images/5.jpg")),
      platillos(
          "Arrachera",
          "Corte de carne tipo Arrachera (250 gr), acompañado con papas a la francesa",
          Image.asset("assets/images/6.jpg")),
      platillos(
          "Ravioles",
          "Ravioles rellenos de queso mozarella, acompañado con ensalada",
          Image.asset("assets/images/7.jpg")),
      platillos("Sushi", "Orden de 8 rollos de sushi",
          Image.asset("assets/images/8.jpg")),
      platillos("Pozole", "Pozole de pollo o carne de res",
          Image.asset("assets/images/9.jpg")),
      platillos(
          "Enchiladas",
          "Enchiladas en salsa roja o verde acompañadas con pollo",
          Image.asset("assets/images/10.jpg")),
      platillos(
          "Pechuga Empanizada",
          "Pechuga de pollo empanizada, acompañada de ensalda",
          Image.asset("assets/images/11.jpg")),
      platillos("Alitas BBQ", "Orden de 8 alitas cubiertas en salsa BBQ",
          Image.asset("assets/images/12.jpg")),
      platillos("Crepas", "Crepas dulces o saladas",
          Image.asset("assets/images/13.jpg")),
      platillos(
          "Burritos",
          "Tortillas de harina envueltas rellenas de frijoles y queso manchego",
          Image.asset("assets/images/14.jpg")),
      platillos("Tacos", "Tacos de guisado a elegir",
          Image.asset("assets/images/15.jpg")),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: comida.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(comida[index].nombre),
          subtitle: Text(comida[index].infomacion),
          leading: comida[index].foto,
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return informacion();
            }));
          },
        );
      },
    );
  }
}
