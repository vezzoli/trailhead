public class AccountHandler {

    
    public static Account insertNewAccount(String nameAcc){
        
       try {
                // This causes an exception because aggiunta da gianluca
                //   the required Name field is not provided.
                Account acct = new Account(Name=nameAcc);
                // Insert the account test locale sfdx
                insert acct;
           		return acct;
            } catch (DmlException e) {
                System.debug('A DML exception has occurred: ' +
                            e.getMessage());
                return null;
            }
    }
}