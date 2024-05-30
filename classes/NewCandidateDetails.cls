public class NewCandidateDetails {
    
    @AuraEnabled
    public static Id personalInfo(String wrapRecord)
    {
        NewCandidateDetailsWrapper.personalInfo obj = (NewCandidateDetailsWrapper.personalInfo)JSON.deserialize(wrapRecord, NewCandidateDetailsWrapper.personalInfo.class);
        System.debug('Received Wrapper----' + wrapRecord);
        
        
        Joining_form_details__c rec = new Joining_form_details__c();
        //rec.Id = obj.recordId;
        rec.Name_Mr_Miss_Mrs__c = obj.name;
        rec.Mother_Name__c = obj.motherName;
        rec.Father_Name__c = obj.fatherName;
        rec.Present_Address__c = obj.presentAddress;
        rec.Permanent_Address_As_per_Aadhar_Card__c  = obj.permanentAddress;
        rec.Email_Id__c = obj.email;
        rec.Contact_Number__c = obj.contactNumber;
        rec.Alternative_Contact_Number__c = obj.altContactNumber;
        rec.What_s_App_Number__c = obj.whatsappNumber;
        rec.Parent_s_Contact_Number_Father_Mother__c = obj.parentContactNumber;
        rec.Gender__c = obj.gender;
        rec.Date_of_Birth__c = obj.dateOfBirth;
        rec.Blood_Group__c = obj.bloodGroup;
        rec.Religion__c = obj.religion;
        rec.Aadhar_Card_Number__c = obj.aadhaarNumber;
        rec.Pan_Card_No__c = obj.panNumber;
        rec.Voter_Id_Card_No__c = obj.voterIdNumber;
        rec.Passport_No__c = obj.passportNumber;
        //   rec.Please_upload_your_picture__c = obj.image; 
        insert rec;
        System.debug('Record ID--->' + rec.Id);
        return rec.Id;
    }
    @AuraEnabled
    public static String familyBackground(Id recordId,String wrapRecord)
    {
        NewCandidateDetailsWrapper.familyBackground obj1 =(NewCandidateDetailsWrapper.familyBackground)JSON.deserialize(wrapRecord, NewCandidateDetailsWrapper.familyBackground.class);
        System.debug('Received Wrapper----' + wrapRecord);
        System.debug('Received Record Id----' + recordId);
        if(recordId != Null && recordId != '')
        {
            List<Joining_form_details__c> rec1 = [select Id,
                                                  Father_s_Name__c,
                                                  Father_Age__c,
                                                  Father_Education_Occupation__c,
                                                  Mother_Name__c,
                                                  Mother_Age__c,
                                                  Mother_Education_Occupation__c,
                                                  Sister_s_Name__c,Sister_Age__c,
                                                  Sister_Education_Occupation__c,
                                                  Brother_s_Name__c,
                                                  Brother_Age__c,
                                                  Brother_Education_Occupation__c from Joining_form_details__c where Id =: recordId];
            System.debug('Record to be updated----' + rec1);
            for(Joining_form_details__c j: rec1)
            {
                j.Father_s_Name__c = obj1.fatherName;
                j.Father_Age__c = obj1.fatherAge;
                j.Father_Education_Occupation__c = obj1.fatherEducationOccupation;
                j.Mother_Name__c = obj1.motherName;
                j.Mother_Age__c = obj1.motherAge;
                j.Mother_Education_Occupation__c = obj1.motherEducationOccupation;
                j.Sister_s_Name__c = obj1.sisterName;
                j.Sister_Age__c = obj1.sisterAge;
                j.Sister_Education_Occupation__c = obj1.sisterEducationOccupation;
                j.Brother_s_Name__c = obj1.brotherName;
                j.Brother_Age__c = obj1.brotherAge;
                j.Brother_Education_Occupation__c = obj1.brotherEducationOccupation;
                rec1.add(j);
            }
            update rec1;
            return 'success';
        }
        else
            return 'Update Failed';
    }
    
    @AuraEnabled
    public static String ssc(String wrapRecord)
    {
        NewCandidateDetailsWrapper.ssc obj2 =(NewCandidateDetailsWrapper.ssc)JSON.deserialize(wrapRecord, NewCandidateDetailsWrapper.ssc.class);
        System.debug('Received Wrapper----' + wrapRecord);
        
        Joining_form_details__c rec2 = new Joining_form_details__c();
        rec2.State_of_SSC_school__c = obj2.stateofSSCschool;
        rec2.State_of_SSC_board__c = obj2.stateofSSCboard;
        rec2.Name_of_SSC_board__c = obj2.nameofSSCboard;
        rec2.Name_of_SSC_school__c = obj2.nameofSSCschool;
        rec2.City_District_of_SSC_school__c = obj2.citydistrictofSSCschool;
        rec2.Period_from_Too_SSC__c = obj2.periodfromtooSSC;
        rec2.Percentage_CGPA_of_SSC__c = obj2.percentagecgpaSSC;
        rec2.Date_Month_Year_of_passing__c = obj2.datemonthyearofPassingSSC;
        insert rec2;
        return 'success';
    }
    @AuraEnabled
    public static String hsc(String wrapRecord)
    {
        NewCandidateDetailsWrapper.hsc obj3 =(NewCandidateDetailsWrapper.hsc)JSON.deserialize(wrapRecord, NewCandidateDetailsWrapper.hsc.class);
        System.debug('Received Wrapper----' + wrapRecord);
        
        Joining_form_details__c rec3 = new Joining_form_details__c();
        rec3.Sate_of_HSC_college__c = obj3.stateofHSCcollege;
        rec3.State_of_HSC_board__c = obj3.stateofHSCboard;
        rec3.Name_of_HSC_board__c = obj3.nameofHSCboard;
        rec3.Name_of_HSC_college__c = obj3.nameofHSCcollege;
        rec3.City_District_of_HSC_college__c = obj3.citydistrictofHSCcollege;
        rec3.Period_from_Too_HSC__c = obj3.periodfromtooHSC;
        rec3.Percentage_CGPA_HSC__c = obj3.percentagecgpaHSC;
        rec3.Date_Month_Year_of_passing_HSC__c = obj3.datemonthyearofpassingHSC;
        insert rec3;
        return 'success';
    }
    @AuraEnabled
    public static String diploma(String wrapRecord)
    {
        NewCandidateDetailsWrapper.diploma obj4 =(NewCandidateDetailsWrapper.diploma)JSON.deserialize(wrapRecord, NewCandidateDetailsWrapper.diploma.class);
        System.debug('Received Wrapper----' + wrapRecord);
        Joining_form_details__c rec4 = new Joining_form_details__c();
        rec4.State_in_which_the_University_belongs__c = obj4.stateofUniversity;
        rec4.State_to_which_college_belongs__c = obj4.stateofcollege;
        rec4.Name_of_University__c = obj4.nameofUniversity;
        rec4.University_Reg_No_Roll_No__c = obj4.Universityrollno;
        rec4.City_District_in_which_college_belongs__c = obj4.citydistrictofcollege;
        rec4.Name_of_the_college__c = obj4.nameofcollege;
        rec4.Branch_Subject__c = obj4.branchorsubject;
        rec4.Elective_Subjects__c = obj4.electivesubjects;
        rec4.Percentage_CGPA__c = obj4.percentagecgpa;
        rec4.Date_Year_of_Passing__c = obj4.datemonthyearofPassing;
        insert rec4;
        return 'success';
    }
}