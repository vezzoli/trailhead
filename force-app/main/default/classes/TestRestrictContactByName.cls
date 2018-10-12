@isTest
private class  TestRestrictContactByName {

    @isTest static void TestRestrictContact(){
        Test.startTest();
        Contact c = new Contact(LastName = 'INVALIDNAME');
        insert c;
        Test.stopTest();
    }
}