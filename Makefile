TEMPLATE_FILE = cloudformation-template.yml
BUCKET = cfn-build-objects
PREFIX = git-sync-sample 

package:
	mkdir -p build
	aws cloudformation package \
		--template-file $(TEMPLATE_FILE) \
		--s3-bucket $(BUCKET) \
		--s3-prefix $(PREFIX) \
		--output-template-file build/cloudformation-template.yml \
