# Changelog

All notable changes to this repository are documented here.

The project uses Semantic Versioning once tagged releases are established.

## [Unreleased]

### Fixed
- Corrected the Wi-Fi provisioning UI so its JavaScript, favicon, and logo use relative paths and continue to load when the UI is hosted behind a non-root route or copied into a packaged appliance.
- Changed the Wi-Fi provisioning form and AJAX requests to use relative API paths, so the UI also works when mounted below the web server root.
- Added missing form `id` attributes and basic accessibility/autocomplete metadata without changing the provisioning backend contract.

### Added
- Added GitHub Actions validation for local assets referenced by the Wi-Fi provisioning UI, preventing broken packaged or non-root deployments from being merged unnoticed.

## [0.1.1] - 2026-08-20

### Changed
- Clarified the historical Raspberry Pi DNS sinkhole scope and implementation status.
- Added safe manual update and reproducible revision-pinning guidance.
- Documented why unattended updates are not yet enabled and defined the intended validated-release direction.
- Added semantic versioning and rollback guidance.
