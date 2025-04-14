Extension: MultipleBodyLocation
Parent: Extension
Id: multiple-body-location
Title: "Multiple Body Location Extension"
Description: "Observationの複数のBodyStructure参照を保持する拡張"
* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/MultipleBodyLocation"
* value[x] 1..1
* value[x] only Reference
* valueReference = Reference(BodyStructure)

Profile: JP_Observation_DentalOral_MultipleBodyLocation
Parent: Observation
Id: jp-observation-dentaloral-multiplebodylocation
Title: "JP Core Observation DentalOral Multiple Body Location Profile"
Description: "このプロファイルはObservationリソースに対して、口腔診査結果（口腔内所見）の複数の身体部位を表すデータを送受信するための制約と拡張を定めたものである。"

* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_DentalOral_MultipleBodyLocation"
* ^status = #active
* ^date = "2025-04-08"
* . ^short = "複数の歯について所見を表現するプロファイル"
* . ^definition = "口腔診査結果レポートの複数の歯について所見を表現するプロファイル"

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #closed
* category 3..
* category contains
    first 1..1 and
    second 1..1 and
    third 1..1
* category ^comment = "3つのコードを設定する。
第1コード（first）は、simpleObservationコード体系を必須とし、procedureを設定する。
第2コード（second）は、歯科を表すコードLP89803-8を設定する。
第3コード（third）は、歯の有無や処置状態などを表すコードを設定する。なお、日本では適切なコード体系が存在しないため、独自のバリューセットを定義する。"

* category[first].coding = http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS#exam "Exam" (exactly)

* category[second].coding = http://loinc.org#LP89803-8 (exactly)

* category[third].coding = http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationDentalCategory_CS#DO-1-03 (exactly)

* bodySite ^comment = "優先順位は以下の番号を推奨する。
1.FDI
2.厚生労働省標準標準歯式マスタ、レセプト電算処理用コード"
* bodySite from http://jpfhir.jp/fhir/core/ValueSet/JP_DentalBodySite_VS (preferred)
* code.coding = http://loinc.org#54570-7 (exactly)
* code.coding.display = "Oral/Dental Status"
* extension contains MultipleBodyLocation named multipleBodyLocation 0..*

