package kubernetes.admission

import data.k8spin.mocks

test_create_ingress_existing_in_other_namespace {
	msg := deny with input as mocks.create_duplicated_valid_client_ingress_request with data.kubernetes.ingresses as mocks.mocked_ingresses
	contains(msg[_], "Conflict with existing ingress. Please choose another hostname")
}
