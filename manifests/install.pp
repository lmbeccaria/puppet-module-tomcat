class tomcat::install inherits tomcat {

    # package { [ "tomcat","tomcat-webapps" ] : 
    
    package { $::tomcat::packages :
        ensure => installed,
    }
    
}