package kubernetes.admission

deny[msg] {
	input.request.kind.kind == "Ingress"
	host := input.request.object.spec.rules[_].host
	host == data.kubernetes.ingresses[_][_].spec.rules[_].host
	msg := "Conflict with existing ingress. Please choose another hostname"
}
