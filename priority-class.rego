package kubernetes.admission

low_priority_classes = ["low-priority"]

high_priority_namespaces = ["kube-system"]

is_high_priority_namepaces {
	high_priority_namespaces[_] == input.request.namespace
}

is_low_priority_classes {
	low_priority_classes[_] == input.request.object.spec.priorityClassName
}

deny[msg] {
	input.request.kind.kind == "Pod"
    not is_high_priority_namepaces
	not is_low_priority_classes
	msg := "Forbidden priority class"
}
