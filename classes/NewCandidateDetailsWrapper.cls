public class NewCandidateDetailsWrapper {
@AuraEnabled
    public  List<personalInfo> personalInfo;
    public class personalInfo 
    {
        /*@AuraEnabled
        public String recordId;*/
        @AuraEnabled
        public String name;	
        @AuraEnabled
        public String motherName;
        @AuraEnabled
        public String fatherName;	
        @AuraEnabled
        public String presentAddress;
        @AuraEnabled
        public String permanentAddress;
        @AuraEnabled
        public String email;	
        @AuraEnabled
        public String contactNumber;
        @AuraEnabled
        public String altContactNumber;	
        @AuraEnabled
        public String whatsappNumber;
        @AuraEnabled
        public String parentContactNumber;	
        @AuraEnabled
        public String gender;
        @AuraEnabled
        public Date dateOfBirth;	
        @AuraEnabled
        public String bloodGroup;
        @AuraEnabled
        public String religion;	
        @AuraEnabled
        public String aadhaarNumber;
        @AuraEnabled
        public String panNumber;	
        @AuraEnabled
        public String voterIdNumber;
        @AuraEnabled
        public String passportNumber;	
        @AuraEnabled
        public String image; 
    }
    
   /* public static NewCandidateDetailsWrapper parse(String json){
        
        return(NewCandidateDetailsWrapper)System.JSON.deserialize(json, NewCandidateDetailsWrapper.class);
        
    } */
    @AuraEnabled
    public  List<familyBackground> familyBackground;
    public class familyBackground
    {
        @AuraEnabled
        public id recordId;
          @AuraEnabled
        public String fatherName;	
        @AuraEnabled
        public String fatherAge;
        @AuraEnabled
        public String fatherEducationOccupation;	
        @AuraEnabled
        public String motherName;
        @AuraEnabled
        public String motherAge;	
        @AuraEnabled
        public String motherEducationOccupation;
        @AuraEnabled
        public String sisterName;	
        @AuraEnabled
        public String sisterAge; 
        @AuraEnabled
        public String sisterEducationOccupation;	
        @AuraEnabled
        public String brotherName;
        @AuraEnabled
        public String brotherAge;	
        @AuraEnabled
        public String brotherEducationOccupation;   
        
    }
     /* public static NewCandidateDetailsWrapper parse(String json){
        
        return(NewCandidateDetailsWrapper)System.JSON.deserialize(json, NewCandidateDetailsWrapper.class);
        
    } */
     
    @AuraEnabled
    public  List<ssc> ssc;
    public class ssc
    { 
        @AuraEnabled
        public String stateofSSCschool;	
        @AuraEnabled
        public String stateofSSCboard;
        @AuraEnabled
        public String nameofSSCboard;	
        @AuraEnabled
        public String nameofSSCschool;
        @AuraEnabled
        public String citydistrictofSSCschool;	
        @AuraEnabled
        public date periodfromtooSSC;	
        @AuraEnabled
        public Integer percentagecgpaSSC; 
        @AuraEnabled
        public date datemonthyearofPassingSSC;	
    }
    /* public static NewCandidateDetailsWrapper parse(String json){
        
        return(NewCandidateDetailsWrapper)System.JSON.deserialize(json, NewCandidateDetailsWrapper.class);
        
    } */
    @AuraEnabled
    public List<hsc> hsc;
    public class hsc
    {
        @AuraEnabled
        public String stateofHSCcollege;	
        @AuraEnabled
        public String stateofHSCboard;
        @AuraEnabled
        public String nameofHSCboard;	
        @AuraEnabled
        public String nameofHSCcollege;
        @AuraEnabled
        public String citydistrictofHSCcollege;	
        @AuraEnabled
        public date periodfromtooHSC;	
        @AuraEnabled
        public Integer percentagecgpaHSC; 
        @AuraEnabled
        public date datemonthyearofPassingHSC;	
    }
    @AuraEnabled
    public List<diploma> diploma;
    public class diploma
    {
        @AuraEnabled
        public String stateofUniversity;	
        @AuraEnabled
        public String stateofcollege;
        @AuraEnabled
        public String nameofUniversity;	
        @AuraEnabled
        public String Universityrollno;
        @AuraEnabled
        public String citydistrictofcollege;
        @AuraEnabled
        public String nameofcollege;
        @AuraEnabled
        public String branchorsubject;
        @AuraEnabled
        public String electivesubjects;	
        @AuraEnabled
        public Integer percentagecgpa; 
        @AuraEnabled
        public date datemonthyearofPassing;
    }
    @AuraEnabled
    public List<graduation> graduation;
    public class graduation
    {
        @AuraEnabled
        public String graduationstateofUniversity;	
        @AuraEnabled
        public String graduationstateofcollege;
        @AuraEnabled
        public String graduationnameofUniversity;	
        @AuraEnabled
        public String graduationUniversityrollno;
        @AuraEnabled
        public String graduationcitydistrictofcollege;
        @AuraEnabled
        public String graduationnameofcollege;
        @AuraEnabled
        public String graduationbranchorsubject;
        @AuraEnabled
        public String graduationelectivesubjects;	
        @AuraEnabled
        public Integer graduationpercentagecgpa; 
        @AuraEnabled
        public date graduationdatemonthyearofPassing;
    }
}