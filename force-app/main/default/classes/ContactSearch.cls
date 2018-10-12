public class ContactSearch {

    public static List<Contact> searchForContacts(String nameCon, String mailCode){
        
        
		Contact[] resContacts = [SELECT ID,FirstName,LastName 
                          FROM Contact WHERE LastName = :nameCon and MailingPostalCode=:mailCode ];
        
        return resContacts;
    }
}