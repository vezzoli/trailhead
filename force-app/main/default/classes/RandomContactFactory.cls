public class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer contactNUmber,String firstName){
    
        List<Contact> contacts = new List<Contact>();
        
        for (Integer j=0;j<contactNUmber;j++) {
        
        String nameF = firstName + j;
        	Contact c = new Contact(FirstName  = nameF);
            contacts.add(c);
        }
        

		return  contacts;       
    }
}