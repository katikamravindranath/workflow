{
	"contents": {
		"474083a9-c020-466d-9c9c-35d71848ebf4": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.sap.workflow.process.employeehire.employee_hire",
			"subject": "Employee_Hire",
			"customAttributes": [],
			"name": "Employee_Hire",
			"documentation": "Employee Hiring PRocess",
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
				"04adb87d-cd2e-40ab-bd6c-400c2b197550": {
					"name": "UserTask1"
				},
				"74bc02f5-7995-44f5-aabe-74c0980a7922": {
					"name": "ScriptTask1"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"ae14d079-360b-43fd-973a-0cb8a8f51ac3": {
					"name": "SequenceFlow2"
				},
				"79d314c2-a958-41ac-8e36-26e6e16bd8e9": {
					"name": "SequenceFlow5"
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
				"dac4de60-24fa-4250-9884-6bff9b71995c": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"04adb87d-cd2e-40ab-bd6c-400c2b197550": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Sample Workflow: ${context.id}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://HiringRouter.comsapworkflowprocessemployeehireworkflowuimodule/com.sap.workflow.process.employeehire.workflowuimodule",
			"recipientUsers": "${info.startedBy}",
			"customAttributes": [],
			"id": "usertask1",
			"name": "UserTask1"
		},
		"74bc02f5-7995-44f5-aabe-74c0980a7922": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/Employee_Hire/sample.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "04adb87d-cd2e-40ab-bd6c-400c2b197550"
		},
		"ae14d079-360b-43fd-973a-0cb8a8f51ac3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "04adb87d-cd2e-40ab-bd6c-400c2b197550",
			"targetRef": "74bc02f5-7995-44f5-aabe-74c0980a7922"
		},
		"79d314c2-a958-41ac-8e36-26e6e16bd8e9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "74bc02f5-7995-44f5-aabe-74c0980a7922",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"9d9bcdbd-3057-4c3d-bc2f-1e999716ba25": {},
				"80a7430f-6ed1-4a22-82dd-658e9337822b": {},
				"c033078f-356d-45b4-a0d1-0f18af1df2b3": {},
				"d7ee421b-f566-487b-a01f-da257c2b2e1a": {}
			}
		},
		"dac4de60-24fa-4250-9884-6bff9b71995c": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/Employee_Hire/sample_data.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 46,
			"y": 12,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 44.5,
			"y": 430,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,44 62,94",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "9d9bcdbd-3057-4c3d-bc2f-1e999716ba25",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"9d9bcdbd-3057-4c3d-bc2f-1e999716ba25": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 12,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "04adb87d-cd2e-40ab-bd6c-400c2b197550"
		},
		"80a7430f-6ed1-4a22-82dd-658e9337822b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,124 62,350",
			"sourceSymbol": "9d9bcdbd-3057-4c3d-bc2f-1e999716ba25",
			"targetSymbol": "c033078f-356d-45b4-a0d1-0f18af1df2b3",
			"object": "ae14d079-360b-43fd-973a-0cb8a8f51ac3"
		},
		"c033078f-356d-45b4-a0d1-0f18af1df2b3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 12,
			"y": 320,
			"width": 100,
			"height": 60,
			"object": "74bc02f5-7995-44f5-aabe-74c0980a7922"
		},
		"d7ee421b-f566-487b-a01f-da257c2b2e1a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "62,380 62,430",
			"sourceSymbol": "c033078f-356d-45b4-a0d1-0f18af1df2b3",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "79d314c2-a958-41ac-8e36-26e6e16bd8e9"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 2,
			"sequenceflow": 7,
			"startevent": 1,
			"intermediatetimerevent": 1,
			"endevent": 1,
			"usertask": 3,
			"scripttask": 1,
			"parallelgateway": 1,
			"referencedsubflow": 1
		}
	}
}