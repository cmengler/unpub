dev-web:
	cd unpub_web &&\
	dart pub global activate webdev 3.2.0 &&\
	dart pub global run webdev serve -- --log-requests

dev-api:
	cd unpub &&	dart run build_runner watch

build:
	cd unpub_web &&\
	dart pub global activate webdev 3.2.0 &&\
	dart pub global run webdev build
	dart unpub/tool/pre_publish.dart
	dart format **/*.dart
