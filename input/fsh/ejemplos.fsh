Instance: EjPrestadorCoreMinsal
InstanceOf: PrestadorProfesionalMinsal
Usage: #example
Title: "Ejemplo Prestador Profesional Minsal 1"
Description: "Prestador Profesional sin contacto y sin dirección"



* identifier[RUN].use = #official
* identifier[RUN].type.coding.system = "http://minsal.cl/fhir/core/CodeSystem/CSTipoIdentificadorDEIS"
* identifier[RUN].type.coding.code = #1
* identifier[RUN].type.coding.display = "RUN"
* identifier[RUN].system = "https://api.cl/system/run"
* identifier[RUN].value = "32.333.333-3"

* identifier[OtrosID].use = #secondary
* identifier[OtrosID].type.coding.system = "http://minsal.cl/fhir/core/CodeSystem/CSTipoIdentificadorDEIS"
* identifier[OtrosID].type.coding.code = #98
* identifier[OtrosID].type.coding.display = "RNPI"
* identifier[OtrosID].value = "123884"

* active = true
* gender = #female
* birthDate = "1982-08-24"

* extension[0].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[=].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[=].valueCodeableConcept.coding.code = #152
* extension[=].valueCodeableConcept.coding.display = "Chile"

* extension[+].url = "http://minsal.cl/fhir/core/StructureDefinition/SexoNacimiento820"
* extension[=].valueCode = #2

* qualification[Cert].identifier.value = "cert"
* qualification[Cert].code.coding.system = "http://minsal.cl/fhir/core/CodeSystem/CSTituloProf"
* qualification[Cert].code.coding.code = #1
* qualification[Cert].code.coding.display = "Médico(a) Cirujano(a)"
* qualification[Cert].code.text = "Médico Cirujano"
* qualification[Cert].extension.url = "http://minsal.cl/fhir/core/StructureDefinition/Mencion"
* qualification[Cert].extension.valueString = "Inmunohematología"
