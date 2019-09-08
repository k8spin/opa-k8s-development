package k8spin.mocks

mocked_ingresses = {"angelbarrerasanchez-gmail-com-hello-world":[{"spec":{"rules":[{"host":"hello-world.angelbarrerasanchez.apps.k8spin.cloud"}]}}],"angelbarrerasanchez-gmail-com-ingress-test":[{"spec":{"rules":[{"host":"example-host-1.angelbarrerasanchez.apps.k8spin.cloud"}]}},{"spec":{"rules":[{"host":"example-host-2.angelbarrerasanchez.apps.k8spin.cloud"}]}}]}

create_duplicated_valid_client_ingress_request = {
	"kind": "AdmissionReview",
	"apiVersion": "admission.k8s.io/v1beta1",
	"request": {
		"uid": "7f91c0c8-30f0-11e9-9ea6-42010a9c0062",
		"kind": {
			"group": "extensions",
			"version": "v1beta1",
			"kind": "Ingress",
		},
		"resource": {
			"group": "extensions",
			"version": "v1beta1",
			"resource": "ingresses",
		},
		"namespace": "angelbarrerasanchez-protonmail-com-aa",
		"operation": "CREATE",
		"userInfo": {
			"username": "system:serviceaccount:angelbarrerasanchez-protonmail-com-aa:angelbarrerasanchez-protonmail-com-aa",
			"uid": "b1703a47-306e-11e9-9ea6-42010a9c0062",
			"groups": [
				"system:serviceaccounts",
				"system:serviceaccounts:angelbarrerasanchez-protonmail-com-aa",
				"system:authenticated",
			],
		},
		"object": {
			"metadata": {
				"name": "hello-world",
				"namespace": "angelbarrerasanchez-protonmail-com-aa",
				"uid": "7f91b8d9-30f0-11e9-9ea6-42010a9c0062",
				"generation": 1,
				"creationTimestamp": "2019-02-15T07:08:30Z",
				"annotations": {
					"certmanager.k8s.io/issuer": "angelbarrerasanchez-protonmail-com",
					"ingress.kubernetes.io/ssl-redirect": "true",
				},
			},
			"spec": {
				"tls": [{
					"hosts": ["hello-world.angelbarrerasanchez.apps.k8spin.cloud"],
					"secretName": "hello-world-certificate",
				}],
				"rules": [{
					"host": "hello-world.angelbarrerasanchez.apps.k8spin.cloud",
					"http": {"paths": [{
						"path": "/",
						"backend": {
							"serviceName": "hello-world",
							"servicePort": 80,
						},
					}]},
				}],
			},
			"status": {"loadBalancer": {}},
		},
		"oldObject": null,
	},
}