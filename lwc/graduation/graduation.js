import { NavigationMixin } from 'lightning/navigation';
import { LightningElement , track } from 'lwc';

export default class graduation extends NavigationMixin (LightningElement) {
    @track value = [];
    @track errorMessage = '';
    handleClick2() {
        this[NavigationMixin.Navigate]({
            type: 'standard__component',
            attributes: {
                componentName: 'c__PostgraduationAura'
            }
        })
    }

    stateOptions = [
                {label: 'Andhra Pradesh' , value: 'Andhra Pradesh'},
                {label: 'Arunachal Pradesh', value: 'Arunachal Pradesh'},
                {label: 'Assam', value:'Assam'},
                {label: 'Bihar',value: 'Bihar'},
                {label: 'Chhattisgarh',value: 'Chhattisgarh'},
                {label:'Goa',value:'Goa'},
                {label:'Gujarat', value:'Gujarat'},
                {label:'Haryana',value:'Haryana'},
                {label:'Himachal Pradesh',value:'Himachal Pradesh'},
                {label:'Jharkhand',value:'Jharkhand'},
                {label:'Karnataka',value:'Karnataka'},
                {label:'Kerala',value:'Kerala'},
                {label:'Madhya Pradesh',value:'Madhya Pradesh'},
                {label:'Maharashtra',value:'Maharashtra'},
                {label:'Manipur',value:'Manipur'},
                {label:'Meghalaya',value:'Meghalaya'},
                {label:'Mizoram',value:'Mizoram'},
                {label:'Nagaland',value:'Nagaland'},
                {label:'Odisha',value:'Odisha'},
                {label:'Punjab',value:'Punjab'},
                {label:'Rajasthan',value:'Rajasthan'},
                {label:'Sikkim',value:'Sikkim'},
                {label:'Tamil Nadu',value:'Tamil Nadu'},
                {label:'Telangana',value:'Telangana'},
                {label:'Tripura',value:'Tripura'},
                {label:'Uttar Pradesh',value:'Uttar Pradesh'},
                {label:'Uttarakhand',value:'Uttarakhand'},
                {label:'West Bengal',value:'West Bengal'}
             ];
             handleChange(event) {
                this.value = event.detail.value;
                this.errorMessage = '';
        }
        handleSubmit(){
            if (this.validateSelection()) {
                // Submit the form or perform the desired action
                console.log('Selected Values:', this.value);
            }
        }
        validateSelection() {
            if (this.value.length === 0) {
                this.errorMessage = 'You must select at least one option.';
                return false;
            }
            if (this.value.length > 3) {
                this.errorMessage = 'You can select up to a maximum of three options.';
                return false;
            }
            return true;
        };
    boardOptions = [
        {label:'Board of Intermediate Education, Andhra Pradesh (BIEAP)' , 
                                value:'Board of Intermediate Education, Andhra Pradesh (BIEAP)'},
        {label:'Directorate of School Education, Arunachal Pradesh',
                                value:'Directorate of School Education, Arunachal Pradesh'},
        {label:'Assam Higher Secondary Education Council (AHSEC)',
                            value:'Assam Higher Secondary Education Council (AHSEC)'},
        {label:'Bihar School Examination Board (BSEB)',
                            value:'Bihar School Examination Board (BSEB)'},
        {label:'Chhattisgarh Board of Secondary Education (CGBSE)',
                            value:'Chhattisgarh Board of Secondary Education (CGBSE)'},
        {label:'Central Board of Secondary Education (CBSE) Delhi',
                            value:'Central Board of Secondary Education (CBSE) Delhi'},
        {label:'Goa Board of Secondary and Higher Secondary Education (GBSHSE)',
                            value:'Goa Board of Secondary and Higher Secondary Education (GBSHSE)'},
        {label:'Gujarat Secondary and Higher Secondary Education Board (GSEB)',
                            value:'Gujarat Secondary and Higher Secondary Education Board (GSEB)'},
        {label:'Board of School Education Haryana (BSEH)',
                            value:'Board of School Education Haryana (BSEH)'},  
        {label:'Himachal Pradesh Board of School Education (HPBOSE)',
                            value:'Himachal Pradesh Board of School Education (HPBOSE)'},
        {label:'Jharkhand Academic Council (JAC)',
                            value:'Jharkhand Academic Council (JAC)'},
        {label:'Department of Pre-University Education, Karnataka (PUE Karnataka)',
                            value:'Department of Pre-University Education, Karnataka (PUE Karnataka)'},
        {label:'Kerala Board of Higher Secondary Education (KBHSE)',
                            value:'Kerala Board of Higher Secondary Education (KBHSE)'},
        {label:'Board of Secondary Education, Madhya Pradesh (MPBSE)',
                            value:'Board of Secondary Education, Madhya Pradesh (MPBSE)'},
        {label:'Maharashtra State Board of Secondary and Higher Secondary Education (MSBSHSE)',
                            value:'Maharashtra State Board of Secondary and Higher Secondary Education (MSBSHSE)'},
        {label:'Council of Higher Secondary Education, Manipur (COHSEM)',
                            value:'Council of Higher Secondary Education, Manipur (COHSEM)'},
        {label:'Meghalaya Board of School Education (MBOSE)',
                            value:'Meghalaya Board of School Education (MBOSE)'},
        {label:'Mizoram Board of School Education (MBSE)',
                            value:'Mizoram Board of School Education (MBSE)'},
        {label:'Nagaland Board of School Education (NBSE)',
                            value:'Nagaland Board of School Education (NBSE)'},
        {label:'Council of Higher Secondary Education, Odisha (CHSE Odisha)',
                            value:'Council of Higher Secondary Education, Odisha (CHSE Odisha)'},
        {label:'Punjab School Education Board (PSEB)',
                            value:'Punjab School Education Board (PSEB)'},
        {label:'Board of Secondary Education, Rajasthan (RBSE)',
                            value:'Board of Secondary Education, Rajasthan (RBSE)'},
        {label:'Sikkim Board of Secondary Education',
                            value:'Sikkim Board of Secondary Education'},
        {label:'Tamil Nadu State Board of School Examination (TN HSC)',
                            value:'Tamil Nadu State Board of School Examination (TN HSC)'},
        {label:'Board of Intermediate Education, Telangana (TSBIE)',
                            value:'Board of Intermediate Education, Telangana (TSBIE)'},
        {label:'Tripura Board of Secondary Education (TBSE)',
                            value:'Tripura Board of Secondary Education (TBSE)'},
        {label:'Board of High School and Intermediate Education Uttar Pradesh (UPMSP)',
                            value:'Board of High School and Intermediate Education Uttar Pradesh (UPMSP)'},
        {label:'Uttarakhand Board of School Education (UBSE)',
                            value:'Uttarakhand Board of School Education (UBSE)'},
        {label:'West Bengal Council of Higher Secondary Education (WBCHSE)',
                            value:'West Bengal Council of Higher Secondary Education (WBCHSE)'}
    ];
    handleboardChange(event) {
                this.value = event.detail.value;
                this.errorMessage = '';
        }
        handleboardSubmit(){
            if (this.validateSelection()) {
                // Submit the form or perform the desired action
                console.log('Selected Values:', this.value);
            }
        }
        validateboardSelection() {
            if (this.value.length === 0) {
                this.errorMessage = 'You must select at least one option.';
                return false;
            }
            if (this.value.length > 3) {
                this.errorMessage = 'You can select up to a maximum of three options.';
                return false;
            }
            return true;
        }
}