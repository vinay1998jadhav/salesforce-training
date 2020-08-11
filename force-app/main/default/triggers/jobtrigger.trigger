trigger jobtrigger on job_name__c (before delete,before update, before insert) {
    if(!validation__c.getInstance().active__c){
    if(trigger.isbefore && trigger.isdelete){
classjobtrigger.checkdelete(trigger.old);
    }
    if(trigger.isbefore && trigger.isupdate || trigger.isinsert){
classjobtrigger.checkhired(trigger.new);
    }
  
    if(trigger.isbefore && trigger.isupdate)
    {
classjobtrigger.makeactive(trigger.new);
    }
    }
}