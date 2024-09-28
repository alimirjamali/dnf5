# set gettext domain for translations
set(GETTEXT_DOMAIN dnf5-plugin-downloadurl)
add_definitions(-DGETTEXT_DOMAIN=\"${GETTEXT_DOMAIN}\")

add_library(downloadurl_cmd_plugin MODULE downloadurl.cpp downloadurl_cmd_plugin.cpp)

# disable the 'lib' prefix in order to create downloadurl_cmd_plugin.so
set_target_properties(downloadurl_cmd_plugin PROPERTIES PREFIX "")

pkg_check_modules(SDBUS_CPP REQUIRED sdbus-c++)

target_link_libraries(downloadurl_cmd_plugin PRIVATE dnf5 libdnf5 libdnf5-cli ${SDBUS_CPP_LIBRARIES})

install(TARGETS downloadurl_cmd_plugin LIBRARY DESTINATION ${CMAKE_INSTALL_FULL_LIBDIR}/dnf5/plugins/)
