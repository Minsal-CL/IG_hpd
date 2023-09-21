CodeSystem: CSTipoIdentificadorDEIS
Id: CSTipoIdentificadorDEIS
Title: "Códigos para tipos de identificadores 820"
Description: "Códigos para lo tipos de identificadores según Norma 820, agregando RNPI"

* ^caseSensitive = true
* ^experimental = true //dependera del uso que le den al codesystem
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-09-11T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
  

* #1 "RUN" "Número Identificador de Cédula de Identidad"
* #2 "RUN Materno/progenitor (a)" "Número identificador RUN de la madre asociado a paciente recién nacido"
* #3 "Número de Folio del Comprobante de Parto" "Número del folio entregado por el Centro de Salud, acreditando el parto."
* #4 "Número de Pasaporte" "Número del pasaporte asociado al paciente"
* #5 "Número de Documento identificador país de origen" "Número de documento extranjero"
* #6 "Número de Identificador FONASA" "Número que identifica al paciente en los registros de FONASA"
* #98 "RNPI" "Número asociado al registro nacional de prestadores individuales" 

ValueSet: VSTipoIdentificadorDEIS
Id: VSTipoIdentificadorDEIS
Title: "Códigos para tipos de identificadores 820"
Description: "Códigos para lo tipos de identificadores según Norma 820, agregando RNPI"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSTipoIdentificadorDEIS


CodeSystem:  CSSexoBiologico
Id: CSSexoBiologico
Title: "Códigos para Sexo de Nacimiento de Paciente"
Description: "Codigos definidos para el sexo de nacimiento de un paciente en Chile"

* ^caseSensitive = true
* ^experimental = true //dependera del uso que le den al codesystem
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
////* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile":iso:std:iso:3166#CL "Chile"
  

* #1 "Hombre" "Persona que al nacer se observa anatómicamente que tiene a nivel genital pene, escroto y/o testículos."
* #2 "Mujer" "Persona que al nacerse se observa anatómicamente que tiene a nivel genital vulva u orificio vaginal."
* #3 "Intersexual" "Persona que al nacer se observa variaciones anatómicas en los órganos genitales del cuerpo que no permite clasificar de forma dicotómica en hombre o mujer. No constituye un tercer sexo."
* #99 "Desconocido" "No es posible determinarlo al momento de la atención de salud." 

ValueSet: VSSexoBiologico
Id: VSSexoBiologico
Title: "Códigos para sexo biológico en Chile"
Description: "Códigos para sexo biológico en Chile según tabla 820."
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
////* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile":iso:std:iso:3166#CL "Chile"

* codes from system CSSexoBiologico


CodeSystem:  CSTituloProf
Id: CSTituloProf
Title: "Códigos para título profesional"
Description: "Códigos para títulos profesionales según Norma Técnica 820"

* ^caseSensitive = true
* ^experimental = true //dependera del uso que le den al codesystem
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-09-20T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "Médico(a) Cirujano(a)"
* #2 "Cirujano(a) Dentista"

ValueSet:  VSTituloProf
Id: VSTituloProf
Title: "Códigos para título profesional"
Description: "Códigos para títulos profesionales según Norma Técnica 820"

* ^experimental = true //dependera del uso que le den al codesystem
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-09-20T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* codes from system CSTituloProf

CodeSystem:  CSEspecialidadOdonto
Id: CSEspecialidadOdonto
Title: "Especialidad y Subespecialidad Odontológica"
Description: "Códigos de Especialidad y Subespecialidad Odontológica."
* ^caseSensitive = true
* ^experimental = true //dependera del uso que le den al codesystem
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1	"Cirugía y Traumatología Buco Maxilofacial"
* #2	"Cirugía Bucal"
* #3	"Endodoncia"
* #4	"Imagenología Oral y Maxilofacial"
* #5	"Implantología Buco Maxilofacial"
* #6	"Odontología legal"
* #7	"Odontopediatría"
* #8	"Ortodoncia y Ortopedia Dento Máxilo Facial"
* #9	"Patología Oral"
* #10	"Periodoncia"
* #11	"Rehabilitación Oral"
* #12	"Salud Pública"
* #13	"Somato-Prótesis"
* #14	"Trastornos Temporomandibulares Y Dolor Orofacial"


ValueSet:  VSEspecialidadOdonto
Id: VSEspecialidadOdonto
Title: "Especialidad y Subespecialidad Odontológica"
Description: "Códigos de Especialidad y Subespecialidad Odontológica."
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system  CSEspecialidadOdonto

CodeSystem:  CSEspecialidadFarma
Id: CSEspecialidadFarma
Title: "Especialidad y Subespecialidad Farmacéuticas o Química Farmacéutica"
Description: "Códigos de Especialidad y Subespecialidad Farmacéutica o Química Farmacéutica."
* ^caseSensitive = true
* ^experimental = true //dependera del uso que le den al codesystem
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1	"Farmacia Clínica"
* #2	"Farmacia Hospitalaria"
* #3	"Laboratorio Clínico"
* #4	"Salud Pública"
* #5	"Laboratorio Forense"

ValueSet:  VSEspecialidadFarma
Id: VSEspecialidadFarma
Title: "Especialidad y Subespecialidad Farmacéuticas o Química Farmacéutica"
Description: "Códigos de Especialidad y Subespecialidad Farmacéutica o Química Farmacéutica."
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system  CSEspecialidadFarma

CodeSystem:  CSEspecialidadBioquim
Id: CSEspecialidadBioquim
Title: "Especialidad y Subespecialidad Bioquímica"
Description: "Códigos de Especialidad y Subespecialidad Bioquímica."
* ^caseSensitive = true
* ^experimental = true //dependera del uso que le den al codesystem
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1	"Laboratorio Clínico"
* #2	"Laboratorio Forense"
* #3	"Salud Pública"


ValueSet:  VSEspecialidadBioquim
Id: VSEspecialidadBioquim
Title: "Especialidad y Subespecialidad Bioquímica"
Description: "Códigos de Especialidad y Subespecialidad Bioquímica."
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system  CSEspecialidadBioquim
