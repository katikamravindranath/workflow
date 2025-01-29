{
	"contents": {
		"eae31b59-577c-4eff-96d9-dabac9ebddd6": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.demo.sap.employee.subflow.employee_sub",
			"subject": "Employee_Sub",
			"name": "Employee_Sub",
			"documentation": "Employee Processing Sub flow",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"0711e3d5-0f12-42c8-8e4d-1b9e94fca9ed": {
					"name": "ReferencedSubflow1"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"4632f837-30b5-436a-a1f4-339d8d580496": {
					"name": "SequenceFlow2"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"4afcee73-5611-4673-8cc2-be37c980ed2c": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"0711e3d5-0f12-42c8-8e4d-1b9e94fca9ed": {
			"classDefinition": "com.sap.bpm.wfs.ReferencedSubflow",
			"definitionId": "com.sap.workflow.process.employeehire.employee_hire",
			"multiInstanceLoopCharacteristics": {
				"type": "parallel",
				"collection": "${context.productitems}",
				"completionCondition": "${context.productitems[loop.counter] == \"reject\"}"
			},
			"inParameters": [{
				"sourceExpression": "${context.productitems[loop.counter].product}",
				"targetVariable": "${context.id}"
			}],
			"outParameters": [{
				"sourceExpression": "${context.decision}",
				"targetVariable": "${context.productitems[loop.counter].decision}"
			}, {
				"sourceExpression": "${context.response}",
				"targetVariable": "${context.productitems[loop.counter].response}"
			}],
			"id": "referencedsubflow1",
			"name": "ReferencedSubflow1",
			"principalPropagationRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "0711e3d5-0f12-42c8-8e4d-1b9e94fca9ed"
		},
		"4632f837-30b5-436a-a1f4-339d8d580496": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "0711e3d5-0f12-42c8-8e4d-1b9e94fca9ed",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"6414867c-d4e9-4128-8a0e-5e9c9126c0dc": {},
				"31420c48-786d-435f-9500-b61ed2594562": {}
			}
		},
		"4afcee73-5611-4673-8cc2-be37c980ed2c": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/Employee_Sub/sample_file.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 340,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116.375 236.24147286593848,116.375",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "6414867c-d4e9-4128-8a0e-5e9c9126c0dc",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"6414867c-d4e9-4128-8a0e-5e9c9126c0dc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ReferencedSubflowSymbol",
			"x": 186.24147286593848,
			"y": 86.75,
			"width": 100,
			"height": 60,
			"object": "0711e3d5-0f12-42c8-8e4d-1b9e94fca9ed"
		},
		"31420c48-786d-435f-9500-b61ed2594562": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.24147286593848,117.125 357.5,117.125",
			"sourceSymbol": "6414867c-d4e9-4128-8a0e-5e9c9126c0dc",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "4632f837-30b5-436a-a1f4-339d8d580496"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"referencedsubflow": 1
		}
	}
}