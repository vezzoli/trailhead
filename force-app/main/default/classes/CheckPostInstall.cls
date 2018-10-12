public class CheckPostInstall {

    
    public void IndirizziOWA(){
        System.debug('Verifica Indirizzi');
        for(OrgWideEmailAddress owa : [select id, Address, IsAllowAllProfiles from OrgWideEmailAddress]) {
		//if(owa.DisplayName.contains('CSR')) email.setOrgWideEmailAddressId(owa.id); 
		System.debug('OWA Address:' + owa.Address);
        System.debug('OWA Allowed Profiles:' + owa.IsAllowAllProfiles); 
            if(owa.IsAllowAllProfiles == true){
                System.debug('Imposto Allowed Profiles a false');
                //owa.IsAllowAllProfiles = false;
                //update owa; //DML operation Update not allowed on OrgWideEmailAddress
                
                
               
            }
            
            System.debug('OWA Allowed Profiles numero2:' + owa.IsAllowAllProfiles); 
        } 
    }

    public void CreateUser(){
  		 User userTest = CreateTestUser('gInsertvezzoli2@gmail.com','Standard User','test','vezzoli@gmail.com');
   		// userTest.username = 'classTestEmailHelper@enel.test.com.pc';
   		 userTest.isactive=true;
    	 insert userTest; 
      }
    
     public static User CreateTestUser(string username,string profileName, string rolename, string email){
            User u = new User();
            u.username = username;
            u.firstname = 'User';
            u.lastName = 'test';
            u.email = email;
            u.alias ='GianAli2';
            u.TimeZoneSidKey = 'GMT';
            u.LocaleSidKey = 'it_IT'; 
            u.EmailEncodingKey='ISO-8859-1';
            u.profileid =  [Select id from profile where name = :profileName limit 1].id;
           // u.UserRoleId = [Select id from Userrole where name = :rolename limit 1 ].id;
            u.LanguageLocaleKey ='it';
            return u;
        }
}