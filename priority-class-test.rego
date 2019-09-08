package kubernetes.admission

import data.k8spin.mocks

test_invalid_client_pod_priorityclass {
	msg := deny with input as mocks.create_client_pod_with_invalid_priority_class
	contains(msg[_], "Forbidden priority class")
}

test_valid_client_pod_priorityclass {
	msg := deny with input as mocks.create_client_pod_with_valid_priority_class
	count(msg) = 0
}
