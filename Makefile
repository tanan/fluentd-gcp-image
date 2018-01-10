.PHONY:	build push

PREFIX=gcr.io/anan-project
TAG = 2.0.10

build:
	docker build --pull -t $(PREFIX)/fluentd-gcp:$(TAG) .


push:
	gcloud docker -- push $(PREFIX)/fluentd-gcp:$(TAG)
