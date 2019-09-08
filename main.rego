package system

import data.kubernetes.admission

main = {
	"apiVersion": "admission.k8s.io/v1beta1",
	"kind": "AdmissionReview",
	"response": response,
}

default response = {"allowed": true}

response = {
	"allowed": false,
	"status": {"reason": reason},
} {
	reason := concat(", ", admission.deny)
	reason != ""
}

response = {
	"allowed": true,
	"patchType": "JSONPatch",
	"patch": patch_bytes,
} {
	reason := concat(", ", admission.deny)
	reason == ""
	patch := {xw | xw := admission.patches[_][_]}
	patch_json := json.marshal(patch)
	patch_bytes := base64.encode(patch_json)
}
