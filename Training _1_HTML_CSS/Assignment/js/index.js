function valid(){
      var signuptext1=document.getElementById('signuptext1').value;
      var signuptext2=document.getElementById('signuptext2').value;
      var signuptext3=document.getElementById('signuptext3').value;

    if(!signuptext1){alert("Enter Valid Name.");}
    if(!signuptext2){alert("Enter valid E-mail");}
    else{
      var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
            if (reg.test(signuptext2) == false) 
            {
                alert('Invalid Email Address');
                return (false);
            }
        }
      if (!signuptext3) {alert("Enter Number.")}   
      else{
      var numbers =  /^[1-9]{1}[0-9]{9}$/;
        if((signuptext3.length>10) ||(numbers.test(signuptext3)==false)){alert("Enter Valid Number.");}
        
      }
    }