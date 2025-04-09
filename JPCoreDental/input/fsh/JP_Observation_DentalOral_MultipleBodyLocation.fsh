Profile: JP_Observation_DentalOral_MultipleBodyLocation
Parent: Observation
Id: jp-observation-dentaloral-multiplebodylocation
Title: "JP Core Observation DentalOral Multiple Body Location Profile"
Description: "このプロファイルはObservationリソースに対して、口腔診査結果（口腔内所见）の複数の身体部位を表すデータを送受信するための制約と拡張を定めたものである。"

* ^url = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_DentalOral_MultipleBodyLocation"
* ^status = #active
* ^date = "2025-04-08"
* . ^short = "複数の歯について所見を表現するプロファイル"
* . ^definition = "口腔診査結果レポートの複数の歯について所見を表現するプロファイル"

* category 3..
* category contains
    second 1..1 and
    third 1..1
* category ^comment = "3つのコードを設定する。
第1コード（first）は、simpleObservationコード体系を必須とし、procedureを設定する。
第2コード（second）は、歯科を表すコードLP89803-8を設定する。
第3コード（third）は、歯の有無や処置状態などを表すコードを設定する。なお、日本では適切なコード体系が存在しないため、独自のバリューセットを定義する。"
* insert SetDefinition(category[first], このObservationに関する分類（JP_SimpleObservationCategory_VS）、必須項目)
* category[first].coding.code = #procedure (exactly)
* category[first].coding.display = "Procedure"

* category[second].coding.system = "http://loinc.org"(exactly)
* category[second].coding.code 1..1
* category[second].coding.code = #LP89803-8 (exactly)

* category[third].coding.system = "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationDentalCategory_CS" (exactly)
* category[third].coding.code 1..1
* category[third].coding.code = #DO-1-03 (exactly)

* code.coding.system = "http://loinc.org"(exactly)
* code.coding.code 1..1
* code.coding.code = "http://loinc.org"#54570-7 (exactly)
* code.coding.display = "Oral/Dental Status"

Profile: JP_BodySites_MultipleDentalLocation
Parent: BodySite
Id: jp-bodysites-multipledentallocation
Title: "JP Core BodySites Multiple Dental Location Profile"
Description: "このプロファイルはBodySiteリソースに対して、口腔診査結果の複数の歯について所見を表現するデータを送受信するための制約と拡張を定めたものである。"
* bodySite 1..*
* bodySite.extension[bodyStructure].valueCodeableConcept.coding.system = "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalBodySite_CS"
* bodySite.extension[bodyStructure].valueString = "複数の歯に関する情報"


