.phony: build

build:
	docker build --build-arg http_proxy --build-arg https_proxy --build-arg no_proxy -t vinodh363656/scheduler-extender-conda-py:1.0.0 .
	docker push vinodh363656/scheduler-extender-conda-py:1.0.0