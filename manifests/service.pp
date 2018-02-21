class tomcat::service inherits tomcat {

    #### service { "tomcat":
    service { $::tomcat::service_name :
        ensure  => $::tomcat::service_state,
        enable  => true,
        # require => Package[ 'tomcat' ],
        require => Class[ tomcat::install ],
    }

}