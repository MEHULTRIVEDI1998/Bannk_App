function valid(){
			
			var text1=document.getElementById('contact-textbox-1').value;
			var text2=document.getElementById('contact-textbox-2').value;
            var contact_textarea=document.getElementById('contact-textarea').value;
    if(!text1){alert("Enter Valid Name.");}
    if(!text2){alert("Enter valid E-mail");}
    else{
    	var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
            if (reg.test(text2) == false) 
            {
                alert('Invalid Email Address');
                return (false);
            }
        }
        if(!contact_textarea)
            alert("Enter Text.");
        else if(contact_textarea.length>=2000){
            alert("Too Long Text.");
            
        }

		}