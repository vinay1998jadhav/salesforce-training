public class classtrigger {
public static void salryfield(List <candiate__c> l1)
{
    for(candiate__c obj:l1){
        if(obj.expected_salary__c == NULL)
        {
            obj.addError('Expected salary field is missing');
        }
    }
}
    public static void checkstatus(List<candiate__c > l){
for(candiate__c c: l){

ID JobID = c.job__c;
job_name__c j = [Select active__c from job_name__c Where ID = :JobID];
if(!j.active__c){
c.addError('This job is not active. You can not apply for this job');
}
}
}
    public static void checkdate(List <candiate__c> l)
    {
for(candiate__c c:l)
    if(c.application_date__c != c.CreatedDate)
{
    candiate__c o =[select application_date__c,  CreatedDate from candiate__c Where ID=: c.Id];
    o.application_date__c=o.CreatedDate;
    update o;
}
    }
   
   
}