# Omnimed-delphi-documentarchiver-releases
Repository containing public releases of the Delphi document archiver application.

Refer to the documentation at https://github.com/Omnimed/Omnimed-delphi-documentarchiver.

## Licensing
All rights reserved.

## New release
To make a new release, open a Git Bash in `C:\Omnimed-delphi-documentarchiver-releases` and call `powershell ./prepare_release.ps1 VERSION_NAME`. Replace `VERSION_NAME` with the next release version.

Use the format X.Y.Z[-alpha]

e.g. 1.0.0 for a production release
e.g. 1.0.0-alpha for a rc release

- Create a new release in Github with the same version name: https://github.com/NeWbLt123/Omnimed-delphi-documentarchiver-releases/releases/new
- Create a new tag matching the version name
- Add a description in the release notes
- Check the `Set as a pre-release` option for an alpha release (note that files will only be downloadable from Github's page for pre-releases)
- Check the `Set as the latest release` option for an official release
- Add every files within `C:\Omnimed-delphi-documentarchiver-releases\VERSION_NAME` in the `Attach binaries...` section
- Click on `Publish release`

The files can be downloaded individually with the URL https://github.com/Omnimed/Omnimed-delphi-documentarchiver-releases/releases/latest/download/FILE_NAME
The file `last-modified.dat` is used to keep track of the `Date modified` field of every file for automatic updates by the client.