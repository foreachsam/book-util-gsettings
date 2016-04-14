#!/usr/bin/env bash

# https://wiki.gnome.org/Projects/Vala/GSettingsSample

cat > org.example.app-relocatable-schema.gschema.xml <<EOF
<schemalist>
	<schema id="org.example.app-relocatable-schema" gettext-domain="app-app-relocatable-schema">

		<key name="greeting" type="s">
			<default l10n="messages">"Hello"</default>
			<summary>A greeting</summary>
			<description>
				Greeting!
			</description>
		</key>

		<key name="count" type="i">
			<default>99</default>
			<summary>counter</summary>
			<description>
				Counter
			</description>
		</key>

		<key name="allow" type="b">
			<default>false</default>
			<summary>Is allowed?</summary>
			<description>
				Allow?
			</description>
		</key>


	</schema>
</schemalist>

EOF

sudo cp org.example.app-relocatable-schema.gschema.xml /usr/share/glib-2.0/schemas/
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
