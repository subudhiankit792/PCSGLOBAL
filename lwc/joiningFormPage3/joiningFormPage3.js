import { LightningElement , track} from 'lwc';
import { NavigationMixin } from 'lightning/navigation';


export default class JoiningFormPage3 extends NavigationMixin(LightningElement) {
    @track value = [];
    @track errorMessage = '';

    options = [
                { label: 'Bengali', value: 'Bengali'},
                { label: 'English', value: 'English' },
                { label: 'Hindi', value: 'Hindi'},
                { label: 'Kannada', value: 'Kannada'},
                { label: 'Telugu/Tamil', value: 'Telugu/Tamil'}
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
}
handleClick3() {
    this[NavigationMixin.Navigate]({
        type: 'standard__component',
        attributes: {
            componentName: 'c__BankdetailsAura'
        }
    })
}
}