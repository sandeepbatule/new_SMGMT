<%@page import="com.servletStore.setup.model.SetupImpl"%>
<%@page import="com.servletStore.setup.model.SetupPOJO"%>
<%@page import="com.servletStore.setup.model.SetupDAO"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.servletStore.settings.subjects.model.SubjectAssignmentPOJO"%>
<%@page import="com.servletStore.settings.subjects.model.SubjectAssignmentImpl"%>
<%@page import="com.servletStore.settings.subjects.model.SubjectAssignmentDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Form Elements | Admire</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
      <!-- common css -->
		<jsp:include page="/View/common/commonCss.jsp"></jsp:include>
      <!-- common css -->
    
    <!-- end of page level styles -->
    
    <style type="text/css">
    
    #stdTable{
    	width: 90%; 
    	margin-left: 12%;
    }
    .stdTableTD1{
    	width: 22%;
    }
     .stdTableTD2{
    	width: 30%;
    }
     .stdTableTD3{
    	width: 50%;
    }
    
     #subjectId {
		display: block !important;
	    opacity: 0;
	    margin-bottom: -10%;
	}
    
    </style>
</head>


<%
	String schoolId = "0";
	String academicYear = "0";
	int roll=0;
	int access = 0;
	
	if (session.getAttribute("userName") == null) {
		response.sendRedirect("/SMGMT");
	} else {
		roll=(Integer)session.getAttribute("rollId");
		schoolId = session.getAttribute("schoolId").toString();
		academicYear = session.getAttribute("year").toString();
		
		System.out.println();
		//for read/write permission  Read = 1  Write = 2
		SetupDAO dao = new SetupImpl();
		List list=dao.getAccessControlDetails(roll);
		Iterator<SetupPOJO> itr= list.iterator();
		//for showing datatable according to read/write permission
		
		//choose appropriate method as per your leftNavbar form option name
		//e.g : if you are working on Attendance option in left navbar then code will be...
		
		SetupPOJO grant = new SetupPOJO();
		
		 while(itr.hasNext()){
			grant = itr.next();
		 }
		 
		 access = grant.getSetting();
		 
		 System.out.println("roll "+roll + " schoolId "+schoolId +" access "+access);
		//if it returns read(1) then hide form and action column in dataTable
		//for write(2) show your orignal full form
				
	}
%>

<body>
<div class="preloader" style=" position: fixed;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  z-index: 100000;
  backface-visibility: hidden;
  background: #ffffff;">
    <div class="preloader_img" style="width: 200px;
  height: 200px;
  position: absolute;
  left: 48%;
  top: 48%;
  background-position: center;
z-index: 999999">
        <img src="/SMGMT/config/img/loader.gif.pagespeed.ce.pu_lpoGKrw.gif" style=" width: 40px;" alt="loading...">
    </div>
