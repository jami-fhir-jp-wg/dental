# 症例1：歯周病系の所見例、歯式はISO表記

## 原文
46,47 には歯内治療が施行されている。根管充填は不良とみられる。下顎位置関係は Angle III級で前歯の被蓋関係は切端咬合である。歯列弓形態は放物線状を呈し、左右側方運動時は上下 3-7 のグループファンクションであり、アンテリアガイダンスは上下 3-3 である。16、17 は左側側方運動時の平衡側干渉と咬頭嵌合位でのフレミタスを蝕知した。ブラキシズムの自覚はないが 42、43、44 にくさび状欠損に対する治療痕や咬耗からその存在が強く疑われえう。口呼吸や食片の圧入はない。16、17 の歯冠修復物の舌側咬頭は摩耗している。

## 所見分け
### 臨床記述1
46,47 には歯内治療が施行されている。根管充填は不良とみられる。

### 臨床記述2
下顎位置関係は Angle III級で前歯の被蓋関係は切端咬合である。

### 臨床記述3
歯列弓形態は放物線状を呈し、左右側方運動時は上下 3-7 のグループファンクションであり、アンテリアガイダンスは上下 3-3 である。

### 臨床記述4
16、17 は左側側方運動時の平衡側干渉と咬頭嵌合位でのフレミタスを蝕知した。ブラキシズムの自覚はないが 42、43、44 にくさび状欠損に対する治療痕や咬耗からその存在が強く疑われえう。

### 臨床記述5
口呼吸や食片の圧入はない。

### 臨床記述6
16、17 の歯冠修復物の舌側咬頭は摩耗している

## 分析

### 臨床記述1

46,47 には歯内治療が施行されている。根管充填は不良とみられる。

* 部位：46, 47
* 所見：歯内治療施行
* 解釈：根管充填不良

### 臨床記述2

下顎位置関係は Angle III級で前歯の被蓋関係は切端咬合である。

* 関係：下顎位置関係
* 所見：Angle III級
* 部位：前歯
* 関係：被蓋関係
* 所見：切端咬合

### 臨床記述3


## FHIR Instance

### 臨床記述1
```
{
    "resourceType" : "Observation",
    "id" : "jp-observation-dentaloral-toothtreatmentcondition-example-1",
    "meta" : {
        "profile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_DentalOral_ToothTreatmentCondition"]
    },
    "text" : {
        "status" : "generated",
        "div" : ""
    },
    "status" : "final",
    "category" : [{
        "coding" : [{
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS",
            "code" : "procedure",
            "display" : "Procedure"
        }],
        "text" : "現存歯の処置状態"
    },
    {
        "coding" : [{
            "system" : "http://loinc.org",
            "code" : "LP89803-8",
            "display" : "Dental"
        }]
    },
    {
        "coding" : [{
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationDentalCategory_CS",
            "code" : "DO-1-02",
            "display" : "ToothTreatmentCondition"
        }]
    }],
    "code" : {
        "coding" : [{
            "system" : "http://loinc.org",
            "code" : "54570-7",
            "display" : "Oral/Dental Status"
        }]
    },
    "subject" : {
        "reference" : "Patient/jp-patient-example-1"
    },
    "effectiveDateTime" : "2022-10-01",
    "issued" : "2022-10-24T17:30:00+09:00",
    "performer" : [{
        "reference" : "Practitioner/jp-practitioner-example-male-1"
    }],
    "bodySite" : {
        "extension" : [{
            "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_DentalOral_BodyStructure",
            "valueCodeableConcept" : {
                "coding" : [{
                "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalBodyStructure_CS",
                "code" : "",
                "display" : "46, 47"
                }]
            }
        }],
        "coding" : [{
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalBodySite_CS",
            "code" : "",
            "display" : "46, 47"
        }]
    },
    "valueString" : {
        "value" : "46,47 には歯内治療が施行されている。",
    },
    "interpretation" : [
        {
            "coding" : [
                {
                    "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                    "code" : "H",
                    "display" : "High"
                }       
            ],
            "text" : "根管充填は不良とみられる"
        }
    ],
    "component" : [{
        "code" : {
            "coding" : [{
                "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalPresentTeethObservation_CS",
                "code" : "TP",
                "display" : ""
            },
            {
                "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSimplePresentTeethObservation_CS",
                "code" : "",
                "display" : ""
            }]
        }
    }]
}
```