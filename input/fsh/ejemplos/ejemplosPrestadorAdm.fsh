Instance: MINSALPrestadorAdministrativoEjemplo
InstanceOf: MINSALPrestadorAdministrativo
Usage: #example
Title: "MINSAL Prestador Administrativo Ejemplo 1"
Description: "MINSAL Prestador Administrativo Ejemplo 1"

* name.family = "Perez"
* name.given = "Juan"

* extension[Nacionalidad].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152
* extension[Nacionalidad].valueCodeableConcept.coding.display = "Chile"

* identifier[run].use = #official
* identifier[run].type.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/hpd/CodeSystem/VSTipoIdentificadorDEIS"
* identifier[run].type.coding.code = #1
* identifier[run].system = "https://api.cl/system/run"
* identifier[run].value = "32.333.333-3"

* active = true
* birthDate = "1982-08-24"

* telecom.system = #phone
* telecom.value = "+56982460152"
* telecom.use = #home
* telecom.rank = 1

* address.city.extension[ComunasCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension[ComunasCl].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension[ComunasCl].valueCodeableConcept.coding.code = #05602
* address.city.extension[ComunasCl].valueCodeableConcept.coding.display =  "Algarrobo"

* address.district.extension[ProvinciasCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL" 
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.code = #056 
* address.district.extension[ProvinciasCl].valueCodeableConcept.coding.display = "San Antonio"

* address.state.extension[RegionesCl].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension[RegionesCl].valueCodeableConcept.coding.system  = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL" 
* address.state.extension[RegionesCl].valueCodeableConcept.coding.code  = #05 
* address.state.extension[RegionesCl].valueCodeableConcept.coding.display  = "Valparaíso"

* address.country.extension[CodigoPaises].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.code = #152
* address.country.extension[CodigoPaises].valueCodeableConcept.coding.display = "Chile"
