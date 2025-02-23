# Variables (adjust as needed)
CHART_NAME := common-templates
CHART_DIR  := ./charts/$(CHART_NAME)

.PHONY: all package update-repo

# The default target runs both packaging and repo update
all: package update-repo

# Package the Helm chart into a tar archive in PACKAGE_DIR
package:
	@echo "Packaging Helm chart from $(CHART_DIR)..."
	helm package $(CHART_DIR)

# Update the Helm repository to reflect any new changes
update-repo:
	@echo "Updating Helm repository..."
	helm repo index ./
