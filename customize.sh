SKIPUNZIP=0

set_permissions() {
	set_perm_recursive $MODPATH 0 0 0755 0644
	set_perm_recursive $MODPATH/anymount/odm/etc 0 0 0755 0644
	set_perm_recursive $MODPATH/system/system_ext/etc 0 0 0755 0644
	set_perm_recursive $MODPATH/system/vendor/etc 0 0 0755 0644 u:object_r:vendor_configs_file:s0
}

set_permissions
