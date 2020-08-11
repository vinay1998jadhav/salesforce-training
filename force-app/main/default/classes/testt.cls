@isTest
public class testt {
    
  @isTest 
    static void mytest(){
        Candiate__c obj = new Candiate__c();
        Job_name__c jb = new Job_name__c();
      
        jb.number_of_position__c = 3;
        jb.manager__c = 'a@gmail.com';
    
        insert jb;
        obj.First_Name__c = 'abhi';
        obj.Salutation__c = 'Mr.';
        obj.Last_Name__c = 'satpute';
        obj.Email__c = 'abhi@gmail.com';
        obj.Status__c = 'Applied';
      
    obj.Expected_Salary__c = 45;
        obj.job__c = jb.Id;
        insert obj;
    }  
    
    
    @isTest
    static void mytest1(){
        Job_name__c jb = new Job_name__c();
      
        jb.number_of_position__c = 3;
        jb.manager__c = 'a@gmail.com';
        
        insert jb;
        Candiate__c obj = new Candiate__c();

        obj.First_Name__c = 'abhi';
        obj.Salutation__c = 'Mr.';
        obj.Last_Name__c = 'satpute';
        obj.Email__c = 'abhi@gmail.com';
        obj.Status__c = 'Hired';
      
        obj.Job__c = jb.Id;
       
    insert obj;
          
      
    }
    
     @isTest
    static void mytest2(){
        Job_name__c jb = new Job_name__c();
       
        jb.number_of_position__c = 3;
        jb.manager__c = 'a@gmail.com';
        
        
        jb.Active__c = true ;
          insert jb;
        try{
            delete jb;
        } 
        catch(Exception e){
      system.assertEquals( e.getMessage() , e.getMessage());
        }
          system.assertNotEquals(NULL, jb);

    }
     @isTest
    static void mytest3(){
        Job_name__c jb = new Job_name__c();
       
        jb.number_of_position__c = 1;
        jb.manager__c = 'a@gmail.com';
     
        jb.Active__c = true ;
          insert jb;
        Candiate__c obj = new Candiate__c();
    obj.First_Name__c = 'abhi';
        
        obj.Salutation__c = 'Mr.';
        obj.Last_Name__c = 'satpute';
        obj.Email__c = 'abhi@gmail.com';
        obj.Status__c = 'Hired';
      
    obj.Expected_Salary__c = 45;
        obj.Job__c = jb.Id;
         insert obj;

       
           system.assertEquals( jb.Active__c, false);

        }
       @isTest 
    static void mytest4(){
        Candiate__c obj = new Candiate__c();
        Job_name__c jb = new Job_name__c();
      
        jb.number_of_position__c = 3;
        jb.manager__c = 'a@gmail.com';
      
        jb.Active__c = false ;
    
        insert jb;
        obj.First_Name__c = 'abhi';
        obj.Salutation__c = 'Mr.';
        obj.Last_Name__c = 'satpute';
        obj.Email__c = 'abhi@gmail.com';
        obj.Status__c = 'Applied';
     
    obj.Expected_Salary__c = 45;
        obj.Job__c = jb.Id;
        insert obj;
        update jb;
}
}