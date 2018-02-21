
class tomcat(
    $user               = $tomcat::params::user,
    $group              = $tomcat::params::group,
    $config_path        = $tomcat::params::config_path,
    $packages           = $tomcat::params::packages,
    $service_name       = $tomcat::params::service_name,
    $service_state      = $tomcat::params::service_state,
    $tomcat_cfg_loaded  = $tomcat::params::tomcat_cfg_loaded,
    $java_home          = $tomcat::params::java_home,
    $catalina_base      = $tomcat::params::catalina_base,
    $catalina_home      = $tomcat::params::catalina_home,
    $jasper_home        = $tomcat::params::jasper_home,
    $catalina_tempdir   = $tomcat::params::catalina_tempdir,
    $xms                = $tomcat::params::xms,
    $xmx                = $tomcat::params::xmx,
    $maxpermsize        = $tomcat::params::maxpermsize,
    $java_opts          = $tomcat::params::java_opts,
    $security_manager   = $tomcat::params::security_manager,
    $shutdown_wait      = $tomcat::params::shutdown_wait,
    $shutdown_verbose   = $tomcat::params::shutdown_verbose,
    $catalina_pid       = $tomcat::params::catalina_pid,
    $connector_port     = $tomcat::params::connector_port,

) inherits tomcat::params {

    include java::install
    include tomcat::install
    include tomcat::config
    include tomcat::service

}
