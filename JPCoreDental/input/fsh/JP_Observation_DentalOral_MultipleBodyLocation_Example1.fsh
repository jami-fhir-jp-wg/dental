Instance: jp-observation-dentaloral-multiplebodylocation-example-1
InstanceOf: JP_Observation_DentalOral_MultipleBodyLocation
Title: "JP Core Observation DentalOral Multiple Body Location Example 1"
Description: "口腔診査結果の複数の身体部位を表す例"
Usage: #example
* status = #final
* category[first].coding.code = #procedure
* category[first].coding.display = "Procedure"
* category[second].coding.code = #LP89803-8
* category[second].coding.display = "Dental"
* category[third].coding.code = #DO-1-02
* category[third].coding.display = "ToothTreatmentCondition"
* category.text = "現存歯の処置状態"
* code.text = "歯内治療が施行"
* subject = Reference(Patient/jp-patient-example-1)
* effectiveDateTime = "2022-10-01"
* issued = "2022-10-24T17:30:00+09:00"
* performer = Reference(Practitioner/jp-practitioner-example-male-1)

* bodySite.extension[multiplebodylocation].valueString = "46,47"
* bodySite.extension[multiplebodylocation].valueCodeableConcept = "FDI"#46 "右側下顎第１大臼歯"
* bodySite.extension[multiplebodylocation].valueCodeableConcept = "FDI"#47 "右側下顎第２大臼歯"
* interpretation.text = "46,47 には歯内治療が施行されている。根管充填は不良とみられる。"
* component.code.coding.code = "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationDentalCategory_CS"#DO-1-02
* component.code.coding.display = "歯内治療"
* component.code.text = "46,47 には歯内治療が施行されている。根管充填は不良とみられる。"