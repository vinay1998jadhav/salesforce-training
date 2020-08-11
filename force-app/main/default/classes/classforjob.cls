public class classforjob {
    public classforjob(){
        obj=new job_name__c();
    }
    public pageReference saveme(){
        insert obj;
        return NULL;
    }
    public job_name__c obj{get; set;}
}