</div>
<div id="wrap">
        <div id="top">
            <!-- .navbar -->
            	<jsp:include page="/View/common/header.jsp"></jsp:include>
            <!-- /.navbar -->
        </div>
        <!-- /#top -->
        
        
        <div class="wrapper">
        	 <!-- /.left navbar -->
                <jsp:include page="/View/common/left-navbar.jsp"></jsp:include>
             <!-- /.left navbar -->
             
             
        <div id="content" class="bg-container">
            <header class="head">
                <div class="main-bar">
                   <div class="row no-gutters">
                       <div class="col-sm-5 col-lg-6 skin_txt">
                           <h4 class="nav_top_align">
                               <i class="fa fa-pencil"></i>
                               Subject Assignment
                           </h4>
                       </div>
                       <div class="col-sm-7 col-lg-6">
                           <ol class="breadcrumb float-right nav_breadcrumb_top_align">
                               <li class="breadcrumb-item">
                                   <a href="index1.html">
                                       <i class="fa fa-home" data-pack="default" data-tags=""></i>
                                       Dashboard
                                   </a>	
                               </li>	
                               <li class="breadcrumb-item">
                                   <a href="#">Settings</a>
                               </li>
                               <li class="active breadcrumb-item">Subject Assignment</li>
                           </ol>
                       </div>
                   </div>
                </div>
            </header>
            
            
            <!-- start your code from here  -->  
           <%
           	  if(access==2){
           %>   
           <div class="outer">
                    <div class="inner bg-container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-header bg-white">
                                        <i class="fa fa-file-text-o"></i>
                                        Assign Subjects
                                    </div>
                                    <div class="card-block m-t-35">
                                        <form action="/SMGMT/SubjectAssignment" method="post" class="form-horizontal  login_validator" id="form_block_validator">
                                       <div class="form-group row">
                                           <div class="col-lg-4  text-lg-right">
                                               <label for="required2" class="col-form-label">Select Subject <span style="color: red;">*</span> </label>
                                           </div>
                                           <div class="col-lg-4">
                                               <select class="form-control chzn-select" name="subjectId" id="subjectId" title="Select Subject"  required>
			                                        <option value="">Select Subject</option>
			                                        <%
				                                    	SubjectAssignmentDAO sdao = new SubjectAssignmentImpl();
				                                    	HashMap<Integer, String> subList = sdao.getSubjectList(schoolId);
				                                   
				                                    	Set keys = subList.keySet();
														Iterator itr = keys.iterator();
														
														while(itr.hasNext()){
				                                    		int key = Integer.parseInt(itr.next().toString());
				                                    %>
				                                    	<option value="<%=key %>"><%=subList.get(key)%></option>
														
				                                     <%
				                                    	}
				                                     %>  
			                                        
			                                    </select>
                                           </div>
                                       </div>
                                       
                                       <br>
                                       
                                       <div class=" form-group row" id="stdCheckboxes">
                                       
	                                    <table id="stdTable" style=" ">
                                      	
                                      	<%
	                                    	HashMap<Integer, String> stdList = sdao.getClassList(schoolId);
	                                   	
	                                    	Set keys1 = stdList.keySet();
											Iterator itr1 = keys1.iterator();
											int counter=1;
											
											while(itr1.hasNext()){
	                                    		int key = Integer.parseInt(itr1.next().toString());
	                                    %>
	                                    	<tr>
		                                    	<td class="stdTableTD1">
			                                    	<div class='col-lg-4'> 
										           		<div class='checkbox'>
										                	<label class='text-mint'>
										                    	<input type='checkbox' value='<%=key %>' name='stds<%=counter %>' id='' >
										                    	<span class='cr'><i class='cr-icon fa fa-check'></i></span> <%=stdList.get(key) %>
										                	</label>
											    		</div>
											    	</div>
												</td>
												
												<td class="stdTableTD2">
		                                            <div class='col-lg-4'> 
										           		<div class='checkbox'>
										                	<label class='text-mint'>
										                    	<input type='checkbox' value='1' name='optinal<%=counter %>' id='' >
										                    	<span class='cr'><i class='cr-icon fa fa-check'></i></span> Optinal
										                	</label>
											    		</div>
											    	</div>
	                                            </td>
	                                            
	                                            <td class="stdTableTD3">
		                                            <div class="col-lg-4">
		                                             	<input type="text" class="form-control" placeholder="Enter Subject Code" name="subject_code<%=counter %>" title="Enter Subject Code here" onkeyup="this.value=this.value.toUpperCase()" style=" width: 200%;"  onblur="this.value=$.trim(this.value)">
		                                            </div>
	                                            </td>
	                                            
                                           </tr>
                                           
											
	                                     <%
	                                     	counter++;
	                                    	}
	                                     %>  
				                            </table>         
                                      </div>
                                      
                                      <br>
                                      <input type="hidden" name="counter" value=<%=--counter %>> 
                                       <div class="form-actions form-group row">
                                           <div class="col-lg-4 push-lg-4">
                                               <input type="submit" value="Assign Subject" name="subjectAssignSubmit" class="btn btn-primary">
                                           </div>
                                       </div>
                                   </form>
                                    </div>
                                </div>
                            </div> <!-- /.col-lg-12 -->
                        </div> <!-- /.row -->
                    </div> <!-- /.inner -->
                </div> <!-- /.outer -->
            
            <%
           	  }
            %>    
               
            <div class="outer">
                <div class="inner bg-container">
                    <div class="card">
                        <div class="card-header bg-white">
                            Assigned Subjects List
                        </div>
                        <div class="card-block m-t-35" id="user_body">
                            <div class="table-toolbar">
                                
                                <div class="btn-group float-right users_grid_tools">
                                    <div class="tools"></div>
                                </div>
                            </div>
                            <div>
                                <div>
                                    <table class="table  table-striped table-bordered table-hover dataTable no-footer" id="editable_table" role="grid">
                                        <thead>
                                        <tr role="row">
                                            <th class="sorting_asc wid-20" tabindex="0" rowspan="1" colspan="1">Sr.No.</th>
                                            <th class="sorting wid-25" tabindex="0" rowspan="1" colspan="1">Standard Name</th>
                                            <th class="sorting wid-25" tabindex="0" rowspan="1" colspan="1">Subject Name</th>
                                            <th class="sorting wid-25" tabindex="0" rowspan="1" colspan="1">Subject Code</th>
                                            <th class="sorting wid-10" tabindex="0" rowspan="1" colspan="1">Optional</th>
                                            
                                            <% if(access==2){ %>
	                                            <th class="sorting wid-10" tabindex="0" rowspan="1" colspan="1">Action</th>
	                                        <% } %>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        
                                        <%
                                        SubjectAssignmentDAO sdao = new SubjectAssignmentImpl();
                                     	List<SubjectAssignmentPOJO> l = sdao.AssignedSubjectList(schoolId);
                                    
 										int count=1;
                                     	Iterator itr2 = l.iterator();
                                     	while(itr2.hasNext()){
                                     		SubjectAssignmentPOJO subAPojo = (SubjectAssignmentPOJO)itr2.next();
                                     		int id = subAPojo.getId();
                                  %>
                                        	<tr role="row" class="even">
                                        		<td><%=count %></td>
                                        		<td><%=subAPojo.getStdName() %></td>
                                        		<td><%=subAPojo.getSubjectName() %></td>
                                        		<td>
                                        			<% 
                                        				if(subAPojo.getSubjectCode()==null)
                                        				{ 
                                        					out.print("-");	
                                        				}else{
                                        					out.print(subAPojo.getSubjectCode());
                                        				} 
                                        			%>
                                        		</td>
                                        		
												<td>
                                        			<% 
                                        				if(subAPojo.getOptinalStatus()==0)
                                        				{ 
                                        					out.print("NO");	
                                        				}
                                        				else
                                        				{
                                        					out.print("YES");
                                        				} 
                                        			%>
                                        		</td>
												
												<% if(access==2){ %>
                                        		<td>
                                        			<a class="edit" data-toggle="tooltip" data-placement="top" title="Update" href="#" onclick="updateStandard(<%=id%>)"><i class="fa fa-pencil text-warning"></i></a>&nbsp; &nbsp;
                                        			<a class="delete hidden-xs hidden-sm" data-toggle="tooltip" data-placement="top" title="Delete" href="#"><i class="fa fa-trash text-danger"></i></a>
                                        		</td>
                                        		<% } %>
                                        	</tr>
                                        <%
                                   	count++;
                                  	}
                                  %> 
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- END EXAMPLE TABLE PORTLET-->
                        </div>
                    </div>
                </div>
                <!-- /.inner -->
            </div>
                
                <!-- /.outer -->
            </div>
        </div>
        <!-- /#content -->
    </div>
    <!--wrapper-->
    
    <!-- /#content -->
  

