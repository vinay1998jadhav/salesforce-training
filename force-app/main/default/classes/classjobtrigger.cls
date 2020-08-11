public class classjobtrigger {
public static void checkdelete(List <job_name__c> l)
{
    for(job_name__c c : l){
        if(c.active__c){
            c.addError('this job is active');
        }
    }
}
    public static void checkhired(List <job_name__c> l)
    {
     for(job_name__c c:l)
     {
         if(c.hired_applicants__c >= c.number_of_position__c){
             c.active__c=false;
    
         }
     }
}
    

   
    public static void makeactive(List <job_name__c> l){
for(job_name__c o:l)
{
if(o.hired_applicants__c < o.number_of_position__c && o.active__c==false)
{
o.active__c=true;    
}
}
    }
}