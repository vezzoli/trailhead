public class ContactAndLeadSearch {

    public static List<List< SObject>> searchContactsAndLeads(String incomingPar){
        
        List<List<sObject>> searchList = [FIND 'Smith' IN ALL FIELDS
                                          RETURNING Contact(FirstName,LastName),Lead(FirstName,LastName)];
        return searchList;
    }
}