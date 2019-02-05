function valid(){
				var orgname=document.getElementById("orgname").value;
				var orgmail=document.getElementById("orgmail").value;
				var orgweb=document.getElementById("orgweb").value;
				var orgcontactname=document.getElementById("orgcontactname").value;
				if(!orgname){alert("Enter Organization Name");}
				if(orgweb){
					var regweb=/^(?:(?:https?|ftp):\/\/)?(?:(?!(?:10|127)(?:\.\d{1,3}){3})(?!(?:169\.254|192\.168)(?:\.\d{1,3}){2})(?!172\.(?:1[6-9]|2\d|3[0-1])(?:\.\d{1,3}){2})(?:[1-9]\d?|1\d\d|2[01]\d|22[0-3])(?:\.(?:1?\d{1,2}|2[0-4]\d|25[0-5])){2}(?:\.(?:[1-9]\d?|1\d\d|2[0-4]\d|25[0-4]))|(?:(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)(?:\.(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)*(?:\.(?:[a-z\u00a1-\uffff]{2,})))(?::\d{2,5})?(?:\/\S*)?$/;
					if(regweb.test(orgweb) == false)
					{
						alert("Enter Valid URL.");
					}
				}
				if(!orgmail){alert("Enter Email");}
				else{
					var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
			            if (reg.test(orgmail) == false) 
			            {
			                alert('Invalid Email Address');
			                
			            }
					}
				
				if(!orgcontactname){
					alert("Enter Contact Name.");
				}



			}