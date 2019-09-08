package k8spin.mocks

create_client_pod_with_invalid_priority_class = {
	"kind": "AdmissionReview",
	"apiVersion": "admission.k8s.io/v1beta1",
	"request": {
		"uid": "b50bd9d2-3118-11e9-9ea6-42010a9c0062",
		"kind": {
			"group": "",
			"version": "v1",
			"kind": "Pod",
		},
		"resource": {
			"group": "",
			"version": "v1",
			"resource": "pods",
		},
		"namespace": "angelbarrerasanchez-gmail-com-aa",
		"operation": "CREATE",
		"object": {
			"metadata": {"namespace": "angelbarrerasanchez-gmail-com-aa"},
			"spec": {"priorityClassName": "high-priority"},
		},
	},
}