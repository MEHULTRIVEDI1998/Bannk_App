function valid(){
				var projectorg=document.getElementById('project-org').value;
				var projectcatagory=document.getElementById('project-catagory').value;
				var projectactivity=document.getElementById('project-activity').value;
				var projecttitle=document.getElementById("project-title").value;
				var projectminage=document.getElementById("project-minage").value;
				var projectmaxage=document.getElementById("project-maxage").value;
				if(!projectorg){alert("Select Organization First.");}
				if(!projectcatagory){alert("Select Catagory First");}
				if(!projectactivity){alert("Select Activity First");}
				if(!projecttitle){alert("Enter Title First");}
				if(!projectminage){alert("Enter Min-Age");}
				if(!projectmaxage){alert("Enter Max-Age");}


			}