</div>
<!-- /#wrap -->
<!-- global scripts-->

<script type="text/javascript">

function getSections() {
	
	var sid = document.getElementById("schoolId").value;
	var xhttp;
	xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			
			var demoStr = this.responseText.split(",");
			
			var select = document.getElementById('sectionName');

			$("#sectionName").empty();
			
			var text="";
			for (var i=0; i<demoStr.length; i++) {
				
				text += "<option id=" +demoStr[i]+" value=\""+demoStr[++i]+"\"> </option>";
			}
			document.getElementById("browsers").innerHTML = text;			
		}
	};
	
	xhttp.open("POST", "/SMGMT/AddStandard?schoolId="+sid, true);
	xhttp.send();
	
	getStandards();
}

function setSelected() {
	var selectedSection = document.getElementById("sectionName").value;
	//alert(selectedSection);
}


function getStandards() {

	var schoolId = document.getElementById("schoolId").value;
	var xhttp;
	xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			var demoStr = this.responseText.split(",");
			var count=1;
			var s="";
			
		
			for(var j=0; j<demoStr.length-1; j++){
				
				s=s+"<div class='col-lg-2 input_field_sections'> "+
           		"<div class='checkbox'>"+
                "<label class='text-mint'>"+
                    "<input type='checkbox' value='"+demoStr[j]+"' name='stds' id='basic_checkbox_"+(count)+"' >"+
                    "<span class='cr'><i class='cr-icon fa fa-check'></i></span> "+demoStr[++j]+
                "</label>"+
    		"</div>"+
    	"</div>";
				count++;
			}
			
			document.getElementById("stdCheckboxes").innerHTML=s;
			
			
		}
	};
	
	xhttp.open("POST", "/SMGMT/StdSectionAssignment?schoolId="+schoolId, true);
	xhttp.send();
	
}

</script>

<!-- common css -->
	<jsp:include page="/View/common/commonJs.jsp"></jsp:include>
<!-- common css -->

</body>

</html>