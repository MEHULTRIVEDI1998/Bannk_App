function valid(){
                var username=document.getElementById("loginname").value;
                var password=document.getElementById("loginpassword").value;
                if((!username)||(!password)){alert("Enter Username And Password");}
                else{
                if((username=="mehul"||username=="MEHUL"||username=="Mehul")&&(password=="tatva123"))
                {
                    alert("Welcome "+username.toUpperCase());
                }
                else{
                    alert("Wrong Username or Password");
                }
                }
            }