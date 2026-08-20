# DNS Sinkhole Appliance

A small Raspberry Pi project for turning dedicated hardware into a local DNS sinkhole. The repository currently preserves an older automation approach and should be treated as a maintenance baseline rather than a modern, production-ready distribution.

## Current status

- Raspberry Pi-focused
- Historical setup assets from 2021
- No active automated deployment or release pipeline yet
- No open issues at the time of this maintenance update

Before using the project on a network, review the scripts and test on non-critical hardware. DNS configuration can affect connectivity for every client using the device.

## Installation and update model

### Automatic updates

Automatic unattended updates are **not enabled** for the current project. Because this appliance changes network-wide DNS behaviour, updates should remain operator-controlled until a signed, tested release/update workflow is implemented.

The intended future automatic-update mechanism is a versioned GitHub Release consumed by a device-side updater with validation and rollback.

### Manual update

For an existing clone, use a fast-forward-only update so local work is not silently overwritten:

```bash
git status
git pull --ff-only origin main
```

To deploy a known revision reproducibly, check out a specific release tag or commit instead of following the moving `main` branch:

```bash
git fetch --tags
git checkout <tag-or-commit>
```

If an update causes problems, return to the previously known-good tag or commit and reboot the device after verifying the configuration.

## Release policy

This repository follows Semantic Versioning once releases are established:

- **MAJOR**: incompatible installation or network behaviour changes
- **MINOR**: backwards-compatible functionality
- **PATCH**: documentation, reliability, or backwards-compatible fixes

See [CHANGELOG.md](CHANGELOG.md) for repository maintenance history.

## Next steps

A future implementation pass should inventory the legacy Raspberry Pi scripts, document supported OS versions, add a non-destructive installer with backups, and add a tested release/update path before enabling unattended updates.
