// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Alias: $SegundoApellido = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido
Alias: $cl-address = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/cl-address

Profile: PrestadorProfesionalMinsal
Parent: PrestadorCL
Title: "Prestador Profesional Minsal"
Description: "Prestador Profesional Individual definido para fines de requerimientos normativos y conjunto de datos deseables para el sector público de salud."

* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-09-11T12:00:00-04:00"
* ^publisher = "HL7 Chile"
* ^contact.name = "HL7 Chile"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7chile.cl"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^copyright = "Usado con el permiso de HL7 International, todos los derechos resevados en los Licencias de HL7 Internacional."



* identifier[RUN] ^short = "Identificador destinado a determinar el número de RUN"
* identifier[RUN] ^definition = "Corresponde al identificador (RUN) otorgado el Registro Civil de Chile"

  * use 1..1 MS 
  * use = #official
  * type 1..1 MS
  * type from VSTipoIdentificadorDEIS
  * type ^short = "Descripción del identificador"
  * type ^definition = "Descripción para el tipo de identificador"
    * coding MS
      * system 0..1 MS
      * system ^short = "Sistema de codificación para el código de tipo de identificador"
      * code 1..1 MS
      * code = #1
      * code ^short = "Código que identifica al tipo de documento de identificador"
      * code ^definition = "Código que identifica al tipo de documento de identificador"
  
* identifier[OtrosID] 0..2 MS
* identifier[OtrosID] ^short = "Identificador para Identificador RNPI y Pasaporte"
* identifier[OtrosID] ^definition = "Se dispone de la posibilidad de agregar un identificador RNPI y un Pasaporte o ambos"
  * use 1..1 MS
  * use = #secondary
  * use ^short = "Se define el uso de este identificador"
  * use ^definition = "Se definirá este uso siempre como \"secondary\""
  * type 1..1 MS
  * type from VSTipoIdentificadorDEIS
  * type ^short = "Descripción del identificador"
  * type ^definition = "Descripción para el tipo de identificador"
    * extension contains https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises named PaisOrigen 0..1  MS
    * coding MS
      * system 1..1 MS
      * system ^short = "Sistema de codificación para el código de tipo de identificador"
      * code ^short = "4: Pasaporte|98: RNPI"
      * code ^definition = "Código que identifica al tipo de documento de identificador. #4 será para pasaporte y #98 para RNPI"

  * value 1..1 MS
  * value ^short = "Número de Pasaporte o RNPI"
  * value ^definition = "Valor del Pasaporte especificado en el documento o RNPI entregado por la SuperIntendecia de Salud"

* active MS


* birthDate 1..1 MS
* birthDate ^short = "Fecha de nacimiento del Paciente. El formato debe ser YYYY-MM-DD"
* birthDate ^definition = "Fecha de nacimiento del Paciente. El formato debe ser YYYY-MM-DD (Ej: 1996-08-21)"

* extension contains SexoNacimiento820 named Sexo 1..1 MS
* extension contains https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises named Nacionalidad 1..1 MS

* telecom MS
  * rank 0..1 MS
    * ^short = "Ranking de preferencia en el uso del contacto"
    * ^definition = "Ranking de preferencia en el uso del contacto"

* address only $cl-address
* address 0..1 MS

* qualification MS
* qualification contains 
    EspOdo 0..* MS and
    EspBioQ 0..* MS and
    EspFarma 0..* MS

* qualification[Cert] ^short = "Especificación de los Títulos o Certificados Profesionales que tiene el Prestador"
* qualification[Cert] ^definition = "Listado de Títulos o Cetificados Profesionales que tiene el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
* qualification[Cert].code MS
* qualification[Cert].code from VSTituloProf
* qualification[Cert].period 0..1 MS
  * ^short = "Período en el cual se entregó el título considerando fecha de emisión y de caducidad"
  * start ^short = "Fecha de emisión"
  * end ^short = "Fecha de expiración" 
* qualification[Cert].issuer 0..1 MS
  * ^short = "Entidad que otorga el título"
  * ^definition  = "El nombre de la entidad se solicitará en texto libre"
  * display ^short = "La entidad que otorga en texto libre"
  * display ^definition = "La entidad que otorga en texto libre"


* qualification[Cert].extension contains Mencion named mencion 0..1 MS

* qualification[EspOdo] ^short = "Especialidad Odontológica que tiene el Prestador"
  * ^definition = "Especialidades definidas en Norma Técnica 820"
  * identifier.value = "EspOdo"
  * code MS
  * code from VSEspecialidadOdonto
  * period 0..1 MS
    * ^short = "Período en el cual se entregó la especialidad considerando fecha de emisión y de caducidad"
    * start ^short = "Fecha de emisión"
    * end ^short = "Fecha de expiración" 
  * issuer 0..1 MS
    * ^short = "Entidad que otorga la especialidad"
    * ^definition = "El nombre de la entidad se solicitará en texto libre"
    * display ^short = "La entidad que otorga en texto libre"
    * display ^definition = "La entidad que otorga en texto libre"

* qualification[Esp].period ^short = "Período en el cual se entregó la especialidad considerando fecha de emisión y de caducidad"
  * start ^short = "Fecha de emisión"
  * end ^short = "Fecha de expiración" 
* qualification[Esp].issuer 0..1 MS
  * ^short = "Entidad que otorga la especialidad"
  * ^definition = "El nombre de la entidad se solicitará en displayo libre"
  * display ^short = "La entidad que otorga en texto libre"
  * display ^definition = "La entidad que otorga en texto libre"

* qualification[EspBioQ] ^short = "Especialidad Bioquímica que tiene el Prestador"
  * ^definition = "Especialidades definidas en Norma Técnica 820"
  * identifier.value = "EspBioQ"
  * code MS
  * code from VSEspecialidadBioquim
* qualification[Esp].period 0..1 MS
  * ^short = "Período en el cual se entregó la especialidad considerando fecha de emisión y de caducidad"
  * start ^short = "Fecha de emisión"
  * end ^short = "Fecha de expiración" 
* qualification[Esp].issuer 0..1 MS
  * ^short = "Entidad que otorga la especialidad"
  * ^definition = "El nombre de la entidad se solicitará en texto libre"
  * display ^short = "La entidad que otorga en texto libre"
  * display ^definition = "La entidad que otorga en texto libre"

* qualification[EspFarma] ^short = "Especialidad Farmacéutica o Química Farmacéutica que tiene el Prestador"
  * ^definition = "Especialidades definidas en Norma Técnica 820"
  * identifier.value = "EspFarma"
  * code MS
  * code from VSEspecialidadFarma
  * period 0..1 MS
    * ^short = "Período en el cual se entregó la especialidad considerando fecha de emisión y de caducidad"
    * start ^short = "Fecha de emisión"
    * end ^short = "Fecha de expiración" 
  * issuer 0..1 MS
    * ^short = "Entidad que otorga la especialidad"
    * ^definition = "El nombre de la entidad se solicitará en texto libre"
    * display ^short = "La entidad que otorga en texto libre"
    * display ^definition = "La entidad que otorga en texto libre"

