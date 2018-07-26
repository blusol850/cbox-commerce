/**
* User Role Entity
*/
component quick table="cbc_userRoles"extends="BaseCBCommerceEntity" accessors="true"{
    
    // Persistent column properties
    property name="name";

    function users(){
        return belongsToMany( "User" , "lookups_users_roles", "FK_role", "FK_user" );
    }

    function permissions(){
        return belongsToMany( "UserPermission", "lookups_roles_permissions", "FK_role", "FK_permission" );
    }


	
}

