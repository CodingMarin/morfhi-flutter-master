import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  List<GlobalKey<FormState>> formKeys = [
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
  ];
  void cleanForm() {
    _currentStep = 0;
    isComplete = false;
    _titleTaskTextController.clear();
    _descriptionTextController.clear();
    _priceTaskTextController.clear();
    _dateTextController.clear();
    _dropdownCategory = null;
    _addressTextController.clear();
    priceCheckBox = false;
  }

//Controller text
  final _titleTaskTextController = TextEditingController();
  final _descriptionTextController = TextEditingController();
  dynamic _dropdownCategory;
  final _priceTaskTextController = TextEditingController();
  final _addressTextController = TextEditingController();
  final _dateTextController = TextEditingController();
  final _tasksTextController = TextEditingController();
//FocusNodes
  final FocusNode _titleTaskTextFocus = FocusNode();
  final FocusNode _descriptionTextFocus = FocusNode();
  final FocusNode _dropdownFocus = FocusNode();
  final FocusNode _priceTaskTextFocus = FocusNode();
  final FocusNode _addressTextFocus = FocusNode();
  final FocusNode _choiceChipFocus = FocusNode();
  final _dateTextFocus = FocusNode();

  int _currentStep = 0;
  bool isComplete = false;

  List<String> dropdownCategoryList = [
    'Servicios de hogar',
    'Envio y flete',
    'Otros'
  ];
  List<String> listTasks = [];
  DateTime datetime = DateTime.now();
  bool priceCheckBox = false;
  List<Step> getSteper() => [
        Step(
            state: _currentStep > 0 ? StepState.complete : StepState.indexed,
            isActive: _currentStep >= 0,
            title: const Text(''),
            content: Form(
              key: formKeys[0],
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'INFORMACION DE LA TAREA',
                      style: TextStyle(
                          color: Color.fromRGBO(80, 126, 225, 1),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w800),
                    ),
                    const Divider(),
                    Text(
                      'Titulo de la tarea',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 5.0),
                    TextFormField(
                      focusNode: _titleTaskTextFocus,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => FocusScope.of(context)
                          .requestFocus(_descriptionTextFocus),
                      controller: _titleTaskTextController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: 'Ingresa titulo al servicio',
                          filled: true,
                          fillColor: Colors.grey[50],
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10.0),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Introdusca un titulo';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      'Describe la tarea',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 5.0),
                    TextFormField(
                      focusNode: _descriptionTextFocus,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () =>
                          FocusScope.of(context).requestFocus(_dropdownFocus),
                      controller: _descriptionTextController,
                      keyboardType: TextInputType.multiline,
                      maxLines: 6,
                      decoration: InputDecoration(
                          hintText:
                              'Por ejemplo: busco delivery para que me realize un pedido.',
                          filled: true,
                          fillColor: Colors.grey[50],
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10.0),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Introdusca un titulo';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      'Categoria',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 5.0),
                    DropdownButtonFormField(
                      focusNode: _dropdownFocus,
                      decoration: InputDecoration(
                          hintText: 'Selecciona la categoria',
                          filled: true,
                          fillColor: Colors.grey[50],
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10.0),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      value: _dropdownCategory,
                      onChanged: (value) {
                        setState(() => _dropdownCategory = value);
                      },
                      items: dropdownCategoryList
                          .map<DropdownMenuItem<String>>((String value) =>
                              DropdownMenuItem<String>(
                                  value:
                                      value, // add this property an pass the _value to it
                                  child: Text(value)))
                          .toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Seleccione una categoria';
                        }

                        return null;
                      },
                    ),
                  ],
                ),
              ),
            )),
        Step(
          state: _currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 1,
          title: const Text(''),
          content: Form(
            key: formKeys[1],
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'CUANTO ES TU RECOMPENZA',
                    style: TextStyle(
                        color: Color.fromRGBO(80, 126, 225, 1),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  TextFormField(
                    focusNode: _priceTaskTextFocus,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () =>
                        FocusScope.of(context).requestFocus(_choiceChipFocus),
                    controller: _priceTaskTextController,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                      // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ],
                    decoration: InputDecoration(
                        hintText: 'Escribe el monto de la oferta',
                        filled: true,
                        fillColor: Colors.grey[50],
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Introdusca un monto';
                      }

                      return null;
                    },
                  ),
                  const SizedBox(height: 5.0),
                  ChoiceChip(
                    autofocus: true,
                    focusNode: _choiceChipFocus,
                    labelStyle: priceCheckBox
                        ? const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600)
                        : const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                    selectedColor: Colors.blue[400],
                    label: const Text('Precio a negociar'),
                    selected: priceCheckBox,
                    onSelected: (bool newSelect) =>
                        setState(() => priceCheckBox = newSelect),
                  ),
                  const SizedBox(height: 5.0),
                  const SizedBox(height: 5.0),
                  const Text(
                    'LUGAR DE LA TAREA',
                    style: TextStyle(
                        color: Color.fromRGBO(80, 126, 225, 1),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  TextFormField(
                    focusNode: _addressTextFocus,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () =>
                        FocusScope.of(context).requestFocus(_dateTextFocus),
                    controller: _addressTextController,
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                        hintText: 'Ingresa la direccion exacta',
                        filled: true,
                        fillColor: Colors.grey[50],
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Introdusca una direccion';
                      }

                      return null;
                    },
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'FECHA DE FINALIZACION DE LA TAREA',
                    style: TextStyle(
                        color: Color.fromRGBO(80, 126, 225, 1),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  TextFormField(
                    onTap: () async {
                      FocusScope.of(context).requestFocus(_dateTextFocus);
                      DateTime? newdatetime = await showDatePicker(
                        context: context,
                        initialDate: datetime,
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100),
                      );

                      if (newdatetime != null) {
                        setState(() => {
                              datetime = newdatetime,
                            });
                      }
                    },
                    readOnly: true,
                    textInputAction: TextInputAction.next,
                    focusNode: _dateTextFocus,
                    controller: _dateTextController,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        hintText:
                            '${datetime.day}-${datetime.month}-${datetime.year}',
                        filled: true,
                        fillColor: Colors.grey[50],
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Introdusca una fecha';
                      }

                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        Step(
          state: _currentStep > 2 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 2,
          title: const Text(''),
          content: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'AÑADE TAREAS A TU RETO',
                    style: TextStyle(
                        color: Color.fromRGBO(80, 126, 225, 1),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  const Text(
                      "Escribe las diferentes tareas que debe hacer la persona para cumplir el reto. En Bono, escribe el costo monetario por cada tarea."),
                  const SizedBox(height: 10.0),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: _tasksTextController,
                          keyboardType: TextInputType.multiline,
                          maxLines: 3,
                          decoration: InputDecoration(
                              hintText: 'Tarea 1: Colocar base a la pared',
                              filled: true,
                              fillColor: Colors.grey[50],
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 10.0),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Introdusca un titulo';
                            }

                            return null;
                          },
                        ),
                        Directionality(
                          textDirection: TextDirection.ltr,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              setState(() {
                                listTasks.add(_tasksTextController.text);
                                _tasksTextController.clear();
                              });
                            },
                            icon: const Icon(MdiIcons.plus),
                            label: const Text('Agregar Tarea'),
                          ),
                        ),
                        Column(
                          children: [
                            if (listTasks.isNotEmpty)
                              for (String task in listTasks)
                                Text('Tarea ${task.length}: $task')
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
        ),
        Step(
            state: _currentStep > 3 ? StepState.complete : StepState.indexed,
            isActive: _currentStep >= 3,
            title: const Text(''),
            content: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'SUBE IMAGENS',
                      style: TextStyle(
                          color: Color.fromRGBO(80, 126, 225, 1),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w800),
                    ),
                    const Divider(),
                    const Text(
                        "Sube imagenes para explicar mejor la actividad que debe realizar."),
                    const SizedBox(height: 10.0),
                    Container(
                      alignment: Alignment.center,
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: const Icon(MdiIcons.plus,
                          color: Colors.grey, size: 30.0),
                    )
                  ],
                ))),
        Step(
          state: _currentStep > 4 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 4,
          title: const Text('Completar'),
          content: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // children: [],
              )),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    final ButtonStyle styleElevated = ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[100],
        foregroundColor: const Color.fromRGBO(80, 126, 225, 1),
        elevation: 1,
        textStyle: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(80, 126, 225, 1)));
    final ButtonStyle styleElevated1 = ElevatedButton.styleFrom(
        foregroundColor: Colors.grey[100],
        backgroundColor: const Color.fromRGBO(80, 126, 225, 1),
        elevation: 1,
        textStyle: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(80, 126, 225, 1)));

    return Scaffold(
      body: !isComplete
          ? startTasks()
          : Theme(
              data: Theme.of(context).copyWith(
                  colorScheme: const ColorScheme.light(
                      primary: Color.fromRGBO(80, 126, 225, 1))),
              // child: Form(
              //   key: formKeyList[0],
              child: Stepper(
                  onStepContinue: () {
                    final isLastStep = _currentStep == getSteper().length - 1;
                    if (isLastStep) {
                      setState(() => isComplete = false);
                      debugPrint('Completo');
                    } else {
                      if (formKeys[_currentStep].currentState!.validate()) {
                        setState(() => _currentStep += 1);
                      }
                      //   if(formKeys[currStep].currentState.validate()) {
                      // if (currStep < steps.length - 1) {
                      //   currStep = currStep + 1;
                      // } else {
                      //   currStep = 0;
                      // }
                      // if (formKeyList[0].currentState!.validate()) {
                      //     setState(() => _currentStep += 1);
                      //     debugPrint('Confirmando form 1');
                      //   } else if (formKeyList[0].currentState!.validate()) {
                      //     setState(() => _currentStep += 1);
                      //     debugPrint('Confirmando form 1');
                      //   }
                      // setState(() => _currentStep += 1);
                    }
                  },
                  onStepCancel: _currentStep == 0
                      ? null
                      : () => setState(() => _currentStep -= 1),
                  controlsBuilder: (context, ControlsDetails details) {
                    final isLastStep = _currentStep == getSteper().length - 1;
                    return Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        children: [
                          if (_currentStep != 0)
                            if (!isLastStep)
                              Expanded(
                                child: Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: ElevatedButton.icon(
                                    style: styleElevated,
                                    onPressed: details.onStepCancel,
                                    icon: const Icon(MdiIcons.chevronLeft),
                                    label: const Text('Atras'),
                                  ),
                                ),
                              ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          _currentStep == 0
                              ? Expanded(
                                  child: ElevatedButton(
                                    style: styleElevated1,
                                    onPressed: details.onStepContinue,
                                    child: const Text('Siguiente'),
                                  ),
                                )
                              : Expanded(
                                  child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: ElevatedButton.icon(
                                    style: isLastStep
                                        ? styleElevated1
                                        : styleElevated,
                                    onPressed: details.onStepContinue,
                                    icon: const Icon(MdiIcons.chevronRight),
                                    label: Text(isLastStep
                                        ? 'Confirmar '
                                        : 'Siguiente'),
                                  ),
                                )),
                        ],
                      ),
                    );
                  },
                  onStepTapped: (step) => setState(() => _currentStep = step),
                  currentStep: _currentStep,
                  type: StepperType.horizontal,
                  steps: getSteper()),
              // ),
            ),
    );
  }

  Widget startTasks() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(height: 40.0),
          Image.asset('assets/Frame.png', height: 300.0),
          const SizedBox(height: 20.0),
          ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 0))),
            onPressed: () {
              setState(() {
                isComplete = true;
              });
            },
            child: Ink(
              width: 250.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                gradient: LinearGradient(
                  colors: [Color(0xffff7e21), Color(0xffba945a)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Container(
                  padding: const EdgeInsets.all(10.0),
                  constraints:
                      const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
                  alignment: Alignment.center,
                  child: const Text(
                    "Crear un reto laboral",
                    style: TextStyle(fontSize: 18.0),
                  )),
            ),
          ),
          const SizedBox(height: 20.0),
          Text(
            'Quiero cumplir retos y ganar.',
            style:
                TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w700),
          ),
        ]),
      ),
    );
  }
}
