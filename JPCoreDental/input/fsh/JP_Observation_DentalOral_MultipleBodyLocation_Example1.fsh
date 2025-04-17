Instance: jp-observation-dentaloral-multiplebodylocation-example-1
InstanceOf: JP_Observation_DentalOral_MultipleBodyLocation
Title: "JP Core Observation DentalOral Multiple Body Location Example 1"
Description: "口腔診査結果の複数の身体部位を表す例"
Usage: #example

* contained[0] = jp-bodystructure-tooth-46
* contained[1] = jp-bodystructure-tooth-47

* status = #final
* category[first].coding.code = #exam
* category[first].coding.display = "Exam"
* category[second].coding.code = #LP89803-8
* category[second].coding.display = "Dental"
* category[third].coding.code = #DO-1-03
* category[third].coding.display = "ToothTreatmentCondition"
* code.coding = http://loinc.org#54570-7 "Oral/Dental Status"
* code.text = "歯内治療が施行"

* subject = Reference(Patient/jp-patient-example-1)
* effectiveDateTime = "2022-10-01"
* issued = "2022-10-24T17:30:00+09:00"
* performer = Reference(Practitioner/jp-practitioner-example-male-1)

* extension[0].url = "http://jpfhir.jp/fhir/core/StructureDefinition/MultipleBodyLocation"
* extension[0].valueReference = Reference(BodyStructure/jp-bodystructure-tooth-46)
* extension[1].url = "http://jpfhir.jp/fhir/core/StructureDefinition/MultipleBodyLocation"
* extension[1].valueReference = Reference(BodyStructure/jp-bodystructure-tooth-46)

* interpretation.text = "46,47 には歯内治療が施行されている。根管充填は不良とみられる。"
* component.code.coding.code = http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationDentalCategory_CS#DO-1-02
* component.code.coding.display = "歯内治療"
* component.code.text = "46,47 には歯内治療が施行されている。根管充填は不良とみられる。"

Instance: jp-bodystructure-tooth-46
InstanceOf: BodyStructure
Usage: #example
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/bodystructure-identifier"
* identifier.value = "tooth-46"
* patient = Reference(Patient/jp-patient-example-1)
* description = "右側下顎第１大臼歯"
* location.coding = http://jpfhir.jp/fhir/dental/CodeSystem/JP_DentalToothNumberFDI_CS#46 "右側下顎第１大臼歯"

Instance: jp-bodystructure-tooth-47
InstanceOf: BodyStructure
Usage: #example
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/bodystructure-identifier"
* identifier.value = "tooth-47"
* patient = Reference(Patient/jp-patient-example-1)
* description = "右側下顎第２大臼歯"
* location.coding = http://jpfhir.jp/fhir/dental/CodeSystem/JP_DentalToothNumberFDI_CS#47 "右側下顎第２大臼歯"
