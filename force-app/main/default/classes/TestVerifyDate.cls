@isTest
private class TestVerifyDate {
    
    @isTest static void testCheckDates() {
        Date myDate1 = Date.newInstance(1976, 5, 29);
        Date myDate2 = Date.newInstance(1976, 5, 30);
        Date pri = VerifyDate.CheckDates(myDate1, myDate2);
        
    }

    @isTest static void testCheckDatesOther() {
        Date myDate1 = Date.newInstance(1976, 5, 29);
        Date myDate2 = Date.newInstance(1976, 7, 30);
        Date pri = VerifyDate.CheckDates(myDate1, myDate2);
        
    }
}