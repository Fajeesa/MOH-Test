<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<spring:eval expression="@environment.getProperty('warnamefrnt')" var="warnamefr" />
<c:set var="lang" value="${pageContext.response.locale.language}" />
<!DOCTYPE html>
<html lang="en">
<head>
		<!-- Required meta tags -->
		<meta name="content-type"  content="text/html"  charset="UTF-8">  
		<meta name="viewport"  content="width=device-width, initial-scale=1, shrink-to-fit=no" />
         <meta http-equiv = "cache-control" content = "no-cache, no-store, must-revalidate">    
         <meta  http-equiv="Content-Security-Policy" />  
        <link rel="shortcut icon" href="assets/images/favicon.ico" />
		<!-- Title -->
		<title><fmt:message key="label.title"/></title>
		<link rel="stylesheet" href="assets/css/bootstrap.${lang}.min.css" />

		<!-- Bootstrap font icons css -->
		<link rel="stylesheet" href="assets/fonts/bootstrap/bootstrap-icons.css" />

		<!-- Main css -->
		<link rel="stylesheet" href="assets/css/main.${lang}.min.css" />

		<!-- *************
			************ Vendor Css Files *************
		************ -->
            <link rel="stylesheet" href="assets/vendor/select2/select2.min.css" />

		<!-- Scrollbar CSS -->
		<link rel="stylesheet" href="assets/vendor/overlay-scroll/OverlayScrollbars.min.css" />
        <link rel="stylesheet" href="assets/vendor/select2/select2.min.css" />
        <link rel="stylesheet" href="assets/vendor/daterange/daterange.css" />
        <link rel="stylesheet" href="assets/vendor/datatables/dataTables.bs5.css" />
		<link rel="stylesheet" href="assets/vendor/datatables/dataTables.bs5-custom.css" />
		<!-- Data Tables -->
			<style>
			
			
			.page-icon i {    font-size: 1rem;    width: 30px;    height: 30px;}
			.main-header {	padding: 5px 25px;}
	.card .alert-success {     background: steelblue;     border-color: #3b6d98;			}
			input[type=file]::-webkit-file-upload-button {
			color: #4E4D4D;
                font-weight:400;
    /*border: 1px solid #33715a;*/background-image: radial-gradient(93% 87% at 87% 89%, rgba(0, 0, 0, 0.3) 0%, transparent 86.18%), radial-gradient(66% 87% at 26% 20%, rgba(0, 0, 0, 0.1) 0%, rgba(0, 0, 0, 0.1) 55%, rgba(0, 0, 0, 0.1) 100%) !important;
			}.h4, h4 {        font-size: 1.4rem;     }  
            @media(max-width: 400px){
                 .display-none{display: none;}
                 }
                 
                 
                 /* Chrome, Safari, Edge, Opera */
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

/* Firefox */
input[type=number] {
  -moz-appearance: textfield;
}
	.dotted{border:1px dotted;}
	.blink {  animation: blinker 1s step-start infinite;} @keyframes blinker {  50% {    opacity: 0;  }}
		</style>
	</head>

<body>	<!-- Page wrapper start -->
		<div class="page-wrapper fullscreen">

			<!-- Page header starts -->
			 <%@ include file="drugheader.jsp" %>
			<!-- Page header ends -->

			<!-- Main container start -->
			<div class="main-container">

				<!-- Sidebar wrapper start -->
				 <%@ include file="drugmenu.jsp" %>
				<!-- Sidebar wrapper end -->

				<!-- Content wrapper scroll start -->
				<div class="content-wrapper-scroll">

					<!-- Main header starts -->
					<div class="main-header">
						<div class="d-flex align-items-center justify-content-center">
							<div class="page-icon">
								<i class="bi bi-card-list"></i>
							</div>
							<div class="page-title d-none d-md-block">
								<h5 class="fw-bold text-danger"><fmt:message key="label.applform"/></h5>
							</div>
						</div>
						<!-- Live updates start -->
						<!-- <ul class="updates d-flex align-items-end flex-column overflow-hidden" id="updates">
							<li>
								<a href="javascript:void(0)">
									<i class="bi bi-envelope-paper text-primary font-1x me-2"></i>
									<span>12 emails from David Michaiah.</span>
								</a>
							</li>
							<li>
								<a href="javascript:void(0)">
									<i class="bi bi-bar-chart text-primary font-1x me-2"></i>
									<span>15 new features updated successfully.</span>
								</a>
							</li>
							<li>
								<a href="javascript:void(0)">
									<i class="bi bi-folder-check text-primary font-1x me-2"></i>
									<span>The media folder is created successfully.</span>
								</a>
							</li>
						</ul> -->
						<!-- Live updates end -->
					</div>
					<!-- Main header ends -->

					<!-- Content wrapper start -->
						<div class="content-wrapper">

						<!-- Row start -->
						<div class="row gx-3">
							<div class="col-xl-12">
                                
                                
                                         
                                <div class="card">
<!--
									<div class="card-header">
										<div class="card-title">Accordion</div>
									</div>
-->
									<div class="card-body">
										<div class="accordion" id="accordionExample2">
											<div class="accordion-item">
												<h2 class="accordion-header " id="headingOne">
													<button class="acc1 accordion-button card-title text-white" type="button" data-bs-toggle="collapse"
														data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" >
														<fmt:message key="label.registration"/>
													</button>
												</h2>
												<div id="collapseOne" class="accordion-collapse collapse show"
													aria-labelledby="headingOne" data-bs-parent="#accordionExample2"  pageid="app">
													<div class="accordion-body">
														<!-- Row start -->
														<div class="row gx-3">

                                   <div class="col-xs-12 col-lg-6 mb-3 ">

										<div class="form-group row">
											<label class="form-label col-sm-4 col-md-3"><fmt:message
													key="label.apprefno" />:<span
												class="text-danger fw-bold">*</span></label>
											<div class="col-sm-8">
											    <input id="appstatus"  type="text" class="form-control" style="display:none" >
												<input id="apprefno" name="apprefno" type="text" class="form-control"  disabled >
												<%-- <span id="appsubcatErr" style="color: Red; display: none;"><b><fmt:message key="label.appsubtypeErr" /> </b></span> --%>
											</div>
										</div>
									</div>
									
									
									
									<div class="col-xs-12 col-lg-6 mb-3 ">
									</div>
								<!-- <div class="row gx-3"> -->
								<div class="col-xs-12 col-lg-6 mb-3 ">

									<div class="form-group row">
										<label class="form-label col-sm-4 col-md-3"><fmt:message key="label.apptrack" /> :<span class="text-danger fw-bold">*</span>
										</label>
										<div class="col-sm-8">

											<select class="form-select " id="apptrack">
												<option value="0"><fmt:message key="label.select" /></option>
											</select>
                                        <span id="apptrackErr" style="color: Red; display: none;"><b><fmt:message key="label.apptrackErr" /> </b></span>
										</div>
									</div>
								</div>

															<div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row d-none" id="file_app1">
										  <label class="form-label col-sm-4 col-md-3">Upload Supportive Document :<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										   <div class="input-group">
										    <input id="apptrackFile" style="display:none"  type="text" class="form-control"   >
										    <input id="apptrackFileid" style="display:none"  type="text" class="form-control"   >
										    <input id="apptrackFiledoc" style="display:none"  type="text" class="form-control"   >
									<input name="myFile" type="file"  id="FTDappdocFile" class="form-control" onchange="selectFile('FTD')" onclick="changeMsg('FTD')" >
                                   <button class="btn btn-danger  rounded mx-1" type="button" id="FTDUPLOAD" title="reupload" onclick="saveUpload('FTD','reupload')" style="padding-bottom: 4px;">
									<i class="bi bi-upload"></i>
									<span class="spinner-border spinner-border-sm d-none" role="status" aria-hidden="true"></span> 
									</button>
									<!-- &nbsp;-->
									<button class="btn btn-primary rounded" type="button" id="FTDDOWNLOAD" title="Download" onclick="downloadApplicationFile('FTD')" style="padding-bottom: 4px;" >
									<i class="bi bi-download"></i> 
									</button> </div>
                                    <span id="FTDuploadErr" style="display:none" ><b><font color="red"><fmt:message key="label.uploadErr" /></font></b></span>
									<span id="FTDdocTypeSuccessErr" style="display:none" ><b><font color="red"><fmt:message key="label.docTypeSuccess" /></font></b></span>									
									<span id="FTDdocTypeNofileErr" style="display:none"><b><font color="red"><fmt:message key="label.docTypeNofile" /></font></b></span>
									<span id="FTDdoctypeFileName" style="display:none"><b><font color="red"><fmt:message key="label.doctypeFileName" /></font></b></span>
									          
										  </div>
										</div>
                                                    </div>
                                                   
                                                    
                                                    
                                                    
                                                 
														<!-- </div> -->
                                            <div class="col-xs-12 col-lg-6 mb-1  text-end"> <div class="form-group row"><label class="form-label col-sm-4 col-md-3"></label><div class="col-sm-8">
                                            <!--     <input type="button" class="btn btn-success" value="Save" id="saveAppBTN" onclick="saveAppDtl()">  --> 
                                                
                                                <button class="btn btn-success" type="button" id="saveAppBTN" onclick="saveAppDtl()">
                                                 <span class="spinner-border spinner-border-sm d-none" role="status" aria-hidden="true"></span>
											      Save
                                                 </button>
                                               <input type="button" class="btn btn-danger"id="clearAppBTN" value="<fmt:message key="label.clear" />" onclick="clearAppdtl()">
                                               </div></div>  
                                                  <span id="uploadSucc"  style="display:none"><b><font color="green"><fmt:message key="label.recordSucc" /></font></b></span> 
										<span id="uploaddupl" style="display:none"><b><font color="red"><fmt:message key="label.filesmandatory" /></font></b></span>
										<span id="uploadFail" style="display:none"><b><font color="red"><fmt:message key="label.failed" /></font></b></span> 
                                               </div>
                                                            
                                            
                                            
													
														</div>
														<!-- Row end -->
													</div>
												</div>
											</div>
											
											<div class="accordion-item">
												<h2 class="accordion-header" id="headingTwo">
													<button class="acc1 accordion-button collapsed card-title text-white" type="button" data-bs-toggle="collapse"
														data-bs-target="#collapseTwo" aria-expanded="false"
														aria-controls="collapseTwo">
													<fmt:message key="label.agentdetails"/>
													</button>
												</h2>
												<div id="collapseTwo" class="accordion-collapse collapse"
													aria-labelledby="headingTwo" data-bs-parent="#accordionExample2">
													<div class="accordion-body">
												        <div class="row gx-3">
                                                        	
										<div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.agentname"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										  <input  id="agentname" name="agentname" type="text" class="form-control" disabled >
										 </div>
										</div>
									</div>
                                            <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.authRep"/> :<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										  <input id="authRep" name="authRep" type="text" class="form-control"   disabled>
										  </div>
										</div>
									</div>
                                                     
                                        <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.eml"/> :<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										  <input id="eml" name="eml" type="text" class="form-control" disabled >
										  </div>
										</div>
									</div>
                                    <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mbl"/> :<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										  <input  id="mbl" name="mbl" type="text" class="form-control" disabled >
										  		
										  </div>
										</div>
									</div>

                                                            <hr >
                                                         
                                     <div class="table-responsive">

                                    <table width="100%" border="0" cellspacing="0"  id="docTable" cellpadding="0" class="table table-bordered newtable">
                                    <thead>
                                    <tr class="bg-gradient-primary fw-bold">
                                        <td class="text-white display-none" ><fmt:message key="label.slno"/></td>
                                        <td class="text-white"><fmt:message key="label.docName"/></td>
                                        <td class="text-white"><fmt:message key="label.download"/></td>
                                        <td class="text-white" style="display:none"><fmt:message key="label.uploadDocument"/></td>
                                        <td class="text-white" style="display:none">docid</td>
                                        <td class="text-white" style="display:none">extension</td>
                                        <td class="text-white" style="display:none">slno</td>
                                        <td class="text-white" style="display:none">filename</td>
                                        <td class="text-white" style="display:none">fileuploadid</td>
                                    
                                      </tr>
                                    </thead>
                                    <tbody class="font-1x">
                                    </tbody>	
                                    </table>

                </div>     
                                       
                                                            
                                                            
										
                               		                     
                                                        
                                  
                                                    
                                                        
                                                      </div>  
													</div>
												</div>
											</div>
                    
                                            	<div class="accordion-item">
												<h2 class="accordion-header" id="headingThree">
													<button class="acc1 accordion-button collapsed card-title text-white" type="button" data-bs-toggle="collapse"
														data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" >
								<fmt:message key="label.productdetails"/>
													</button>
												</h2>
												<div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree"
													data-bs-parent="#accordionExample2">
													<div class="accordion-body">
														<div class="row gx-3">
														<div class="col-xs-12 col-lg-6 mb-3 ">

										<div class="form-group row">
											<label class="form-label col-sm-4 col-md-3"><fmt:message
													key="label.appcat" /> :<span
												class="text-danger fw-bold">*</span></label>
											<div class="col-sm-8">
                                               <input id="appRegId" name="appRegId" type="text" class="form-control d-none"   > 
												<select class="form-select " id="appcat">
													<option value="0"><fmt:message key="label.select" /></option>

												</select>
                                             <span id="appcatErr" style="color: Red; display: none;"><b><fmt:message key="label.apptypeErr" /> </b></span>
											</div>
										</div>
									</div>
									
									<div class="col-xs-12 col-lg-6 mb-1 ">
							
										<div class="form-group row d-none " id="file_app">
										  <label class="form-label col-sm-4 col-md-3">Reference Health Authority Approval  :<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8 " >
										  <div class="input-group">
										   <input id="appcatFile" style="display:none"  type="text" class="form-control"   >
										   <input id="appcatFileid" style="display:none"  type="text" class="form-control"   >
										   <input id="appcatFiledoc" style="display:none"  type="text" class="form-control"   >
									<input name="myFile" type="file"  id="HAAappdocFile" class="form-control" onchange="selectFile('HAA')" onclick="changeMsg('HAA')"  >
                                   <button class="btn btn-danger rounded mx-1" type="button" id="HAAUPLOAD" title="upload" onclick="saveUpload('HAA','uploadFile')" style="padding-bottom: 4px;">
									<i class="bi bi-upload"></i> 
									<span class="spinner-border spinner-border-sm d-none" role="status" aria-hidden="true"></span>
									</button> 
									 <button class="btn btn-danger rounded mx-1" type="button" id="HAAREUPLOAD" title="reupload" onclick="saveUpload('HAA','reupload')" style="padding-bottom: 4px;">
									<i class="bi bi-upload"></i> 
									<span class="spinner-border spinner-border-sm d-none" role="status" aria-hidden="true"></span>
									</button> 
									<!-- &nbsp;<!--  -->
									<button class="btn btn-primary rounded" type="button" id="HAADOWNLOAD" title="Download" onclick="downloadApplicationFile('HAA')" style="padding-bottom: 4px;" >
									<i class="bi bi-download"></i> 
									</button> </div>
                                    <span id="HAAuploadErr" style="display:none" ><b><font color="red"><fmt:message key="label.uploadErr" /></font></b></span>
									<span id="HAAdocTypeSuccessErr" style="display:none" ><b><font color="red"><fmt:message key="label.docTypeSuccess" /></font></b></span>									
									<span id="HAAdocTypeNofileErr" style="display:none"><b><font color="red"><fmt:message key="label.docTypeNofile" /></font></b></span>
									<span id="HAAdoctypeFileName" style="display:none"><b><font color="red"><fmt:message key="label.doctypeFileName" /></font></b></span>
										         
										  </div>
										</div>
									</div>
									<div class="col-xs-12 col-lg-6 mb-3 ">

										<div class="form-group row">
											<label class="form-label col-sm-4 col-md-3"><fmt:message
													key="label.appsubcat" />:<span
												class="text-danger fw-bold">*</span></label>
											<div class="col-sm-8">
												<select class="form-select " id="appsubcat">
													<option value="0"><fmt:message key="label.select" /></option>
												</select>
												<span id="appsubcatErr" style="color: Red; display: none;"><b><fmt:message key="label.appsubtypeErr" /> </b></span>
											</div>
										</div>
									</div>
												<div class="col-xs-12 col-lg-6 mb-3 ">
												</div>		
											 <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row mb-3">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.producttrdname"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										  <input id="appproductid" type="text" class="form-control"  style="display:none" >
										  <input id="productid" type="text" class="form-control"  style="display:none" >
										  <input id="producttrdname" type="text" class="form-control"  autocomplete="off" >
										  <span id="producttrdnameErr" style="color: Red; display: none;"><b><fmt:message key="label.producttrdnamelstErr" /> </b></span>
										
										  </div>
										 
										</div>
										<div class="form-group row mb-3">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.strength"/> :<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										  <input id="strength" type="text" class="form-control"  autocomplete="off" placeholder="Enter Strength  " >
										  <span id="strengthErr" style="color: Red; display: none;"><b><fmt:message key="label.strengthErr" /> </b></span>
												
										  </div>
										</div>
										<div class="form-group row mb-3">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.dosageform"/> :<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										   <div id="select2-container1"> 
										  <select class="form-select " id="dosageform">
												<option value="0"><fmt:message key="label.select" /></option>
											</select>
											</div> 
											<span id="dosageformErr" style="color: Red; display: none;"><b><fmt:message key="label.dosageformErr" /> </b></span>
											
										  </div>
										</div>
										<div class="form-group row mb-3">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.pack"/> :<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										 <input id="pack" type="text" class="form-control" autocomplete="off" placeholder="Enter Packsize  " >
										 <span id="packErr" style="color: Red; display: none;"><b><fmt:message key="label.packErr" /> </b></span>
											
										  </div>
										</div>
									</div>
                                  
									 <div class="col-xs-12 col-lg-6 mb-3 dotted p-3 rounded border-primary">
							<div class="form-group row mb-3">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.activeingredient"/> :<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
                                            
										   <select class="form-select " id="activeingredient">
												<option value="0"><fmt:message key="label.select" /></option>
											</select>                                       
                                           	
                                             <span id="activeingredientErr" style="color: Red; display: none;"><b><fmt:message key="label.activeingredientErr" /> </b></span>
																	
										 
										  </div>
										</div>
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.activeingredient"/> :<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8 col-lg-8 mb-3">
                                            
										  	 <!-- textarea id="activeingredienttxt" class="form-control" autocomplete="off"></textarea> -->
                                              
                                            
											<div class="input-group">
											    <input id="activeingredienttxtid" style="display:none"type="text" class="form-control"  autocomplete="off" >
                                                <input id="activeingredienttxt" type="text" class="form-control"  autocomplete="off" >
                                             <button class="btn btn-info" onclick="actIngridient()" id="actBtn"> <i class="bi bi-plus-lg"></i> <fmt:message key="label.add"/></button>   
										 </div>  
										  <span id="activeingredienttxtErr" style="color: Red; display: none;"><b><fmt:message key="label.activeingredientErr" /> </b></span> 						
										  <span id="activeingredientsingleErr" style="color: Red; display: none;"><b><fmt:message key="label.singleact" /> </b></span> 
										  <span id="activeingredientdeleteErr" style="color: Red; display: none;"><b><fmt:message key="label.deleteact" /> </b></span> 
										 	<table width="100%" border="0" cellspacing="0" cellpadding="5" id="actTable" class="table table-bordered table-striped mt-3">
                                     <thead>
                                        <tr class="bg-gradient-primary">
                                          <th><fmt:message key="label.slno"/></th>
                                          <th><fmt:message key="label.activeingredient"/></th>
                                          <th style="display:none">actid</th>
                                           <th><fmt:message key="label.delete"/></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        
                                      </tbody>
                                    </table>
										  </div>
										</div>
									
									</div>
                                 <!--    <div class="col-xs-12 col-lg-6 mb-3 ">
							
										
									</div>
                                <div class="col-xs-12 col-lg-6 mb-3 ">
							
										
									</div>
                                    <div class="col-xs-12 col-lg-6 mb-3 ">
							
										
									</div> -->
                                   <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.packmaterial"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
<!--										<input name="tt" type="text" class="form-control"  placeholder="Enter Decription.  " >-->
                                              <textarea id="packmaterial" class="form-control" autocomplete="off" placeholder="Enter Decription"></textarea>
                                              <span id="packmaterialErr" style="color: Red; display: none;"><b><fmt:message key="label.packmaterialErr" /> </b></span>
										
										  </div>
										</div>
									</div>
                                    <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.route"/> :<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										<!-- <input id="route" type="text" class="form-control"  placeholder="Enter Administration route  " > -->
										 <div id="select2-container1"> 
										 <select class="form-select " id="route">
												<option value="0"><fmt:message key="label.select" /></option>
											</select>
											</div>
										 <span id="routeErr" style="color: Red; display: none;"><b><fmt:message key="label.routeErr" /> </b></span>
										
										  </div>
										</div>
									</div>
                              <%--  <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.shelflife"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										<input id="shelflife" type="number" class="form-control" autocomplete="off" placeholder="Enter Propsed shelf life  " >
										 
										  <span id="shelflifeErr" style="color: Red; display: none;"><b><fmt:message key="label.shelflifeErr" /> </b></span>
										
										  </div>
										</div>
									</div> --%>
									<div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.shelflife"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
									<div class="input-group">
                                        <input id="shelflife" type="number" class="form-control" onwheel="return false;"  maxlength="2"
                                        oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                                         autocomplete="off" placeholder="Enter Propsed shelf life  " >&nbsp;
                                        <select class="form-select " id="shelflifePrd">
												<option value="0"><fmt:message key="label.select" /></option>
											</select> 
                                      
                                       </div>
                                        <span id="shelflifeErr" style="color: Red; display: none;"><b><fmt:message key="label.shelflifeErr" /> </b></span>
                                      <br> <span id="shelflifePrdErr" style="color: Red; display: none;"><b><fmt:message key="label.shelflifeErr" /> </b></span>
                                     </div>
										</div>
									</div>
									
									
									<%--  <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.shelflifePrd"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										<!-- <input id="shelflifePrd" type="text" class="form-control" autocomplete="off" placeholder="Enter Propsed shelf life  " > -->
										<select class="form-select " id="shelflifePrd">
												<option value="0"><fmt:message key="label.select" /></option>
											</select> 
										  <span id="shelflifePrdErr" style="color: Red; display: none;"><b><fmt:message key="label.shelflifeErr" /> </b></span>
										
										  </div>
										</div>
									</div> --%>
                                 <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.shelflifefirst"/>:</label>
										  <div class="col-sm-8">
										  <div class="input-group">
				  						  <input id="shelflifefirst" type="number" class="form-control"autocomplete="off" 
				  						  maxlength="2"
                                          oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"placeholder="Enter Propsed shelf life after first opening container " >&nbsp;
                                           <select class="form-select " id="shelflifefirstPrd">
												<option value="0"><fmt:message key="label.select" /></option>
											</select> 
											</div>
                                            <span id="shelflifefirstErr" style="color: Red; display: none;"><b><fmt:message key="label.shelflifefirstErr" /> </b></span>
										    <span id="shelflifefirstPrdErr" style="color: Red; display: none;"><b><fmt:message key="label.shelflifefirstErr" /> </b></span>
                                              <small class="text-danger fw-bold"><fmt:message key="label.ifapplicable"/> </small>
                                          
										  </div>
										</div>
									</div>
									 <%-- <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.shelflifefirstPrd"/>:</label>
										  <div class="col-sm-8">
										<!-- <input id="shelflifefirstPrd" type="text" class="form-control"autocomplete="off" maxlength="50" placeholder="Enter Propsed shelf life after first opening container " > -->
                                           <select class="form-select " id="shelflifefirstPrd">
												<option value="0"><fmt:message key="label.select" /></option>
											</select> 
                                            <span id="shelflifefirstPrdErr" style="color: Red; display: none;"><b><fmt:message key="label.shelflifefirstErr" /> </b></span>
										
                                              <small class="text-danger fw-bold"><fmt:message key="label.ifapplicable"/> </small>
                                          
										  </div>
										</div>
									</div> --%>
                                <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.shelfliferecon"/>:</label>
										  <div class="col-sm-8">
										  <div class="input-group">
										 <input id="shelfliferecon" type="number" class="form-control" autocomplete="off" 
										 maxlength="2"
                                        oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                                         placeholder="Enter Propsed shelf life  after reconstitution or dilution" >&nbsp;
                                         <select class="form-select " id="shelflifereconPrd">
												<option value="0"><fmt:message key="label.select" /></option>
											</select>
											</div>
                                         <span id="shelflifereconErr" style="color: Red; display: none;"><b><fmt:message key="label.shelflifereconErr" /> </b></span>
								        <span id="shelflifereconPrdErr" style="color: Red; display: none;"><b><fmt:message key="label.shelflifereconErr" /> </b></span>
                                              <small class="text-danger fw-bold"><fmt:message key="label.ifapplicable"/> </small>
                                          
										  </div>
										</div>
									</div>
									 <%-- <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.shelflifereconPrd"/>:</label>
										  <div class="col-sm-8">
										<!-- <input id="shelflifereconPrd" type="text" class="form-control" autocomplete="off" maxlength="50" placeholder="Enter Propsed shelf life  after reconstitution or dilution" > -->
                                          <select class="form-select " id="shelflifereconPrd">
												<option value="0"><fmt:message key="label.select" /></option>
											</select> 
                                         <span id="shelflifereconPrdErr" style="color: Red; display: none;"><b><fmt:message key="label.shelflifereconErr" /> </b></span>
								
                                              <small class="text-danger fw-bold"><fmt:message key="label.ifapplicable"/> </small>
                                          
										  </div>
										</div>
									</div> --%>
                                                       <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.storagecondition"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
<!--										<input name="tt" type="text" class="form-control"  placeholder="Enter Decription.  " >-->
                                              <textarea  id="storagecondition" class="form-control" autocomplete="off" placeholder="Enter Propsed storage conditions"></textarea>
										 <span id="storageconditionErr" style="color: Red; display: none;"><b><fmt:message key="label.storageconditionErr" /> </b></span>
								
										  </div>
										</div>
									</div>
                                                    
                                           <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.pharmaco"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
                                            <div id="select2-container1">  
										    <select class="form-select " id="pharmaco">
												<option value="0"><fmt:message key="label.select" /></option>
											</select> 
											<!-- <input id="pharmaco" type="text" class="form-control"   > -->
                                            
                                            <span id="pharmacoErr" style="color: Red; display: none;"><b><fmt:message key="label.pharmacoErr" /> </b></span>
																
                                              </div>
										  </div>
										</div>
									</div>  
									 <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.pharmacosub"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
                                            <div id="select2-container1">  
										    <select class="form-select " id="pharmacosub">
												<option value="0"><fmt:message key="label.select" /></option>
											</select> 
											<!-- <input id="pharmaco" type="text" class="form-control"   > -->
                                            
                                            <span id="pharmacosubErr" style="color: Red; display: none;"><b><fmt:message key="label.pharmacoErr" /> </b></span>
																
                                              </div>
										  </div>
										</div>
									</div>           
                                                    
                                      <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.atccd"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
                                          <div id="select2-container2">    
									   	  <%-- <select class="form-select " id="atccd">
												<option value="0"><fmt:message key="label.select" /></option>
											</select> --%>
											<input id="atccd" type="text" class="form-control" autocomplete="off"  >
                                            	
                                            <span id="atccdErr" style="color: Red; display: none;"><b><fmt:message key="label.atccdErr" /> </b></span>
															
                                              </div>
										  </div>
										</div>
									</div>           
                                       <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.therapeutic"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										<!-- <input id="therapeutic" type="text" class="form-control" autocomplete="off"  placeholder="Enter therapeutic Indication" > -->
										<textarea  id="therapeutic" type="text"  class="form-control" autocomplete="off" placeholder="Enter therapeutic Indication"></textarea>
                                              <small class="text-danger fw-bold">(Target group indication) </small>
                                        <span id="therapeuticErr" style="color: Red; display: none;"><b><fmt:message key="label.therapeuticErr" /> </b></span>
								  
										  </div>
										</div>
									</div>                 
                                                
                                      <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.revisiondt"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										<div id="revisiondtDiv" class="position-relative"><input id="revisiondt" type="text" autocomplete="off" class="form-control datepicker5"  value="" ></div>
										<span id="revisiondtErr" style="color: Red; display: none;"><b><fmt:message key="label.revisiondtErr" /> </b></span>
								
										  </div>
										</div>
									</div>                
                                                    
                                                    
                                                    
                                                    
                                                   
                                                     <div class="col-xs-12 col-lg-6 mb-3  text-end"> <div class="form-group row"><label class="form-label col-sm-4 col-md-3"></label><div class="col-sm-8">
                                               <!-- <input type="button" class="btn btn-success" value="Save" onclick="saveProductDtl()" id="saveProductBTN">  -->
                                               <button class="btn btn-success" type="button" id="saveProductBTN" onclick="saveProductDtl()">
													 <span class="spinner-border spinner-border-sm d-none" role="status" aria-hidden="true"></span>
													  Save
												 </button>  
                                               <input type="button" class="btn btn-danger" value="Clear" onclick="clearProductDtl()" id="clearProductBTN" >
                                               </div></div> 
                                                <span id="productSucc"  style="display:none"><b><font color="green"><fmt:message key="label.recordSucc" /></font></b></span> 
										       <span id="productdupl" style="display:none"><b><font color="red"><fmt:message key="label.filesmandatory" /></font></b></span>
										       <span id="productFail" style="display:none"><b><font color="red"><fmt:message key="label.failed" /></font></b></span> 
                                               
                                                </div>
                                                    
                                                    
                                                 
														</div>
													</div>
												</div>
											</div>

                              


		                              <div class="accordion-item">                                  
												<h2 class="accordion-header " id="headingFour">
													<button class="acc1 accordion-button collapsed card-title text-white" type="button" data-bs-toggle="collapse"
														data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
														<fmt:message key="label.manufactdetails"/>
													</button>
												</h2>
												<div id="collapseFour" class="accordion-collapse collapse "
													aria-labelledby="headingFour" data-bs-parent="#accordionExample2">
													<div class="accordion-body">
														<!-- Row start -->
														<div class="row gx-3">
														
														
												<div class="text-start text-danger fw-bold mb-1 font-1x"><fmt:message key="label.manufactnotes"/>123</div>		
														
														
														
											<div class="col-xs-9 col-lg-9 mb-1  px-3 py-2 ">  
											
											  <div class="accordion" id="accordion_sub1">

											<div class="accordion-item">

												<h2 class="accordion-header " id="headingsub0">

													<button class="acc1 accordion-button bg-gradient-light card-title text-primary  collapsed" type="button" data-bs-toggle="collapse"

														data-bs-target="#collapsesub0" aria-expanded="false" aria-controls="collapsesub0">

													<fmt:message key="label.marketdetails"/>

													</button>

												</h2>

												<div id="collapsesub0" class="accordion-collapse collapse "

													aria-labelledby="headingsub0" data-bs-parent="#accordion_sub1">

													<div class="accordion-body ">                                 
                            			
														
														<!-- <div class="card border">
									<div class="card-header bg-gradient-light">
										<div class="card-title text-primary"></div>
									</div>
							
									
									<div class="card-body ">			 -->						
                                        <div class="row">
                                        
														<div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.marketname"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										   <input type="text" id="marketslno" class="form-control d-none"  >
										   <input type="text" id="marketid" class="form-control d-none"  > 
                                           <input type="text" id="marketname" class="form-control" maxlength="100" autocomplete="off"> 
										   <span id="marketnameErr" style="color: Red; display: none;"><b><fmt:message key="label.marketnameErr" /> </b></span>
													 
										  </div>
										</div>
									</div>
                                            <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.country"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
									      <select class="form-select " id="marketcountry">
												<option value="0"><fmt:message key="label.select" /></option>
											</select>
											<span id="marketcountryErr" style="color: Red; display: none;"><b><fmt:message key="label.countryErr" /> </b></span>
								
										  </div>
										</div>
									</div> 
                                             <div class="col-xs-12 col-lg-6 mb-1 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.address"/> :<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
							
                                              <textarea id="marketaddress" class="form-control" autocomplete="off" placeholder="Enter Address"></textarea>
                                           <span id="marketaddressErr" style="color: Red; display: none;"><b><fmt:message key="label.addressErr" /> </b></span>
								   
										  </div>
										</div>
									</div>
														
														
										  </div>
										   <div class="col-sm-12 mb-1 text-end">
                                    <a href="#" class="btn btn-success " onclick="saveMarketSingle('MAH')" id="saveMarketSingleMAHBTN">
                                          <!-- <i class="bi bi-plus-lg m-0"></i>  --><fmt:message key="label.save" />
                                          <span class="spinner-border spinner-border-sm d-none" role="status" aria-hidden="true"></span>
                                    </a>
                                    <br>
									  <span id="marketSucc" style="display:none" ><b><font color="green"><fmt:message key="label.recordSucc" /></font></b></span> 
									  <span id="marketdupl" style="display:none"><b><font color="red"><fmt:message key="label.filesmandatory" /></font></b></span>
									  <span id="marketFail" style="display:none"><b><font color="red"><fmt:message key="label.failed" /></font></b></span> 
                                     	
							       </div> 
										</div>
									</div>				
														
											</div>					
														
                                           
                            
                            
                            
                                                            
                              
                            
                          <!--   <div class="accordion" id="accordion_sub1"> -->

											<div class="accordion-item">

												<h2 class="accordion-header " id="headingsub1">

													<button class="acc1 accordion-button bg-gradient-light card-title text-primary collapsed" type="button" data-bs-toggle="collapse"

														data-bs-target="#collapsesub1" aria-expanded="false" aria-controls="collapsesub1">

													<fmt:message key="label.manufactactingredient"/>

													</button>

												</h2>

												<div id="collapsesub1" class="accordion-collapse collapse "

													aria-labelledby="headingsub1" data-bs-parent="#accordion_sub1">

													<div class="accordion-body ">                                 
                            
                            
                            
                            
                            
                            
                                                        
                            <!-- <div class="card border">
									<div class="card-header bg-gradient-light" >
										<div class="card-title text-primary"></div>
									</div>
									
									
									
									<div class="card-body ">	 -->	
																
                                        <div class="row">
                                        
                                    <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.manufactactname"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										   
										   <input type="text" id="manufactactslno" class="form-control d-none"  > 
										   <input type="text" id="manufactactid" class="form-control d-none"  > 
                                           <input type="text" class="form-control" autocomplete="off" maxlength="100" id="manufactactname"> 	
                                           <span id="manufactactnameErr" style="color: Red; display: none;"><b><fmt:message key="label.manufactactnameErr" /> </b></span>															 
										  </div>
								    </div>
									</div>
                                        <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.country"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8" >
                                              <select class="form-select " id="manufactactcountry">
												<option value="0"><fmt:message key="label.select" /></option>
											</select>
											<span id="manufactactcountryErr" style="color: Red; display: none;"><b><fmt:message key="label.countryErr" /> </b></span>
										  </div>
										</div>
									</div> 
                                    <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.address"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">							
                                              <textarea class="form-control" autocomplete="off" id="manufactactaddress" placeholder="Enter Address"></textarea>  
                                              <span id="manufactactaddressErr" style="color: Red; display: none;"><b><fmt:message key="label.addressErr" /> </b></span>                                            
										  </div>
										</div>
									</div> 
                                     <h6 class="text-danger mb-2"><u><fmt:message key="label.gmpcertdtl"/></u></h6>
                               <div class="col-xs-12 col-lg-12 mb-2 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.uploadcert"/> :<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
							   
										  <div class="input-group">
										   <input id="gmpFile" style="display:none"  type="text" class="form-control"   >
										   <input id="gmpFileid" style="display:none"  type="text" class="form-control"   >
										   <input id="gmpFiledoc" style="display:none"  type="text" class="form-control"   >
									<input name="myFile" type="file"  id="GMPappdocFile" class="form-control" onchange="selectFile('GMP')" onclick="changeMsg('GMP')" >
<!--                                    <button class="btn btn-danger rounded mx-1" type="button" id="GMPFILEUPLOAD" title="upload" style="padding-bottom: 4px;" onclick="saveUpload('GMP')">
									<i class="bi bi-upload"></i> 
									</button>
									&nbsp;
									<button class="btn btn-primary rounded" type="button" id="GMPFILEDOWNLOAD" title="Download" onclick="downloadApplicationFile('GMP')" style="padding-bottom: 4px;" >
									<i class="bi bi-download"></i> 
									</button> --> </div>
                                    <span id="GMPuploadErr" style="display:none" ><b><font color="red"><fmt:message key="label.uploadErr" /></font></b></span>
									<span id="GMPdocTypeSuccessErr" style="display:none" ><b><font color="red"><fmt:message key="label.docTypeSuccess" /></font></b></span>									
									<span id="GMPdocTypeNofileErr" style="display:none"><b><font color="red"><fmt:message key="label.docTypeNofile" /></font></b></span>
									<span id="GMPdoctypeFileName" style="display:none"><b><font color="red"><fmt:message key="label.doctypeFileName" /></font></b></span>
										  
										  </div>
										</div>
									</div>
                                                   
<!--
                                            <div class="col-xs-12 col-lg-12 mb-3  text-end"> 
                                               <input type="button" class="btn btn-success" value="Save" >  </div>
-->
                                
                                        
                                        </div> 
                                        
                                    <div class="text-end col-sm-12 mb-1">
                                    <a href="#" class="btn btn-success " onclick="saveMarketSingle('AIM')" id="saveMarketSingleAIMBTN">
                                        <!-- <i class="bi bi-plus-lg m-0"></i> --> <fmt:message key="label.save" />
                                         <span class="spinner-border spinner-border-sm d-none" role="status" aria-hidden="true"></span>
                                    </a>
                                    <br>
									  <span id="marketGmpSucc" style="display:none" ><b><font color="green"><fmt:message key="label.recordSucc" /></font></b></span> 
									  <span id="marketGmpdupl" style="display:none"><b><font color="red"><fmt:message key="label.filesmandatory" /></font></b></span>
									  <span id="marketGmpFail" style="display:none"><b><font color="red"><fmt:message key="label.failed" /></font></b></span> 
                                     	<hr>
							       </div>                               
                                        
                              <div class="table-responsive">
                                <table width="100%" border="0" cellspacing="0" cellpadding="5" id="aimTable" class="table table-bordered table-striped dataTable8 ">
                              <thead>
                                    <tr class="bg-gradient-primary">
                                      <th scope="col"><fmt:message key="label.slno" /></th>
                                      <th scope="col"><fmt:message key="label.manufactactname"/></th>
                                      <th scope="col"><fmt:message key="label.address"/></th>
                                      <th scope="col"><fmt:message key="label.download"/></th>
                                      <th scope="col"><fmt:message key="edit"/></th>
                                      <th scope="col" style="display:none">slno</th>
                                      <th scope="col" style="display:none">addid</th>
                                      <th scope="col" style="display:none">country</th>
                                      <th scope="col" style="display:none">filename</th>
                                      <th scope="col" style="display:none">fileid</th>
                                      <th scope="col" style="display:none">docid</th>
                                    </tr>
                                  </thead>
                             <tbody>  
                                  </tbody>
                                </table>
                                </div>                         
                             </div> 
                                 </div>  
                                                     
                             </div>           
                              
                              
                              
                              <div class="accordion-item">

												<h2 class="accordion-header " id="headingsub2">

													<button class="acc1 accordion-button bg-gradient-light card-title text-primary  collapsed" type="button" data-bs-toggle="collapse"

														data-bs-target="#collapsesub2" aria-expanded="false" aria-controls="collapsesub2">

													<fmt:message key="label.manufexcdetails"/>

													</button>

												</h2>

												<div id="collapsesub2" class="accordion-collapse collapse "

													aria-labelledby="headingsub2" data-bs-parent="#accordion_sub1">

													<div class="accordion-body ">  
													
													                              
                    <!--         <div class="col-xs-12 col-lg-6 mb-1 dotted rounded px-3 py-2 border-success">                                
                            <div class="card border">
									<div class="card-header alert bg-gradient-light" >
										<div class="card-title text-primary"></div>
									</div>
									<div class="card-body py-1">	 -->								
                                      <div class="row">                                        
                                    <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.manufactactname"/> :<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										  <input type="text" class="form-control d-none"  id="manufactexcslno"> 
										  <input type="text" class="form-control d-none"  id="manufactexcid"> 
                                           <input type="text" class="form-control"  autocomplete="off" maxlength="100" id="manufactexcname"> 																 
										  <span id="manufactexcnameErr" style="color: Red; display: none;"><b><fmt:message key="label.manufactactnameErr" /> </b></span>                                            
										  </div>
								    </div>
									</div>
                                        <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.country"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
                                               <select class="form-select " id="manufactexccountry">
												<option value="0"><fmt:message key="label.select" /></option>
											</select>
											<span id="manufactexccountryErr" style="color: Red; display: none;"><b><fmt:message key="label.countryErr" /> </b></span>                                            
										  </div>
										</div>
									</div> 
                                    <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.address"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">							
                                              <textarea class="form-control"  autocomplete="off" id="manufactexcaddress" placeholder="Enter Address"></textarea>                                              
										  <span id="manufactexcaddressErr" style="color: Red; display: none;"><b><fmt:message key="label.addressErr" /> </b></span>                                            
										  </div>
										</div>
									</div> 
                             
                               <div class="col-xs-12 col-lg-12 mb-2 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.manufactexcref"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">							
<!--                                            <input name="edsw254" type="file" class="form-control"> -->
                                              <input type="text" class="form-control" autocomplete="off"  id="manufactexcref">                                              
										  <span id="manufactexcrefErr" style="color: Red; display: none;"><b><fmt:message key="label.manufactexcrefErr" /> </b></span>                                            
										  </div>
										</div>
									</div>
                                                   
                           
                                        </div>            
                                <div class="text-end col-sm-12 mb-1">
                                    <a href="#" class="btn btn-success " onclick="saveMarketSingle('EM')" id="saveMarketSingleEMBTN">
                                        <!-- <i class="bi bi-plus-lg m-0"></i> --> <fmt:message key="label.save" />
                                        <span class="spinner-border spinner-border-sm d-none" role="status" aria-hidden="true"></span>
                                    </a>
                                    <br>
									 <span id="marketExcSucc" style="display:none" ><b><font color="green"><fmt:message key="label.recordSucc" /></font></b></span> 
									  <span id="marketExcdupl" style="display:none"><b><font color="red"><fmt:message key="label.filesmandatory" /></font></b></span>
									  <span id="marketExcFail" style="display:none"><b><font color="red"><fmt:message key="label.failed" /></font></b></span> 
                                      
							       </div>
                                         
                                          <div class="table-responsive">
                                <table width="100%" border="0" cellspacing="0"  id="emTable"  cellpadding="5" class="table table-bordered table-striped dataTable8">
                              <thead>
                                    <tr class="bg-gradient-primary">
                                      <th scope="col"><fmt:message key="label.slno" /></th>
                                      <th scope="col"><fmt:message key="label.manufactactname"/></th>
                                      <th scope="col"><fmt:message key="label.address"/></th>
                                      <th scope="col"><fmt:message key="label.manufactexcref"/></th>
                                      <th scope="col"><fmt:message key="edit"/></th>
                                      <th scope="col" style="display:none">slno</th>
                                      <th scope="col" style="display:none">addid</th>
                                      <th scope="col" style="display:none">country</th>
                                    </tr>
                                  </thead>
                             <tbody>  
                                  </tbody>
                                </table>
                                </div>                  
                                                  
                             </div> </div>   
                                        </div> 
                                        
                                        
                                        
                                     <div class="accordion-item">

												<h2 class="accordion-header " id="headingsub3">

													<button class="acc1 accordion-button bg-gradient-light card-title text-primary  collapsed" type="button" data-bs-toggle="collapse"

														data-bs-target="#collapsesub3" aria-expanded="false" aria-controls="collapsesub3">

														<fmt:message key="label.manufactfinishdetails"/>

													</button>

												</h2>

												<div id="collapsesub3" class="accordion-collapse collapse "

													aria-labelledby="headingsub3" data-bs-parent="#accordion_sub1">

													<div class="accordion-body ">     
                                        
                                        
                        
                                        
                                      

                                 <!-- <div class="col-xs-12 col-lg-6 mb-1 dotted rounded px-3 py-1 border-info ">                                
                            <div class="card border">
									<div class="card-header bg-gradient-light" >
										<div class="card-title text-primary"></div>
									</div>
									<div class="card-body ">	 -->								
                                        <div class="row">
                                        
                                    <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.manufactactname"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										  <input type="text" class="form-control d-none"  id="manufactfinishslno">
										  <input type="text" class="form-control d-none"  id="manufactfinishid"> 
                                           <input type="text" class="form-control" autocomplete="off"  maxlength="100" id="manufactfinishname">
                                           <span id="manufactfinishnameErr" style="color: Red; display: none;"><b><fmt:message key="label.manufactexcrefErr" /> </b></span>                                            
										   																 
										  </div>
								    </div>
									</div>
                                      
                                    <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.address"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">							
                                              <textarea class="form-control" autocomplete="off"  id="manufactfinishadd" placeholder="Enter Address"></textarea>                                              
										  <span id="manufactfinishaddErr" style="color: Red; display: none;"><b><fmt:message key="label.manufactexcrefErr" /> </b></span>                                            
										  
										  </div>
										</div>
									</div>
                                              <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mohregquest"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-4">
                                                
                                                <select class="form-select choose_yes" id="mohregquestfinish" vv="1">
												<option value="0"><fmt:message key="label.select" /></option>
												<option value="Y"><fmt:message key="label.yes" /></option>
												<option value="N"><fmt:message key="label.no" /></option>
											</select>
											<span id="mohregquestfinishErr" style="color: Red; display: none;"><b><fmt:message key="label.manufactexcrefErr" /> </b></span>                                            
										  
										  </div>
										</div>
									</div> 
                                     <div id="manu_1" class="d-none">
                               <div class="col-xs-12 col-lg-12 mb-2 ">
							
										<div class="form-group row " >
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mohregno"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
							
                                              <input type="text" class="form-control"autocomplete="off" id="mohregnofinish"> 
                                              <span id="mohregnofinishErr" style="color: Red; display: none;"><b><fmt:message key="label.mohregnoErr" /> </b></span>                                            
										  
										  </div>
										</div>
									</div>
                                 <div class="col-xs-12 col-lg-12 mb-2 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mohissdt"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
							
                                      <div id="date_i1" class="position-relative">        <input type="text" class="form-control datepicker_i1" autocomplete="off" id="mohissdtfinish"></div><small class="text-danger">(dd/mm/yyyy)</small> 
                                           <span id="mohissdtfinishErr" style="color: Red; display: none;"><b><fmt:message key="label.mohissdtErr" /> </b></span>                                            
										     
										  </div>
										</div>
									</div>
                               <div class="col-xs-12 col-lg-12 mb-2 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mohrenewdt"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
							
                                            <div id="date_r1" class="position-relative">     <input type="text" class="form-control datepicker_r1" autocomplete="off" id="mohrenewdtfinish"></div><small class="text-danger">(dd/mm/yyyy)</small> 
                                           <span id="mohrenewdtfinishErr" style="color: Red; display: none;"><b><fmt:message key="label.mohrenewdtErr" /> </b></span>                                            
										     
										  </div>
										</div>
									</div>
                                            </div>
                                                   
<!--
                                            <div class="col-xs-12 col-lg-12 mb-3  text-end"> 
                                               <input type="button" class="btn btn-success" value="Save" >  </div>
-->
                                
                                        
                                        </div> 
                                         <div class="text-end col-sm-12 mb-1">
		                                    <a href="#" class="btn btn-success " onclick="saveMarketSingle('FPM')" id="saveMarketSingleFPMBTN">
		                                      <!--   <i class="bi bi-plus-lg m-0"></i> --> <fmt:message key="label.save" />
		                                         <span class="spinner-border spinner-border-sm d-none" role="status" aria-hidden="true"></span>
		                                    </a>
		                                    <br>
									  <span id="marketFinishSucc" style="display:none" ><b><font color="green"><fmt:message key="label.recordSucc" /></font></b></span> 
									  <span id="marketFinishdupl" style="display:none"><b><font color="red"><fmt:message key="label.filesmandatory" /></font></b></span>
									  <span id="marketFinishFail" style="display:none"><b><font color="red"><fmt:message key="label.failed" /></font></b></span> 
                                      	<hr>
									       </div>                                
                                             
                                          <div class="table-responsive">
                                <table width="100%" border="0" cellspacing="0" cellpadding="5" id="fpmTable" class="table table-bordered table-striped dataTable8">
                              <thead>
                                    <tr class="bg-gradient-primary">
                                      <th scope="col"><fmt:message key="label.slno" /></th>
                                      <th scope="col"><fmt:message key="label.manufactactname"/></th>
                                      <th scope="col"><fmt:message key="label.address"/></th>
                                      <th scope="col"><fmt:message key="label.haveregno"/></th>
                                      <th scope="col"><fmt:message key="edit"/></th>
                                      <th scope="col" style="display:none">slno</th>
                                      <th scope="col" style="display:none">addid</th>
                                      <th scope="col" style="display:none">regno</th>
                                      <th scope="col" style="display:none">issdt</th>
                                      <th scope="col" style="display:none">rendt</th>
                                       <th scope="col" style="display:none">regyesno</th>
                                    </tr>
                                  </thead>
                             <tbody> 
                                  </tbody>
                                </table>
                                </div>                  
                                  </div>  
                                  </div>                     
                             </div>  
                             
                             

<div class="accordion-item">

												<h2 class="accordion-header " id="headingsub4">

													<button class="acc1 accordion-button bg-gradient-light card-title text-primary collapsed" type="button" data-bs-toggle="collapse"

														data-bs-target="#collapsesub4" aria-expanded="false" aria-controls="collapsesub4">

													<fmt:message key="label.manufactpridetails"/>

													</button>

												</h2>

												<div id="collapsesub4" class="accordion-collapse collapse "

													aria-labelledby="headingsub4" data-bs-parent="#accordion_sub1">

													<div class="accordion-body ">     
                                        



                         <!--  <div class="col-xs-12 col-lg-6 mb-1 dotted rounded px-3 py-1 border-info">                                
                            <div class="card border">
									<div class="card-header bg-gradient-light" >
										<div class="card-title text-primary"></div>
									</div>
									<div class="card-body ">	 -->								
                                        <div class="row">
                                        
                                     <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.manufactpriname"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										   <input type="text" class="form-control d-none"  id="manufactprislno">
										  <input type="text" class="form-control d-none"  id="manufactpriid">
                                           <input type="text" class="form-control" autocomplete="off"  maxlength="100" id="manufactpriname">
                                           <span id="manufactprinameErr" style="color: Red; display: none;"><b><fmt:message key="label.manufactprinameErr" /> </b></span>                                            
										   																 
										  </div>
								    </div>
									</div>
                                      
                                    <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.address"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">							
                                              <textarea class="form-control"  id="manufactpriadd" autocomplete="off" placeholder="Enter Address"></textarea>                                              
										  <span id="manufactpriaddErr" style="color: Red; display: none;"><b><fmt:message key="label.addressErr" /> </b></span>                                            
										  
										  </div>
										</div>
									</div>
                                              <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mohregquest"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-4">
                                                
                                                <select class="form-select choose_yes" id="mohregquestpri" vv="2">
												<option value="0"><fmt:message key="label.select" /></option>
												<option value="Y"><fmt:message key="label.yes" /></option>
												<option value="N"><fmt:message key="label.no" /></option>
											</select>
											<span id="mohregquestpriErr" style="color: Red; display: none;"><b><fmt:message key="label.manufactexcrefErr" /> </b></span>                                            
										  
										  </div>
										</div>
									</div> 
                                     <div id="manu_2" class="d-none">
                               <div class="col-xs-12 col-lg-12 mb-2 ">
							
										<div class="form-group row " >
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mohregno"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
							
                                              <input type="text" class="form-control" id="mohregnopri" autocomplete="off"> 
                                              <span id="mohregnopriErr" style="color: Red; display: none;"><b><fmt:message key="label.mohregnoErr" /> </b></span>                                            
										  
										  </div>
										</div>
									</div>
                                 <div class="col-xs-12 col-lg-12 mb-2 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mohissdt"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
							
                                      <div id="date_i2" class="position-relative">        <input type="text" class="form-control datepicker_i2" autocomplete="off"  id="mohissdtpri"></div><small class="text-danger">(dd/mm/yyyy)</small> 
                                           <span id="mohissdtpriErr" style="color: Red; display: none;"><b><fmt:message key="label.mohissdtErr" /> </b></span>                                            
										     
										  </div>
										</div>
									</div>
                               <div class="col-xs-12 col-lg-12 mb-2 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mohrenewdt"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
							
                                            <div id="date_r2" class="position-relative">     <input type="text"  class="form-control datepicker_r2" autocomplete="off" id="mohrenewdtpri"></div><small class="text-danger">(dd/mm/yyyy)</small> 
                                           <span id="mohrenewdtpriErr" style="color: Red; display: none;"><b><fmt:message key="label.mohrenewdtErr" /> </b></span>                                            
										     
										  </div>
										</div>
									</div>
                                            </div>                  
<!--
                                            <div class="col-xs-12 col-lg-12 mb-3  text-end"> 
                                               <input type="button" class="btn btn-success" value="Save" >  </div>
-->
                                
                                        
                                        </div>   
                                         <div class=" col-sm-12 mb-1 text-end">
		                                    <a href="#" class="btn btn-success " onclick="saveMarketSingle('PP')" id="saveMarketSinglePPBTN">
		                                       <!--  <i class="bi bi-plus-lg m-0"></i>  --><fmt:message key="label.save" />
		                                        <span class="spinner-border spinner-border-sm d-none" role="status" aria-hidden="true"></span>
		                                    </a>
		                                    <br>
									  <span id="marketPriSucc" style="display:none" ><b><font color="green"><fmt:message key="label.recordSucc" /></font></b></span> 
									  <span id="marketPridupl" style="display:none"><b><font color="red"><fmt:message key="label.filesmandatory" /></font></b></span>
									  <span id="marketPriFail" style="display:none"><b><font color="red"><fmt:message key="label.failed" /></font></b></span> 
                                       		
									       </div>                             
                                       
                               <div class="table-responsive">
                                <table width="100%" border="0" cellspacing="0" cellpadding="5" id="ppTable" class="table table-bordered table-striped dataTable8">
                              <thead>
                                    <tr class="bg-gradient-primary">
                                      <th scope="col"><fmt:message key="label.slno" /></th>
                                      <th scope="col"><fmt:message key="label.manufactpriname"/></th>
                                      <th scope="col"><fmt:message key="label.address"/></th>
                                      <th scope="col"><fmt:message key="label.haveregno"/></th>
                                      <th scope="col"><fmt:message key="edit"/></th>
                                      <th scope="col" style="display:none">slno</th>
                                      <th scope="col" style="display:none">addid</th>
                                      <th scope="col" style="display:none">regno</th>
                                      <th scope="col" style="display:none">issdt</th>
                                      <th scope="col" style="display:none">rendt</th>
                                       <th scope="col" style="display:none">regyesno</th>
                                    </tr>
                                  </thead>
                             <tbody>  
                                  </tbody>
                                </table>
                                </div>   
                                
                                 </div>                    
                             </div>                     
                             </div>

                          
                             <div class="accordion-item">

												<h2 class="accordion-header " id="headingsub5">

													<button class="acc1 accordion-button bg-gradient-light card-title text-primary collapsed" type="button" data-bs-toggle="collapse"

														data-bs-target="#collapsesub5" aria-expanded="false" aria-controls="collapsesub5">

													<fmt:message key="label.marnufactsecdetails"/>

													</button>

												</h2>

												<div id="collapsesub5" class="accordion-collapse collapse "

													aria-labelledby="headingsub5" data-bs-parent="#accordion_sub1">

													<div class="accordion-body ">  
													                
                                 <!-- <div class="col-xs-12 col-lg-6 mb-1 dotted rounded px-3 py-1 border-success">   v-separator                           
                            <div class="card border">
									<div class="card-header bg-gradient-light" >
										<div class="card-title text-primary"></div>
									</div>
									<div class="card-body ">	 -->								
                                        <div class="row">
                                        
                                    <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.manufactpriname"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										    <input type="text" class="form-control d-none" id="manufactsecslno">
										    <input type="text" class="form-control d-none" id="manufactsecid">
                                            <input type="text" class="form-control" autocomplete="off"   maxlength="100" id="manufactsecname">
                                           <span id="manufactsecnameErr" style="color: Red; display: none;"><b><fmt:message key="label.manufactprinameErr" /> </b></span>                                            
										  																 
										  </div>
								    </div>
									</div>
                                      
                                    <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.address"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">							
                                                <textarea class="form-control"  id="manufactsecadd" autocomplete="off" placeholder="Enter Address"></textarea>                                              
										  <span id="manufactsecaddErr" style="color: Red; display: none;"><b><fmt:message key="label.addressErr" /> </b></span>                                            
										                                              
										  </div>
										</div>
									</div>
                                              <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mohregquest"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-4">
                                                <select class="form-select choose_yes" id="mohregquestsec" vv="3">
												<option value="0"><fmt:message key="label.select" /></option>
												<option value="Y"><fmt:message key="label.yes" /></option>
												<option value="N"><fmt:message key="label.no" /></option>
											</select>
											<span id="mohregquestsecErr" style="color: Red; display: none;"><b><fmt:message key="label.manufactexcrefErr" /> </b></span>                                            
										 
										  </div>
										</div>
									</div> 
                         <div id="manu_3" class="d-none">             
                               <div class="col-xs-12 col-lg-12 mb-2 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mohregno"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
							               <input type="text" class="form-control" id="mohregnosec" autocomplete="off"> 
                                              <span id="mohregnosecErr" style="color: Red; display: none;"><b><fmt:message key="label.mohregnoErr" /> </b></span>                                            
										  
                                              
										  </div>
										</div>
									</div>
                                 <div class="col-xs-12 col-lg-12 mb-2 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mohissdt"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
							
                                              <div id="date_i3" class="position-relative">        <input type="text" class="form-control datepicker_i3" autocomplete="off" id="mohissdtsec"></div><small class="text-danger">(dd/mm/yyyy)</small> 
                                           <span id="mohissdtsecErr" style="color: Red; display: none;"><b><fmt:message key="label.mohissdtErr" /> </b></span>                                            
										
										  </div>
										</div>
									</div>
                               <div class="col-xs-12 col-lg-12 mb-2 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mohrenewdt"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
							
                                           
                                           <div id="date_r3" class="position-relative">     <input type="text" class="form-control datepicker_r3" autocomplete="off" id="mohrenewdtsec"></div><small class="text-danger">(dd/mm/yyyy)</small> 
                                           <span id="mohrenewdtsecErr" style="color: Red; display: none;"><b><fmt:message key="label.mohrenewdtErr" /> </b></span>                                            
										  
                                              
										  </div>
										</div>
									</div>
                                            </div>
                                                   
<!--
                                            <div class="col-xs-12 col-lg-12 mb-3  text-end"> 
                                               <input type="button" class="btn btn-success" value="Save" >  </div>
-->
                                
                                        
                                        </div>
                                        
                                        <div class="col-sm-12 mb-1 text-end">
		                                    <a href="#" class="btn btn-success " onclick="saveMarketSingle('SP')" id="saveMarketSingleSPBTN">
		                                        <!-- <i class="bi bi-plus-lg m-0"></i> --> <fmt:message key="label.save" />
		                                        <span class="spinner-border spinner-border-sm d-none" role="status" aria-hidden="true"></span>
		                                    </a>
		                                    <br>
									  <span id="marketSecSucc" style="display:none" ><b><font color="green"><fmt:message key="label.recordSucc" /></font></b></span> 
									  <span id="marketSecdupl" style="display:none"><b><font color="red"><fmt:message key="label.filesmandatory" /></font></b></span>
									  <span id="marketSecFail" style="display:none"><b><font color="red"><fmt:message key="label.failed" /></font></b></span> 
                                       		<hr>
									       </div>                                  
                                       
                             
                               <div class="table-responsive">
                                <table width="100%" border="0" cellspacing="0" cellpadding="5" id="spTable" class="table table-bordered table-striped dataTable8">
                              <thead>
                                    <tr class="bg-gradient-primary">
                                       <tr class="bg-gradient-primary">
                                      <th scope="col"><fmt:message key="label.slno" /></th>
                                      <th scope="col"><fmt:message key="label.manufactpriname"/></th>
                                      <th scope="col"><fmt:message key="label.address"/></th>
                                      <th scope="col"><fmt:message key="label.haveregno"/></th>
                                      <th scope="col"><fmt:message key="edit"/></th>
                                      <th scope="col" style="display:none">slno</th>
                                      <th scope="col" style="display:none">addid</th>
                                      <th scope="col" style="display:none">regno</th>
                                      <th scope="col" style="display:none">issdt</th>
                                      <th scope="col" style="display:none">rendt</th>
                                       <th scope="col" style="display:none">regyesno</th>
                                    </tr>
                                  </thead>
                             <tbody>  
                                  </tbody>
                                </table>
                                </div>                       
                             </div>
                              </div>                    
                             </div> 
                             
                             
                             
                             
                             
                             
                          
                             
                             <div class="accordion-item">

												<h2 class="accordion-header " id="headingsub6">

													<button class="acc1 accordion-button bg-gradient-light card-title text-primary  collapsed" type="button" data-bs-toggle="collapse"

														data-bs-target="#collapsesub6" aria-expanded="false" aria-controls="collapsesub6">

												<fmt:message key="label.marnufactbatdetails"/>

													</button>

												</h2>

												<div id="collapsesub6" class="accordion-collapse collapse "

													aria-labelledby="headingsub6" data-bs-parent="#accordion_sub1">

													<div class="accordion-body "> 

                        <%--   <div class="col-xs-12 col-lg-6 mb-1 dotted rounded px-3 py-1 border-success">                                
                            <div class="card border">
									<div class="card-header bg-gradient-light" >
										<div class="card-title text-primary"><fmt:message key="label.marnufactbatdetails"/></div>
									</div>
									<div class="card-body ">	 --%>								
                                        <div class="row">
                                        
                                    <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.marnufactbatname"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
										   <input type="text" class="form-control d-none" id="manufactbatslno">
										   <input type="text" class="form-control d-none" id="manufactbatid">
                                            <input type="text" class="form-control" id="manufactbatname" maxlength="100" autocomplete="off">
                                           <span id="manufactbatnameErr" style="color: Red; display: none;"><b><fmt:message key="label.manufactprinameErr" /> </b></span>                                            
										  														 
										  </div>
								    </div>
									</div>
                                      
                                    <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.address"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">							
                                               <textarea class="form-control"  id="manufactbatadd" autocomplete="off" placeholder="Enter Address"></textarea>                                              
										       <span id="manufactbataddErr" style="color: Red; display: none;"><b><fmt:message key="label.addressErr" /> </b></span>                                            
										                                                  
										  </div>
										</div>
									</div>
                                              <div class="col-xs-12 col-lg-12 mb-3 ">							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mohregquest"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-4">
                                               <select class="form-select choose_yes" id="mohregquestbat" vv="4">
												<option value="0"><fmt:message key="label.select" /></option>
												<option value="Y"><fmt:message key="label.yes" /></option>
												<option value="N"><fmt:message key="label.no" /></option>
											</select>
											<span id="mohregquestbatErr" style="color: Red; display: none;"><b><fmt:message key="label.manufactexcrefErr" /> </b></span>                                            
										 
										  </div>
										</div>
									</div> 
                                  <div id="manu_4" class="d-none">       
                               <div class="col-xs-12 col-lg-12 mb-2 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mohregno"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
							                <input type="text" class="form-control" autocomplete="off" id="mohregnobat"> 
                                              <span id="mohregnobatErr" style="color: Red; display: none;"><b><fmt:message key="label.mohregnoErr" /> </b></span>                                            
										  
                                              
										  </div>
										</div>
									</div>
                                 <div class="col-xs-12 col-lg-12 mb-2 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mohissdt"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
							
                                              <div id="date_i4" class="position-relative">        <input type="text"  class="form-control datepicker_i4" autocomplete="off" id="mohissdtbat"></div><small class="text-danger">(dd/mm/yyyy)</small> 
                                           <span id="mohissdtbatErr" style="color: Red; display: none;"><b><fmt:message key="label.mohissdtErr" /> </b></span>                                            
										 
										  </div>
										</div>
									</div>
                               <div class="col-xs-12 col-lg-12 mb-2 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.mohrenewdt"/>:<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
							
                                             <div id="date_r4" class="position-relative">     <input type="text" class="form-control datepicker_r4"  autocomplete="off" id="mohrenewdtbat"></div><small class="text-danger">(dd/mm/yyyy)</small> 
                                           <span id="mohrenewdtbatErr" style="color: Red; display: none;"><b><fmt:message key="label.mohrenewdtErr" /> </b></span>                                            
										  
										  </div>
										</div>
									</div>
                                            </div>
                                                   
<!--
                                            <div class="col-xs-12 col-lg-12 mb-3  text-end"> 
                                               <input type="button" class="btn btn-success" value="Save" >  </div>
-->
                                
                                        
                                        </div>  
                                        <div class="text-end col-sm-12 mb-1">
                                    	<a class="btn btn-success " onclick="saveMarketSingle('BR')" id="saveMarketSingleBRBTN">
                                        	<!-- <i class="bi bi-plus-lg m-0"></i> --><fmt:message key="label.save" />
                                        	<span class="spinner-border spinner-border-sm d-none" role="status" aria-hidden="true"></span>
                                    	</a>
                                    	<br>
                                    	 <span id="marketBatSucc" style="display:none" ><b><font color="green"><fmt:message key="label.recordSucc" /></font></b></span> 
									  <span id="marketBatdupl" style="display:none"><b><font color="red"><fmt:message key="label.filesmandatory" /></font></b></span>
									  <span id="marketBatFail" style="display:none"><b><font color="red"><fmt:message key="label.failed" /></font></b></span>
									      <hr>     	
							           </div> 
							           
                                                                     
                                        
                             <div class="table-responsive">
                                <table width="100%" border="0" cellspacing="0" cellpadding="5" id="brTable"class="table table-bordered table-striped dataTable8">
                              <thead>
                                    <tr class="bg-gradient-primary">
                                      <th scope="col"><fmt:message key="label.slno" /></th>
                                      <th scope="col"><fmt:message key="label.marnufactbatname"/></th>
                                      <th scope="col"><fmt:message key="label.address"/></th>
                                      <th scope="col"><fmt:message key="label.haveregno"/></th>
                                      <th scope="col"><fmt:message key="edit"/></th>
                                      <th scope="col" style="display:none">slno</th>
                                      <th scope="col" style="display:none">addid</th>
                                      <th scope="col" style="display:none">regno</th>
                                      <th scope="col" style="display:none">issdt</th>
                                      <th scope="col" style="display:none">rendt</th>
                                       <th scope="col" style="display:none">regyesno</th>
                                   </tr>
                                  </thead>
                                  <tbody>  
                                  </tbody>
                                </table>
                                </div>  
                                </div>  
                                                       
                             </div>                      
                             </div>
    <!-- sub accordian -->                  
                             </div>
                             </div>  

                                            <div class="col-xs-12 col-lg-12 mb-0  text-center">
                                              
                                              <!-- <input type="button" class="btn btn-success" value="Save" id="savemarketBTN" onclick="saveMarketDtl()">  -->  
                                               <!-- <input type="button" class="btn btn-danger" value="Clear"  id="clearmarketBTN"onclick="clearMarketDtl()">  -->
                                               <span id="marketSucc"  style="display:none"><b><font color="green"><fmt:message key="label.recordSucc" /></font></b></span> 
										       <span id="marketdupl" style="display:none"><b><font color="red"><fmt:message key="label.filesmandatory" /></font></b></span>
										       <span id="marketFail" style="display:none"><b><font color="red"><fmt:message key="label.failed" /></font></b></span> 
                                               
                                               </div>




                                                            
                                                                                                
<!--                                                         <h6 class="text-orange mb-2"><u>Active Ingredient Manufacturer</u></h6>    -->
     
                                    
                                      
                                                            
                                                            
                                  
                                                            
                                            
													
														</div>
														<!-- Row end -->
													</div>
												</div>
											</div>

                   
                                            	<div class="accordion-item">
												<h2 class="accordion-header" id="headingFive">
													<button class="acc1 accordion-button collapsed card-title text-white" type="button" data-bs-toggle="collapse"
														data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
													<fmt:message key="label.declarations" />
													</button>
												</h2>
												<div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive"
													data-bs-parent="#accordionExample2">
													<div class="accordion-body">
														<div class="row gx-3">
													  <div class="col-xs-12 col-lg-9 mb-3 ">
							 <div class="card border">
									<div class="card-header bg-gradient-light py-1" >
										<div class="card-title text-primary"><fmt:message key="label.declanimalsource"/></div>
									</div>
									<div class="card-body ">
									<div class="col-xs-12 col-lg-9 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-6 col-md-6"><fmt:message key="label.declanimalsource"/>  :</label>
										  <div class="col-sm-6">
								
											<input class="form-check-input check_style" type="checkbox"  value="" id="animalSourY" >
											 
									
										  </div>
										</div>
									</div>
									</div>
									</div>
							 <div class="card border">
									<div class="card-header bg-gradient-light py-1" >
										<div class="card-title text-primary"><fmt:message key="label.invoicingdtls"/></div>
									</div>
									<div class="card-body ">
							 <div class="row gx-3">     
                                                         <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"> <fmt:message key="label.invoicingname"/> :</label>
										  <div class="col-sm-8">
										   <input type="text" class="form-control d-none" id="invoicingid"> 
                                           <input type="text" class="form-control" autocomplete="off" id="invoicingname"> 
																 
										  </div>
										</div>
									</div>
                                          
                                             <div class="col-xs-12 col-lg-6 mb-3 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.address"/> :</label>
										  <div class="col-sm-8">
							
                                              <textarea class="form-control" id="invoicingadd" autocomplete="off" placeholder="Enter Address"></textarea>
                                              <span id="invoicingaddErr" style="color: Red; display: none;"><b><fmt:message key="label.addressErr" /> </b></span>
										  </div>
										</div>
									</div>
                                       <div class="col-xs-12 col-lg-6 mb-2 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.uploadcert"/> :</label>
										  <div class="col-sm-8">
							   
										  <div class="input-group">
										   <input id="invFile" style="display:none"  type="text" class="form-control"   >
										   <input id="invFileid" style="display:none"  type="text" class="form-control"   >
										   <input id="invFiledoc" style="display:none"  type="text" class="form-control"   >
										  
									<input name="myFile" type="file"  id="ICappdocFile" class="form-control" onchange="selectFile('IC')" onclick="changeMsg('IC')" >
                                   <button class="btn btn-danger rounded mx-1" type="button" id="ICFILEUPLOAD" title="upload" style="padding-bottom: 4px;" onclick="saveUpload('IC','uploadFile')">
									<i class="bi bi-upload"></i> 
									</button>
									<button class="btn btn-danger rounded mx-1" type="button" id="ICFILEREUPLOAD" title="reupload" style="padding-bottom: 4px;" onclick="saveUpload('IC','reupload')">
									<i class="bi bi-upload"></i> 
									</button>
									&nbsp;
									 <button class="btn btn-primary rounded" type="button" id="ICFILEDOWNLOAD" title="Download" onclick="downloadApplicationFile('IC')" style="padding-bottom: 4px;" >
									<i class="bi bi-download"></i> 
									</button>  </div>
                                    <span id="ICuploadErr" style="display:none" ><b><font color="red"><fmt:message key="label.uploadErr" /></font></b></span>
									<span id="ICdocTypeSuccessErr" style="display:none" ><b><font color="red"><fmt:message key="label.docTypeSuccess" /></font></b></span>									
									<span id="ICdocTypeNofileErr" style="display:none"><b><font color="red"><fmt:message key="label.docTypeNofile" /></font></b></span>
									<span id="ICdoctypeFileName" style="display:none"><b><font color="red"><fmt:message key="label.doctypeFileName" /></font></b></span>
										  
										  </div>
										</div>
									</div>                       
                                                  </div>  
							</div>
									</div>
									
									<div class="card border">
									<div class="card-header bg-gradient-light py-1" >
										<div class="card-title text-primary"><fmt:message key="label.pricecert"/></div>
									</div>
									<div class="card-body ">
										<div class="col-xs-12 col-lg-6 mb-2 ">
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.pricecert"/>  :</label>
										  <div class="col-sm-8">
								           <input class="form-check-input check_style" type="checkbox"  value="" id="pricecertY" >
											 
									
										  </div>
										</div>
										</div>
										  <div class="col-xs-12 col-lg-6 mb-2 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.uploadcert"/> :<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
							   
										  <div class="input-group">
										   <input id="priceFile" style="display:none"  type="text" class="form-control"   >
										   <input id="priceFileid" style="display:none"  type="text" class="form-control"   >
										   <input id="priceFiledoc" style="display:none"  type="text" class="form-control"   >
										  
									<input name="myFile" type="file"  id="PCappdocFile" class="form-control" onchange="selectFile('PC')" onclick="changeMsg('PC')" >
                                  <button class="btn btn-danger rounded mx-1" type="button" id="PCFILEUPLOAD" title="upload" style="padding-bottom: 4px;" onclick="saveUpload('PC','uploadFile')">
									<i class="bi bi-upload"></i> 
									</button>
									<button class="btn btn-danger rounded mx-1" type="button" id="PCFILEREUPLOAD" title="reupload" style="padding-bottom: 4px;" onclick="saveUpload('PC','reupload')">
									<i class="bi bi-upload"></i> 
									</button>
									&nbsp; 
									 <button class="btn btn-primary rounded" type="button" id="PCFILEDOWNLOAD" title="Download" onclick="downloadApplicationFile('PC')" style="padding-bottom: 4px;" >
									<i class="bi bi-download"></i> 
									</button> </div>
                                    <span id="PCuploadErr" style="display:none" ><b><font color="red"><fmt:message key="label.uploadErr" /></font></b></span>
									<span id="PCdocTypeSuccessErr" style="display:none" ><b><font color="red"><fmt:message key="label.docTypeSuccess" /></font></b></span>									
									<span id="PCdocTypeNofileErr" style="display:none"><b><font color="red"><fmt:message key="label.docTypeNofile" /></font></b></span>
									<span id="PCdoctypeFileName" style="display:none"><b><font color="red"><fmt:message key="label.doctypeFileName" /></font></b></span>
										  
										  </div>
										</div>
									</div> 
										
										
										</div>
									</div> 
									
										<div class="card border">
									<div class="card-header bg-gradient-light py-1" >
										<div class="card-title text-primary"><fmt:message key="label.ctdModule"/></div>
									</div>
									<div class="card-body "> 
										
										   <div class="col-xs-12 col-lg-12 mb-3 h-separator ">
							
                                            <div class="form-group row">
                                              <label class="form-label col-sm-2 col-md-2"><fmt:message key="label.module1"/> :</label>
                                              <div class="col-sm-6">								
                                                <input class="form-check-input check_style" type="checkbox"  value="" id="module1Y" >
                                                  </div>
                                            </div>
									</div>
                                   <div class="col-xs-12 col-lg-12 mb-3 h-separator">
							
                                            <div class="form-group row">
                                              <label class="form-label col-sm-2 col-md-2"><fmt:message key="label.module2"/> :</label>
                                              <div class="col-sm-6">								
                                                <input class="form-check-input check_style" type="checkbox"  value="" id="module2Y" >
                                                </div>
                                            </div>
									</div>
                                      <div class="col-xs-12 col-lg-12 mb-3 h-separator">
							
                                            <div class="form-group row">
                                              <label class="form-label col-sm-2 col-md-2"><fmt:message key="label.module3"/>  :</label>
                                              <div class="col-sm-6">								
                                                <input class="form-check-input check_style" type="checkbox"  value="" id="module3Y" >
                                                 </div>
                                            </div>
									</div>
                                      <div class="col-xs-12 col-lg-12 mb-3 h-separator">
							
                                            <div class="form-group row">
                                              <label class="form-label col-sm-2 col-md-2"><fmt:message key="label.module4"/>  :</label>
                                              <div class="col-sm-6">								
                                                <input class="form-check-input check_style" type="checkbox"  value="" id="module4Y" >
                                                 </div>
                                            </div>
									</div>
                                    <div class="col-xs-12 col-lg-12 mb-3 h-separator">
							
                                            <div class="form-group row">
                                              <label class="form-label col-sm-2 col-md-2"><fmt:message key="label.module5"/> :</label>
                                              <div class="col-sm-6">								
                                                <input class="form-check-input check_style" type="checkbox"  value="" id="module5Y" >
                                                </div>
                                            </div>
									</div>
										</div>
									</div> 
									
										<div class="card border">
									<div class="card-header bg-gradient-light py-1" >
										<div class="card-title text-primary"><fmt:message key="label.finalDeclaration"/></div>
									</div>
									<div class="card-body "> 
										   <div class="col-xs-12 col-lg-12 ">
                                          <h6 class="text-danger mb-2"><u><fmt:message key="label.declaration"/></u> <span class="text-danger fw-bold">*</span></h6>
							
                                            <input class="form-check-input check_style" type="checkbox"  value="" id="finalDeclaration" > 
											<label class="form-label text-danger mx-1" for=""><fmt:message key="label.finaldeclarationnotes"/></label>
                                            
                                        </div>
                                        <span id="finalDeclarationErr" style="color: Red; display: none;"><b><fmt:message key="label.finalDeclarationErr" /> </b></span>                                            
										  
										</div>
									</div> 	
										
									
                                                                                     
                                                  
                                                     <div class="col-xs-12  mb-3  text-end"> 
                                                 
                                               <input type="button" class="btn btn-success" value="Save" id="editAppDtlbtn"  onclick="editAppDtl()">  <input type="button"  id="clearAppDtlbtn" class="btn btn-danger" value="Clear" onclick="clearDeclarationDtl()">
                                             <br>
                                                <span id="editSucc"  style="display:none"><b><font color="green"><fmt:message key="label.recordSucc" /></font></b></span> 
										       <span id="editdupl" style="display:none"><b><font color="red"><fmt:message key="label.filesmandatory" /></font></b></span>
										       <span id="editFail" style="display:none"><b><font color="red"><fmt:message key="label.failed" /></font></b></span> 
                                                </div>
                                                 </div>            
														</div>
													</div>
												</div>
											</div>
                                            
                                            
                                             
                                           
                                                    <div class="accordion-item">
												<h2 class="accordion-header" id="headingSix">
													<button class="acc1 accordion-button collapsed card-title text-white bg-rose" type="button" data-bs-toggle="collapse"
														data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
														<fmt:message key="label.ectdfile" />
													</button>
												</h2>
												<div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix"
													data-bs-parent="#accordionExample2">
													<div class="accordion-body">
                                                        <div class="row gx-3 ">
                                              <div class="col-xs-12 col-lg-9 mb-2 ">
							
										<div class="form-group row">
										  <label class="form-label col-sm-4 col-md-3"><fmt:message key="label.ECTDupload" /> :<span class="text-danger fw-bold">*</span></label>
										  <div class="col-sm-8">
							
                                            <input name="myFile" type="file"  id="ECTDappdocFile" class="form-control" onchange="selectFile('ECTD')" onclick="changeMsg('ECTD')" >
                                           
                                            <span id="ECTDuploadErr" style="display:none" ><b><font color="red"><fmt:message key="label.uploadErr" /></font></b></span>
									        <span id="ECTDdocTypeSuccessErr" style="display:none" ><b><font color="red"><fmt:message key="label.docTypeSuccess" /></font></b></span>									
									        <span id="ECTDdocTypeNofileErr" style="display:none"><b><font color="red"><fmt:message key="label.docTypeNofile" /></font></b></span>
									        <span id="ECTDdoctypeFileName" style="display:none"><b><font color="red"><fmt:message key="label.doctypeFileName" /></font></b></span>
									  <div class="progress m-2" style="display:block" id="progressBarDiv">
                     <div  class="progress-bar progress-bar-striped progress-bar-animated bg-blue" role="progressbar" id="progressBar" style="width: 0%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">0%</div>
                     </div>
										  </div>
										</div>
									</div>
                         <!-- <div class="col-xs-12 col-lg-3 mb-3  text-end"><input type="button" class="btn btn-success" value="Upload">  <input type="button" class="btn btn-danger" value="Clear" > </div> -->
                                                            
                                                        </div>
                                                        
                                                         <div class="mb-3 text-center"><input type="button" id="saveectdBtn" class="btn btn-info" value="Submit" onclick="saveEctd('ECTD')"> 
                                                         <!-- <input type="button" class="btn btn-danger" id="clearectdBtn"  onclick="backbtn()" value="Back"> -->
					 
					</div>
					<div class="col-md-12 ">
<h5 class="text-danger mb-2" ><u>Disclamier :</u></h5>
 
                          <div class="text-center "><h3 class="text-danger blink ">Please don't close the browser until the file transfer is finish</h3>
<h4 class="text-purple mt-3">You will receive a confirmation email when you submit the file successfully... </h4></div>
 
                        </div> 
                                                              </div>
                                                          </div>
                                                              </div>
                                    
                                           
                                            
                            
					
					
                    
										</div>
									</div>
								</div>
                                
                                
       </div>
                               </div>
                           </div>
                           </div>
                    
                       <!-- </div> -->
	<!-- App Footer start -->
				<%@ include file="drugfooter.jsp" %>
				<!-- App footer end -->

			</div>
			<!-- Main container end -->

		</div>
		<!-- Page wrapper end -->

		<!-- *************
			************ Required JavaScript Files *************
		************* -->
		<!-- Required jQuery first, then Bootstrap Bundle JS -->
			<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/bootstrap.bundle.min.js"></script>
		<script src="assets/js/modernizr.js"></script>
		<script src="assets/js/moment.js"></script>
		<!-- *************
			************ Vendor Js Files *************
		************* -->

		<!-- Overlay Scroll JS -->
		<script src="assets/vendor/overlay-scroll/jquery.overlayScrollbars.min.js"></script>
		<script src="assets/vendor/overlay-scroll/custom-scrollbar.js"></script>
     <script src="assets/vendor/select2/select2.min.js"></script>
    
        <script src="assets/vendor/newsticker/newsTicker.min.js"></script>
		<script src="assets/vendor/newsticker/custom-newsTicker.js"></script>
	
		<!-- Date Range JS -->
		<script src="assets/vendor/daterange/daterange.js"></script>
		<script src="assets/vendor/daterange/custom-daterange.js"></script>
     <!-- Data Tables -->
		<script src="assets/vendor/datatables/dataTables.min.js"></script>
		<script src="assets/vendor/datatables/dataTables.bootstrap.min.js"></script>
		<script src="assets/vendor/datatables/custom/custom-datatables.js"></script>
	<!-- Main Js Required -->
		<script src="assets/js/main.js"></script>
		<script src="js/token.js"></script>
	    <script >
    
    
    $('input[type="checkbox"]').on('change', function() {
   $(this).siblings('input[type="checkbox"]').not(this).prop('checked', false);
});
    /*$('#actTable').DataTable({
        "dom": 'rtip',
        
"bInfo" : false,"searching": false,
  autoWidth: false,   
       columns: [
           { "width": "15%" },
           { "width": "85%" },
           
		 ], }); */
        	$(function(){
                 $('#ckh_sel1').select2({
                    dropdownParent: $('#select2-container1'),
                    width: '100%',
                 
                  });
                 $('#dosageform').select2({
                     dropdownParent: $('#select2-container1'),
                     width: '100%',
                  
                   });
                 $('#pharmaco').select2({
                     dropdownParent: $('#select2-container1'),
                     width: '100%',
                  
                   });
                 $('#pharmacosub').select2({
                     dropdownParent: $('#select2-container1'),
                     width: '100%',
                  
                   });
                 $('#route').select2({
                     dropdownParent: $('#select2-container1'),
                     width: '100%',
                  
                   });
                 $('#ckh_sel2').select2({
                    dropdownParent: $('#select2-container2'),
                    width: '100%',                   

                  });                
                	$('.datepicker5').daterangepicker({
                        autoUpdateInput: false,
                        singleDatePicker: true,
                        showDropdowns: true,                        			
                        locale: {
                    format: 'DD/MM/YYYY'
                  },
                        parentEl: "#revisiondtDiv",
               
                	  });
    
                	
                	$('#aimTable').DataTable({
                         "paging": false,
         		"bInfo" : false,"searching": false,
                   /*  autoWidth: false,   
                         columns: [
                             { "width": "7%" },
                             { "width": "15%" },
                             { "width": "10%" },
                             { "width": "35%" },
                             { "width": "15%" },
         				 ], */ });
                	
        
$('.datepicker5').on('apply.daterangepicker', function(ev, picker) {
    /*alert(picker);
    console.log($(this).val());*/
    $(this).val(picker.startDate.format('DD/MM/YYYY'));
//  console.log($(this).val());
//console.log(picker.startDate.format('YYYY-MM-DD'));
//console.log(picker.endDate.format('YYYY-MM-DD'));
           // this 
});
        for (var $k=1;$k<5;$k++){
            $('.datepicker_i'+$k).daterangepicker({
                autoUpdateInput: false,
                singleDatePicker: true,
                showDropdowns: true,                        			
                  locale: {
                    format: 'DD/MM/YYYY'
                  },
                        parentEl: "#date_i"+$k,
               
                	  });
                      
         $('.datepicker_r'+$k).daterangepicker({
                autoUpdateInput: false,
                singleDatePicker: true,
                showDropdowns: true,                        			
                  locale: {
                    format: 'DD/MM/YYYY'
                  },
                        parentEl: "#date_r"+$k,
               
                	  });
            
            
            $('.datepicker_i'+$k).on('apply.daterangepicker', function(ev, picker) {
                    $(this).val(picker.startDate.format('DD/MM/YYYY'));
                });
            
             $('.datepicker_r'+$k).on('apply.daterangepicker', function(ev, picker) {
                    $(this).val(picker.startDate.format('DD/MM/YYYY'));
                });
              }
        
                
                
			$('#appcat').change(function(e) {

					var id2 = $(this, ':selected').val();
					// alert(id2);
					if (id2 == "B") {
						$("#file_app").removeClass("d-none");
					} else {
						$("#file_app").addClass("d-none");
					}
				});
				$('#apptrack').change(function(e) {
					var id3 = $(this, ':selected').val();
					// alert(id2);
					if (id3 == "F") {
						$("#file_app1").removeClass("d-none");
					} else {
						$("#file_app1").addClass("d-none");
					}
				});
							$('.choose_yes').change(function(e) {
								var $new_id = $(this).attr("vv");
								  //alert($new_id);
								//$sp = $new_id.split("_");
								var $div_id = "#manu_" + $new_id;
								// alert($div_id);
								var val4 = $(this, ':selected').val();
								if (val4 == "Y") {
									$($div_id).removeClass("d-none");
								} else {
									$($div_id).addClass("d-none");
								}
							});
						});

						var locc = window.location;
						var context = "${pageContext.request.contextPath}"
						var lang = '<%= response.getLocale().getLanguage() %>';
			var warnamefr  = "${warnamefr}";
			var loginst=sessionStorage.getItem("loginstatus");
			var loginregid=sessionStorage.getItem("loginRegId");	
			var appcatVar=document.getElementById('appcat');
			var appsubcatVar=document.getElementById('appsubcat');
			var apptrackVar=document.getElementById('apptrack');
			var appRegIdVar=document.getElementById('appRegId');
			var appcatFileVar=document.getElementById('appcatFile');
			var appcatFileidVar=document.getElementById('appcatFileid');
			var appcatFiledocVar=document.getElementById('appcatFiledoc');
			var apprefnoVar=document.getElementById('apprefno');
			var appstatusVar=document.getElementById('appstatus');
			var apptrackFileVar=document.getElementById('apptrackFile');
			var apptrackFileidVar=document.getElementById('apptrackFileid');
			var apptrackFiledocVar=document.getElementById('apptrackFiledoc');
			
			
			var appproductidVar=document.getElementById('appproductid');
			var productidVar=document.getElementById('productid');
			var producttrdnameVar=document.getElementById('producttrdname');
			var activeingredientVar=document.getElementById('activeingredient');
			var activeingredienttxtVar=document.getElementById('activeingredienttxt');
			var activeingredienttxtidVar=document.getElementById('activeingredienttxtid');
			var strengthVar=document.getElementById('strength');
			var dosageformVar=document.getElementById('dosageform');
			var packVar=document.getElementById('pack');
			var packmaterialVar=document.getElementById('packmaterial');
			var routeVar=document.getElementById('route');
			var shelflifeVar=document.getElementById('shelflife');
			var shelflifefirstVar=document.getElementById('shelflifefirst');
			var shelflifereconVar=document.getElementById('shelfliferecon');
			var storageconditionVar=document.getElementById('storagecondition');
			var pharmacoVar=document.getElementById('pharmaco');
			var pharmacosubVar=document.getElementById('pharmacosub');
			var atccdVar=document.getElementById('atccd');
			var therapeuticVar=document.getElementById('therapeutic');
			var revisiondtVar=document.getElementById('revisiondt');
			var shelflifePrdVar=document.getElementById('shelflifePrd');
			var shelflifefirstPrdVar=document.getElementById('shelflifefirstPrd');
			var shelflifereconPrdVar=document.getElementById('shelflifereconPrd');
			
			var marketslnoVar=document.getElementById('marketslno');
			var marketidVar=document.getElementById('marketid');
			var marketnameVar=document.getElementById('marketname');
			var marketcountryVar=document.getElementById('marketcountry');
			var marketaddressVar=document.getElementById('marketaddress');
			
			var manufactactslnoVar=document.getElementById('manufactactslno');
			var manufactactidVar=document.getElementById('manufactactid');
			var manufactactnameVar=document.getElementById('manufactactname');
			var manufactactcountryVar=document.getElementById('manufactactcountry');
			var manufactactaddressVar=document.getElementById('manufactactaddress');
			
			var manufactexcslnoVar=document.getElementById('manufactexcslno');
			var manufactexcidVar=document.getElementById('manufactexcid');
			var manufactexcnameVar=document.getElementById('manufactexcname');
			var manufactexccountryVar=document.getElementById('manufactexccountry');
			var manufactexcaddressVar=document.getElementById('manufactexcaddress');
			var manufactexcrefVar=document.getElementById('manufactexcref');
			
			var manufactfinishslnoVar=document.getElementById('manufactfinishslno');
			var manufactfinishidVar=document.getElementById('manufactfinishid');
		    var manufactfinishnameVar=document.getElementById('manufactfinishname');
			var manufactfinishaddVar=document.getElementById('manufactfinishadd');
			var mohregquestfinishVar=document.getElementById('mohregquestfinish');
			var mohrenewdtfinishVar=document.getElementById('mohrenewdtfinish');
			var mohissdtfinishVar=document.getElementById('mohissdtfinish');
			var mohregnofinishVar=document.getElementById('mohregnofinish');
			
			
			    var manufactprislnoVar=document.getElementById('manufactprislno')
			    var manufactpriidVar=document.getElementById('manufactpriid');
			    var manufactprinameVar=document.getElementById('manufactpriname');
				var manufactpriaddVar=document.getElementById('manufactpriadd');
				var mohregquestpriVar=document.getElementById('mohregquestpri');
				var mohrenewdtpriVar=document.getElementById('mohrenewdtpri');
				var mohissdtpriVar=document.getElementById('mohissdtpri');
				var mohregnopriVar=document.getElementById('mohregnopri');
				
				var manufactsecslnoVar=document.getElementById('manufactsecslno');
				var manufactsecidVar=document.getElementById('manufactsecid');
				var manufactsecnameVar=document.getElementById('manufactsecname');
				var manufactsecaddVar=document.getElementById('manufactsecadd');
				var mohregquestsecVar=document.getElementById('mohregquestsec');
				var mohrenewdtsecVar=document.getElementById('mohrenewdtsec');
				var mohissdtsecVar=document.getElementById('mohissdtsec');
				var mohregnosecVar=document.getElementById('mohregnosec');
				var gmpFileVar=document.getElementById('gmpFile');
				var gmpFileidVar=document.getElementById('gmpFileid');
				var gmpFiledocVar=document.getElementById('gmpFiledoc');
				
				
				var manufactbatslnoVar=document.getElementById('manufactbatslno');
				var manufactbatidVar=document.getElementById('manufactbatid');
				var manufactbatnameVar=document.getElementById('manufactbatname');
				var manufactbataddVar=document.getElementById('manufactbatadd');
				var mohregquestbatVar=document.getElementById('mohregquestbat');
				var mohrenewdtbatVar=document.getElementById('mohrenewdtbat');
				var mohissdtbatVar=document.getElementById('mohissdtbat');
				var mohregnobatVar=document.getElementById('mohregnobat');
				
				var invoicingidVar=document.getElementById('invoicingid');
				var invoicingnameVar=document.getElementById('invoicingname');
				var invFileVar=document.getElementById('invFile');
				var invFileidVar=document.getElementById('invFileid');
				var invFiledocVar=document.getElementById('invFiledoc');
				var invoicingaddVar=document.getElementById('invoicingadd');
				var animalSourYVar=document.getElementById('animalSourY');
				var pricecertYVar=document.getElementById('pricecertY');
				var priceFileVar=document.getElementById('priceFile');
				var priceFileidVar=document.getElementById('priceFileid');
				var priceFiledocVar=document.getElementById('priceFiledoc');
				var module1YVar=document.getElementById('module1Y');
				var module2YVar=document.getElementById('module2Y');
				var module3YVar=document.getElementById('module3Y');
				var module4YVar=document.getElementById('module4Y');
				var module5YVar=document.getElementById('module5Y');
				var finalDeclarationVar=document.getElementById('finalDeclaration');
				
			  
				
				var dashboardAppregVar=sessionStorage.getItem("dashboardAppreg");
				var dashboardApprefVar=sessionStorage.getItem("dashboardAppref");
			
				 
			
			
			 $(document).ready(function(){
				 clearForm();
				 /*if(loginst !='Y')
		        	{
					  window.location.href = context	+ "/message";
		        	}*/
		        	 
				 
				// clearPage();
				//alert(dashboardAppregVar)
				//if(dashboardAppregVar!=null){
				 $("#appRegId").val(dashboardAppregVar);
				//}
				//if(dashboardApprefVar!=null){
				 $("#apprefno").val(dashboardApprefVar);
				//}
				 loadAgentName('ProdCat','N',"na");
				 loadAgentName('TrackType','N',"na");
				// loadAgentName('ProductList','N',"na");
				 loadAgentName('DosageForm','N',"na");
				 loadAgentName('ActiveIngredient','N',"na");
				 loadAgentName('Route','N',"na");
				 loadAgentName('Country','N',"na");
				 loadAgentName('class','N',"na");
				 loadAgentName('Period','na',"na");
				 userDetails();
				 listDoc();
				 getApplicationDtl();
				 getMarketSingle("BR");
				 getMarketSingle("SP");
				 getMarketSingle("PP");
				 getMarketSingle("EM");
				 getMarketSingle("AIM");
				 getMarketSingle("FPM");
				 
				 
				
				
				 if(appRegIdVar.value ==0){
					 $("#FTDUPLOAD").hide();
					 $("#FTDDOWNLOAD").hide();
					 $("#saveAppBTN").show();
					 $("#saveProductBTN").hide();
					 $("#clearProductBTN").hide();
					 }
				 else{
					 $("#FTDUPLOAD").show();
					 $("#FTDDOWNLOAD").show();
					 $("#saveAppBTN").hide();
					 $("#saveProductBTN").show();
					 $("#clearProductBTN").show();
				 }
				 //alert(productidVar.value)
				 tocheckUploadStatus('HAA');
				 tocheckUploadStatus('IC');
				 tocheckUploadStatus('PC');
				 if(productidVar.value ==0){
					// $("#HAAUPLOAD").hide();
					// $("#HAADOWNLOAD").hide(); 
					 marketButtonDisable();
				 }
				 else{
					// $("#HAAUPLOAD").show();
					// $("#HAADOWNLOAD").show(); 
					 marketButtonEnable();
				 }
				 
				});
			
			 
			 
			  function loadAgentName(categ,apptp,appsubtp){
				  getToken();
				  tkn = sessionStorage.getItem("tkn");
				  //alert("categ"+categ);
				 // alert("apptp"+apptp);
				 // alert("appsubtp"+appsubtp);
				  
				  if(categ=='ProdSubCat'){
					  apptp	= appcatVar.value; 
					 //alert( apptp)
					  $('#appsubcat').empty();
					  $('#appsubcat').append($('<option>', {
						                	    value: "0",
						                	   text:'<fmt:message key="label.select" />'
						                	}));
				  }
				  if(categ=='subclass'){
					  apptp	= pharmacoVar.value; 
					  $('#pharmacosub').empty();
					  $('#pharmacosub').append($('<option>', {
						                	    value: "0",
						                	   text:'<fmt:message key="label.select" />'
						                	}));
				  }
				 var myJSONObjapp=	JSON.stringify({
    			      "category": categ,
					  "type": apptp,
					  "subType":"na"
					 });	
				  
					$.ajax({
								type : "POST",
								url : warnamefr+"/Pharmaceutical?method=getPharmaceuticalListValues",
								contentType : "application/json",
								crossDomain : true,
								headers : {
									Authorization : 'Bearer ' + tkn
								},
								data:myJSONObjapp,
								async: false,
								success : function(response) {
									var data = JSON.parse(response);
									$.each(data.elements,function(i, item) {
										 if(lang == 'en'){	
												var div_data="<option  value="+item.id+">"+item.descEn+"</option>";
											}
											else{
												var div_data="<option  value="+item.id+">"+item.descAr+"</option>";
											}
										 if(categ=='ProdCat'){
										    $(div_data).appendTo('#appcat');	
										  }
										 if(categ=='ProdSubCat'){
											    $(div_data).appendTo('#appsubcat');	
											  }
										 if(categ=='TrackType'){
											    $(div_data).appendTo('#apptrack');	
											  }
										 if(categ=='DosageForm'){
											    $(div_data).appendTo('#dosageform');	
											  }
										 if(categ=='ActiveIngredient'){
											    $(div_data).appendTo('#activeingredient');	
											  }
										 if(categ=='Route'){
											    $(div_data).appendTo('#route');	
											  }
										 if(categ=='class'){
											    $(div_data).appendTo('#pharmaco');	
											  }
										 if(categ=='subclass'){
											    $(div_data).appendTo('#pharmacosub');	
											  }
										 if(categ=='Country'){
											    $(div_data).appendTo('#marketcountry');	
											    $(div_data).appendTo('#manufactactcountry');
											    $(div_data).appendTo('#manufactexccountry');	
											  }
										 if(categ=='Period'){
											    $(div_data).appendTo('#shelflifePrd');	
											    $(div_data).appendTo('#shelflifefirstPrd');
											    $(div_data).appendTo('#shelflifereconPrd');	
											  }
										});	
									
								},
								error : function(jqXHR, textStatus, errorThrown) {
									if (jqXHR.status == "401") {
										sessionOut();
									}
								}
							});
				}
			  
			  
			  
        
			  $("#appcat").change(function() {
				  $('#appsubcatErr').hide();
					if ( $(this).val() != null ||  $(this).val() != '0') {
						document.getElementById( 'HAAappdocFile').value = null;
				        $('#appcatErr').hide();
						loadAgentName('ProdSubCat',"","na");
						/*if($(this).val()=="B"){
						  tocheckUploadStatus("HAA");
						}*/
				}
					else{
						$('#appcatErr').show();
						
					}
				});
			  
			  $("#appsubcat").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#appsubcatErr').hide();
						}
					else{
						$('#appsubcatErr').show();
						
					}
				});
			  $("#apptrack").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						document.getElementById( 'FTDappdocFile').value = null;
						
						$('#apptrackErr').hide();
						}
					else{
						$('#apptrackErr').show();
						
					}
				});
			  
			  function clearAppdtl(){
				    $('#apptrack').val("0");
					$('#apptrackFile').val("");
					$('#apptrackFileid').val("");
					$('#apptrackFiledoc').val("");
					$('#apprefno').val("");
					$('#appstatus').val("");
				  
					$('#apptrackErr').hide();
					
					
					$("#uploadSucc").hide();
			     	$("#uploaddupl").hide();
			        $("#uploadFail").hide();
			        document.getElementById( 'FTDappdocFile').value = null;
			  }
			  
			  function validateAppdtl(){
				    var res = true;	
					
					if (apptrackVar.value == null || apptrackVar.value =='0') {
						$('#apptrackErr').show();
						res = false;
					}
					
					
					if (apptrackVar.value == "F") {
						var docType1 ='FTDappdoc';
						var fn1 = '#' + docType1 + 'File';
						var fileid1 = docType1 + 'File';
						var files1 = $(fn1)[0].files;
						if(files1.length == 0  ){
							$("#uploaddupl").show();
							res = false;
			               }
				    }
					
					return res;
			  }
			 
			  function saveAppDtl(idval1,idval2){
				 // alert(idval1);
				  //var $v=idval;
				 getToken();
				 tkn = sessionStorage.getItem("tkn");
				    $("#uploadSucc").hide();
			     	$("#uploaddupl").hide();
			        $("#uploadFail").hide();
		       var res=  validateAppdtl();  
		      if(!res){
		    	 // collapseopen(idval1);
		    	  
		      }
		      if(appRegIdVar.value != "0"){
		    	  //collapseopen(idval2);
		      }
		       if(res && appRegIdVar.value == "0" ){
		    	   var fd = new FormData();
		    	   var myJSONObjapp=	JSON.stringify({
     			          "appType": "P",
						  "appSubType":"N",
						  "trackType":apptrackVar.value,
						  "userRegId":loginregid
						 });	
						 
		    	  
				   fd.append('jsonString',myJSONObjapp);
				
				
					
					    var docType1 ='FTDappdoc';
						var fn1 = '#' + docType1 + 'File';
						var fileid1 = docType1 + 'File';
						var files1 = $(fn1)[0].files;
						if(files1.length > 0  ){
							  // var fileName = $(fn).val().replace(/.*(\/|\\)/, '');
			                   var extnsion1=((document.getElementById(fileid1).value).split('.').pop());
			                   fd.append('multipleFiles', files1[0],"FTD"+"."+extnsion1);
			               }
					/* if(	files.length ==0 && files1.length== 0){
						fd.append('multipleFilesneed', "no");
					}*/  
			$("#saveAppBTN span").removeClass("d-none")	;
            $.ajax({
     			 type : "POST",
                                  url :warnamefr+"/getpharmaceuticalUpload?method=saveApplication",
                                   data : fd,
                                   enctype:'multipart/form-data',
                                   timeout : 180000,
                                   processData: false,
                                   contentType: false,
                                   cache:false,
                                   headers : {
       								Authorization : 'Bearer ' + tkn
       							},
     			success : function(response) {
     				$("#saveAppBTN span").addClass("d-none")	;
     				//$('#spinDiv').hide();  
     				//$("#savefileBtn").prop("disabled", false);
     			    var data ="";
     			    data =	JSON.parse(response);
     			     if (data.code =="0"){
     			    	 $.each(data.elements, function(i, item) {
     			    		   sessionStorage.setItem("dashboardAppreg", item.appRegId);
     	     			       $("#appRegId").val(item.appRegId);
     	     			       $("#saveProductBTN").show();
     						   $("#clearProductBTN").show();	
     	     			 });
				         $("#uploadSucc").show();


     			      }
					     else{ 
							  // alert("in")
							   $("#uploadFail").show();	
                        }
					    
     			 
           },
			 
     	error : function(jqXHR, textStatus, errorThrown) {
     		$("#saveAppBTN span").addClass("d-none")	;
     		//alert("errorThrown"+errorThrown);
     		//$("#savefileBtn").prop("disabled", false);
     		//$('#spinDiv').hide();  
     		if (jqXHR.status == "401") {
     			sessionOut();
     		}
     		else{
     			$("#uploadFail").show();
     			// $('#progressBar').width( '0%').html( '0%');
     			//$('#progressBarDiv').hide(); 
     		}
     	 }	
            });
		       }
			  }
			  
			  function userDetails(){
				    getToken();
					tkn = sessionStorage.getItem("tkn");
				   
				   
					 $.ajax({
							type : "POST",
							url : warnamefr+"/Dashboard?method=getUserDtls",
						    contentType : "application/json",
							crossDomain : true,
							headers : {
								Authorization : 'Bearer ' + tkn
							},
							data:"na",
							success : function(response) {
								var data ="";	
					 			    data=JSON.parse(response);
					 			   $.each(data.elements, function(i, item) {
					 				 $("#agentname").val(item.agentName);
					 				 $("#authRep").val(item.authorisedRep);
					 				 $("#eml").val(item.email);
					 				 $("#mbl").val(item.mobileNo);
					 				 
					 			   });
					 			   // console.log(data+'data');
							
									
							},
							error : function(jqXHR, textStatus, errorThrown) {
								if (jqXHR.status == "401") {
									sessionOut();
								}
							}
					       });
				}
			  
			  
			  
			  function listDoc(){
				    getToken();
					tkn = sessionStorage.getItem("tkn");
				   
				   
					 $.ajax({
							type : "POST",
							url : warnamefr+"/Dashboard?method=listUserUploadDoc",
						    contentType : "application/json",
							crossDomain : true,
							headers : {
								Authorization : 'Bearer ' + tkn
							},
							data:"na",
							success : function(response) {
								var data ="",trHTML="",j=1;	
					 			    data=JSON.parse(response);
					 		    $('#docTable tbody tr').remove();
					 			$.each(data.elements, function(i, item) {
					 				var trHTML="";
					 				var  docnm="",editDataVar="",buttonnm="",displayUpload="",displaydownload="";
					 					if (lang== "en")	{
											docnm     = item.docNameEn;
										 }
										if (lang== "ar")  { 
											 docnm  = item.docNameAr;
										}
										//if(item.reuploadFlag =='Y'){
										/* 	buttonnm="upload";
											editDataVar='onclick=editData(this,"upload")'; */
										//}
										/*if(item.fileUploadFlag =='N'){
											buttonnm="reupload";
											editDataVar='editData(this,"reupload")';
										}*/
										
										 if(item.docIncluded =='N'){
											 buttonnm="upload";
											 editDataVar='onclick=editData(this,"upload")';
											 displayUpload="";
											 $("#fileinfo").show();
											 displaydownload='style="display:none"';
										 }
										 else if(item.docIncluded =='Y'){
											 displaydownload="";
											 if(item.reuploadFlg =='Y'){
												 buttonnm="reupload";
												 editDataVar='onclick=editData(this,"reupload")';
												 displayUpload="";
											}
											 else{
												 displayUpload='style="display:none"';
											 }
										 }
										
										
					 				  trHTML += '<tr><td  class="display-none" style="text-align:center">'
											+ j
											+ '</td><td class="text-infolight form-label">'
											+ docnm
											+ '</td><td style="text-align:center"> <button  '+displaydownload+' class="btn btn-rose" type="button" onclick="downloadFile(this)"><span id="downloadSpin"   style="display:none" class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>'
											+ '<fmt:message key="label.viewDoc"/></button>'
											+ '</td><td style="display:none"><div '+displayUpload+'  class="input-group"><div class="col-md-9">'
											+ '<input name="myFile" id="appdoc'+j+'File" type="file"  onchange="selectFile(this)" onclick="changeMsg(this)"  class="form-control">'
											+ '<span id="uploadErr'+j+'" style="display:none" ><b><font color="red"><fmt:message key="label.uploadErr" /></font></b></span>'
											+ '<span id="docTypeSuccessErr'+j+'" style="display:none" ><b><font color="red"><fmt:message key="label.docTypeSuccess" /></font></b></span>'
											+ '<span id="docTypeNofileErr'+j+'" style="display:none"><b><font color="red"><fmt:message key="label.docTypeNofile" /></font></b></span>'
											+ '<span id="doctypeFileName'+j+'" style="display:none"><b><font color="red"><fmt:message key="label.doctypeFileName" /></font></b></span>'
											+ '</div><div class="col-md-3"  >'
											+ '<button id="ButtonSave'+j+'" style="text-align:center"  class="btn btn-primary ms-2 mt-1 mt-md-0" type="button"  '+editDataVar+'>'
											+ '<span id="spinDiv" style="display:none" class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> '
											+ buttonnm
											+ '</button></div>'
											+ '</div>'
											+ '</td><td  style="display:none">'
											+ item.docCd
											+ '</td><td  style="display:none">'
											+ item.docType
											+ '</td><td  style="display:none">'
											+ item.srlNo
											+ '</td><td  style="display:none">'
											+ item.fileName
											+ '</td><td  style="display:none">'
											+ item.fileUpdId
											+ '</td></tr>'
											;
											
											
											
									j++;
			
									table1 = $('#docTable').append(trHTML);
					 				 
					 			   });
					 			   // console.log(data+'data');
							
									
							},
							error : function(jqXHR, textStatus, errorThrown) {
								if (jqXHR.status == "401") {
									sessionOut();
								}
							}
					       });
				}
			  
			  
			  function downloadFile(editdata){
				  var row = $(editdata).parents("tr");
				  var cols = row.children("td");
				  getToken();
				  tkn = sessionStorage.getItem("tkn");
				  //alert("tkn"+tkn);
				 // $("#downloadSpin").show();
				  var myJSNObjType = JSON.stringify({
					  "fileCat":"U",
					  "userRegId":loginregid,
					  "appRegId":"0",
					  "fileName":$(cols[7]).text()
	                });
				  
				  /* "docName" : $(cols[4]).text(),
                "docExt" : $(cols[5]).text(),
                "slno" : $(cols[6]).text(), */
				  $.ajax({
						type : "POST",
						url : warnamefr+"/Dashboard?method=downloadFile",
					    contentType : "application/json",
						crossDomain : true,
						headers : {
							Authorization : 'Bearer ' + tkn
						},
						data:myJSNObjType,
						success : function(datahere) {
							  //$("#downloadSpin").hide();
				 			   if(datahere != null && datahere.length > 0 &&  $(cols[5]).text()=="pdf"){
			                        var dataString=datahere; 
			                       // var jsonData = JSON.parse(datahere);     
			                                //alert('jsonData: '+jsonData);     
			                        var type = 'application/pdf';
			                        let blob = null;
			                        const blobURL = URL.createObjectURL( pdfBlobConversion(datahere, 'application/pdf'));
			                        window.open(blobURL, 'printpopup', 'directories=0,location=0,status=0,scrollbars=no,titlebar=no,toolbar=0,menubar=no,scrollbars=0,resizable=0, width=800,height=780');
			                        this.target = 'printpopup';
			                     

			                     }
				 			   // console.log(data+'data');
						
								
						},
						error : function(jqXHR, textStatus, errorThrown) {
							//$("#downloadSpin").hide();
							if (jqXHR.status == "401") {
								sessionOut();
							}
						}
				       });
			  }
			  
			  
			  
			  function pdfBlobConversion(b64Data, contentType) {     
			       contentType = contentType || '';     
			       var sliceSize = 512;      
			       b64Data = b64Data.replace(/^[^,]+,/, '');      
			       b64Data = b64Data.replace(/\s/g, '');      
			       var byteCharacters = window.atob(b64Data);      
			       var byteArrays = [];
			       for ( var offset = 0; offset < byteCharacters.length; offset = offset + sliceSize ) {        
			           var slice = byteCharacters.slice(offset, offset + sliceSize);
			           var byteNumbers = new Array(slice.length);        
			           for (var i = 0; i < slice.length; i++) {
			                byteNumbers[i] = slice.charCodeAt(i);        
			               }
			           var byteArray = new Uint8Array(byteNumbers);
			           byteArrays.push(byteArray);      
			         }
			         var blob = new Blob(byteArrays, { type: contentType });      
			         return blob;    }
			  
			  
			  
			  $("#producttrdname").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#producttrdnameErr').hide();
						}
					else{
						$('#producttrdnameErr').show();
						
					}
				});
			  
			  var previous;
			  $("#activeingredient").focus(function() {
				  previous=$(this).val();
			  }).change(function() {
				 if ( $(this).val() != null ||  $(this).val() != '0') {
					if(previous =="M" && $(this).val()=="S"){
						var cntactable=0;
						$('#actTable tbody tr').each(function (i, obj) {
					    	   var currentRow=$(this);
					    	   var acttxt="",acttxtid=""
					    		   acttxt=currentRow.find("td:eq(1)").text();
					    	  if(acttxt!=""){
					    		  cntactable++;
					    	  }
					    }); 
						if(cntactable >0){
						 	$('#activeingredientdeleteErr').show();
						 	$("#activeingredient").val(previous);
						}
					 }
					 else{
						 $('#activeingredientdeleteErr').hide();
					 }
						//alert($('#actTable tbody tr').length)
						/*	if($('#actTable tbody tr').length !=0){
							$("#activeingredient").val(lastSel);
							$('#activeingredientdeleteErr').show();
						}
						else{
							$("#activeingredienttxt").val("");
							$("#activeingredienttxtid").val("");
							$('#activeingredientdeleteErr').hide();
							 var dataTable = $('#actTable').DataTable();
					            dataTable.destroy(); 
					            $('#actTable tbody tr').remove();
						}*/
						$('#activeingredientErr').hide();
						$('#activeingredienttxtErr').hide();
						$('#activeingredientsingleErr').hide();
						
						//alert($('#actTable').DataTable().length)
						 /* if($(this).val() =="M"){
							$("#actBtn").show();
						  }
						else{
							//if($('#actTable').DataTable().length ==1){
							  $("#actBtn").hide();
							//}
						}  */
							
						 
						}
					else{
						$('#activeingredientErr').show();
						
					}
				});
			  $("#activeingredienttxt").change(function() {
				  $('#activeingredienttxtErr').hide();
				  $('#activeingredientsingleErr').hide();
				  if ( $(this).val() != null ||  $(this).val() != '') {
						$('#activeingredienttxtErr').hide();
						//alert('in'+$('#actTable').DataTable().length)
						/*if( $('#actTable').DataTable().length >=1 &&  activeingredientVar.value=="S"){
			        		 $("#actBtn").hide();
			        	 }
			        	else{
			       		   $("#actBtn").show();
			       	      }*/
						}
					else{
						$('#activeingredienttxttErr').show();
						
					}
				});
			  
			  $("#strength").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#strengthErr').hide();
						}
					else{
						$('#strengthErr').show();
						
					}
				});
			  
			  $("#dosageform").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#dosageformErr').hide();
						}
					else{
						$('#dosageformErr').show();
						
					}
				});
			  
			  $("#pack").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#packErr').hide();
						}
					else{
						$('#packErr').show();
						
					}
				});
			  
			  $("#packmaterial").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#packmaterialErr').hide();
						}
					else{
						$('#packmaterialErr').show();
						
					}
				});
			  $("#route").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#routeErr').hide();
						}
					else{
						$('#routeErr').show();
						
					}
				});
			  $("#shelflife").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#shelflifeErr').hide();
						}
					else{
						$('#shelflifeErr').show();
						
					}
				});
			  $("#shelflifePrd").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#shelflifePrdErr').hide();
						}
					else{
						$('#shelflifePrdErr').show();
						
					}
				});
			  $("#shelflifefirst").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#shelflifefirstErr').hide();
						}
					else{
						$('#shelflifefirstErr').show();
						
					}
				});
			  $("#shelflifefirstPrd").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#shelflifefirstPrdErr').hide();
						}
					else{
						$('#shelflifefirstPrdErr').show();
						
					}
				});
			  $("#shelfliferecon").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#shelflifereconErr').hide();
						}
					else{
						$('#shelflifereconErr').show();
						
					}
				});
			  $("#shelflifereconPrd").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#shelflifereconPrdErr').hide();
						}
					else{
						$('#shelflifereconPrdErr').show();
						
					}
				});
			  $("#atccd").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#atccdErr').hide();
						}
					else{
						$('#atccdErr').show();
						
					}
				});
			  $("#pharmaco").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#pharmacoErr').hide();
						loadAgentName('subclass',"","na");
						}
					else{
						$('#pharmacoErr').show();
						
					}
				});
			  $("#pharmacosub").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#pharmacosubErr').hide();
						}
					else{
						$('#pharmacosubErr').show();
						
					}
				});
			  $("#revisiondt").change(function() {
				 // alert($(this).val())
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#revisiondtErr').hide();
						}
					else{
						$('#revisiondtErr').show();
						
					}
				});
			  $("#therapeutic").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#therapeuticErr').hide();
						}
					else{
						$('#therapeuticErr').show();
						
					}
				});
			  $("#storagecondition").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#storageconditionErr').hide();
						}
					else{
						$('#storageconditionErr').show();
						
					}
				});

			  function clearProductDtl(){
				   $('#productid').val("");
				   $('#appproductid').val("");
				    $('#producttrdname').val("");
					$('#activeingredient').val("0");
					$('#activeingredienttxt').val("");
					$('#activeingredienttxtid').val("");
					$('#strength').val("");
					$('#dosageform').select2("val", "0");
					$('#pack').val("");
					$('#packmaterial').val("");
					$('#route').select2("val", "0");
					$('#shelflife').val("");
					$('#shelflifefirst').val("");
					$('#shelfliferecon').val("");
					$('#shelflifePrd').val("0");
					$('#shelflifefirstPrd').val("0");
					$('#shelflifereconPrd').val("0");
					$('#atccd').val("");
					$('#pharmaco').select2("val", "0");
					$('#pharmacosub').select2("val", "0");
					$('#revisiondt').val("");
					$('#therapeutic').val("");
					$('#storagecondition').val("");
				  
					$('#producttrdnameErr').hide();
					$('#activeingredientErr').hide();
					$('#activeingredienttxtErr').hide();
					$('#activeingredientsingleErr').hide();
					$('#activeingredientdeleteErr').hide();
					$('#strengthErr').hide();
					$('#dosageformErr').hide();
					$('#packErr').hide();
					$('#packmaterialErr').hide();
					$('#routeErr').hide();
					$('#shelflifeErr').hide();
					$('#shelflifereconErr').hide();
					$('#shelflifefirstErr').hide();
					$('#shelflifePrdErr').hide();
					$('#shelflifereconPrdErr').hide();
					$('#shelflifefirstPrdErr').hide();
					$('#atccdErr').hide();
					$('#pharmacoErr').hide();
					$('#revisiondtErr').hide();
					$('#therapeuticErr').hide();
					$('#storageconditionErr').hide();
					
					
					$('#appcat').val("0");
					$('#appsubcat').val("0");
					$('#appcatErr').hide();
					$('#appsubcatErr').hide();
					$('#appcatFile').val("");
					$('#appcatFileid').val("");
					$('#appcatFiledoc').val("");
					 document.getElementById( 'HAAappdocFile').value = null;
					 
					 var dataTable = $('#actTable').DataTable();
			            dataTable.destroy(); 
			            $('#actTable tbody tr').remove();
			  }
			  
			  function validateProductdtl(){
				    var res = true;	
				    
				    if (appcatVar.value == null || appcatVar.value =='0') {
						$('#appcatErr').show();
						res = false;
					}
					if (appcatVar.value !="G"){
						//alert('in')
						if (appsubcatVar.value == null || appsubcatVar.value =='0') {
							$('#appsubcatErr').show();
							res = false;
						}
					}
					//alert(productidVar.value)
					//alert(appcatVar.value)
					/*if (appcatVar.value == "B"  && productidVar.value ==""  ) {
						    var docType ='HAAappdoc';
							var fn = '#' + docType + 'File';
							var fileid = docType + 'File';
							var files = $(fn)[0].files;
							if(files.length == 0  ){
								$("#productdupl").show();
								res = false;
				               }
					}*/
				    
					if (producttrdnameVar.value == null || producttrdnameVar.value =='') {
						$('#producttrdnameErr').show();
						res = false;
					}
					if (activeingredientVar.value == null || activeingredientVar.value =='0') {
						$('#activeingredientErr').show();
						res = false;
					}
					if (activeingredientVar.value == "S"){
						if ( ($('#actTable tbody tr').length) == 0) {
							$('#activeingredienttxtErr').show();
							res = false;
						}
					}
					//alert(($('#actTable tbody tr').length))
					if (activeingredientVar.value == "M" && $('#actTable tbody tr').length <= 1){
							$('#activeingredienttxtErr').show();
							res = false;
						
					}
					/*if (($('#actTable tbody tr').length) == 0) {
						$('#activeingredienttxtErr').show();
						res = false;
					}*/
					
					if (strengthVar.value == null || strengthVar.value =='') {
						$('#strengthErr').show();
						res = false;
					}
					if (dosageformVar.value == null || dosageformVar.value =='0') {
						$('#dosageformErr').show();
						res = false;
					}
					if (packVar.value == null || packVar.value =='') {
						$('#packErr').show();
						res = false;
					}
					if (packmaterialVar.value == null || packmaterialVar.value =='') {
						$('#packmaterialErr').show();
						res = false;
					}
					if (routeVar.value == null || routeVar.value =='0') {
						$('#routeErr').show();
						res = false;
					}
					if (shelflifeVar.value == null || shelflifeVar.value =='') {
						$('#shelflifeErr').show();
						res = false;
					}
					if (shelflifeVar.value != ""){
						if (shelflifePrdVar.value == null || shelflifePrdVar.value =='0') {
							$('#shelflifePrdErr').show();
							res = false;
						}
					}
					/*if (shelflifefirstVar.value == null || shelflifefirstVar.value =='') {
						$('#shelflifefirstErr').show();
						res = false;
					}
					
					if (shelflifereconVar.value == null || shelflifereconVar.value =='') {
						$('#shelflifereconErr').show();
						res = false;
					}*/
					if (shelflifefirstVar.value != ""){
						if (shelflifefirstPrdVar.value == null || shelflifefirstPrdVar.value =='0') {
							$('#shelflifefirstPrdErr').show();
							res = false;
						}
					}
					if (shelflifereconVar.value != ""){
						if (shelflifereconPrdVar.value == null || shelflifereconPrdVar.value =='0') {
							$('#shelflifereconPrdErr').show();
							res = false;
						}
					}
					if (atccdVar.value == null || atccdVar.value =='') {
						$('#atccdErr').show();
						res = false;
					}
					if (pharmacoVar.value == null || pharmacoVar.value =='0') {
						$('#pharmacoErr').show();
						res = false;
					}
					if (pharmacosubVar.value == null || pharmacosubVar.value =='0') {
						$('#pharmacosubErr').show();
						res = false;
					}
					if (revisiondtVar.value == null || revisiondtVar.value =='') {
						$('#revisiondtErr').show();
						res = false;
					}
					if (therapeuticVar.value == null || therapeuticVar.value =='') {
						$('#therapeuticErr').show();
						res = false;
					}
					
					if (storageconditionVar.value == null || storageconditionVar.value =='') {
						$('#storageconditionErr').show();
						res = false;
					}
					
					return res;
			  }	
			  
			  
			  function saveProductDtl(idval1,idval2){
				    $("#productSucc").hide();
			     	$("#productdupl").hide();
			        $("#productFail").hide();
		       var res=  validateProductdtl();  
		      if(res) {
		      //if(activeingredientVar.value=="M"){
		       var arrRole=[];
		       $('#actTable tbody tr').each(function (i, obj) {
		    	   var currentRow=$(this);
		    	   var acttxt="",acttxtid=""
		    		   acttxt=currentRow.find("td:eq(1)").text();
		    	       acttxtid=currentRow.find("td:eq(2)").text();
		    	   var myJSONObjSub= {
					        "aiId":(acttxtid=="0"?"na":acttxtid),
       			            "activeIngredient":acttxt,
							};
						arrRole.push(myJSONObjSub);
		       });
		     // } 
		     /* if(activeingredientVar.value=="S"){
			       var arrRole=[];
			          var myJSONObjSub= {
						        "aiId":(activeingredienttxtidVar.value==""?"na":activeingredienttxtidVar.value),
	       			            "activeIngredient":activeingredienttxtVar.value
								};
							arrRole.push(myJSONObjSub);
			      } */
		       if(arrRole.length >0 && res){
		    	   $("#saveProductBTN span").removeClass("d-none");  
		    	   
		    	   var myJSONObjapp=	JSON.stringify({
		    		    "productId": (productidVar.value==""?"na":productidVar.value),
		    		    "appRegId": appRegIdVar.value,
		    		    "tradeName": producttrdnameVar.value,
		    		    "appProductAiBeanList": arrRole,
		    		    "activeIngredientFlg":activeingredientVar.value,
		    		    "strength": strengthVar.value,
		    		    "dosageForm":dosageformVar.value,
		    		    "packSize":  packVar.value,
		    		    "descPrimaryPack": packmaterialVar.value,
		    		    "routeOfAdmin": routeVar.value,
		    		    "shelfLife": shelflifeVar.value,
		    		    "shelfLifePrd": shelflifePrdVar.value,
		    		    "slAfterFirstOpn": (shelflifefirstVar.value==""?"na":shelflifefirstVar.value),
		    		    "slAfterFirstOpnPrd": shelflifefirstPrdVar.value,
		    		    "slAfterDilution": (shelflifereconVar.value==""?"na":shelflifereconVar.value),
		    		    "slAfterDilutionPrd": shelflifereconPrdVar.value,
		    		    "storageConditions":storageconditionVar.value,
		    		    "pharmacotherapeuticGrp": pharmacoVar.value,
		    		    "pharmacotherapeuticSubGrp":pharmacosubVar.value,
		    		    "atcCode": atccdVar.value,
		    		    "therapeuticIndication": therapeuticVar.value,
		    		    "leafletRevisionDate": revisiondtVar.value,
		    		    "prodCat": appcatVar.value,
						"prodSubCat":(appsubcatVar.value==""?"na":appsubcatVar.value),
						 });	
		    	 //  alert(idval2);
		    	   //collapseopen(idval2);		 
		 $.ajax({
   			 type : "POST",
                                url :warnamefr+"/Pharmaceutical?method=saveProdDtls",
                                 data : myJSONObjapp,
                                 contentType : "application/json",
                                 crossDomain : true,
                                 cache:false,
                                 headers : {
         							Authorization : 'Bearer ' + tkn
         						 },
   			success : function(response) {
   				//$('#spinDiv').hide();  
   				//$("#savefileBtn").prop("disabled", false);
   			    var data ="";
   			    data =	JSON.parse(response);
   			  if (data.code =="0"){
   				 var dataTable = $('#actTable').DataTable();
	                 dataTable.destroy(); 
	    	        $('#actTable tbody tr').remove();
   				    $.each(data.elements, function(i, prdDtls) {
   				    
   				    	
   				        $("#productid").val(prdDtls.ProductId);
   				        $("#appproductid").val(prdDtls.appProdId);
   				       // $("#HAADOWNLOAD").show(); 
   				        
   				       $("#productid").val(prdDtls.productId);
		 			    $("#producttrdname").val(prdDtls.tradeName);
			 			$("#activeingredient").val(prdDtls.activeIngredientFlg);
			 			//$("#activeingredienttxt").val(item.prdDtls.activeIngredient);
			 			$("#strength").val(prdDtls.strength);
			 			$("#dosageform").val(prdDtls.dosageForm).change();
			 			$("#pack").val(prdDtls.packSize);
			 			$("#packmaterial").val(prdDtls.descPrimaryPack);
			 			$("#route").val(prdDtls.routeOfAdmin).change();
			 			$("#shelflife").val(prdDtls.shelfLife);
			 			$("#shelflifefirst").val(prdDtls.slAfterFirstOpn);
			 			$("#shelfliferecon").val(prdDtls.slAfterDilution);
			 			$("#shelflifePrd").val(prdDtls.shelfLifePrd);
			 			$("#shelflifefirstPrd").val(prdDtls.slAfterFirstOpnPrd);
			 			$("#shelflifereconPrd").val(prdDtls.slAfterDilutionPrd);
			 			$("#storagecondition").val(prdDtls.storageConditions);
			 			$("#pharmaco").val(prdDtls.pharmacotherapeuticGrp).change();
			 			//loadAgentName('subclass',"","na");
			 			$("#pharmacosub").val(prdDtls.pharmacotherapeuticSubGrp);
			 			$("#atccd").val(prdDtls.atcCode);
			 			$("#therapeutic").val(prdDtls.therapeuticIndication);
			 			//$("#revisiondt").val(item.prdDtls.leafletRevisionDate);
			 			var str="",res="";
						if (prdDtls.leafletRevisionDate !='' && prdDtls.leafletRevisionDate != null) {
							 str = prdDtls.leafletRevisionDate.substring(0, 10);
							 res = str.split('-').reverse().join('/');
							}
						$('#revisiondt').val(res);
						$("#appcat").val(prdDtls.prodCat).change();
			 			  // loadAgentName('ProdSubcat',"","na");
	 			  		$("#appsubcat").val(prdDtls.prodSubCat);
			 			//if(prdDtls.activeIngredientFlg=="M"){   
						 var data ="",trHTML="",j=1;
						 $.each(prdDtls.aidtls, function(i, itemact) {
							 //var trHTML="";
							 trHTML += '<tr><td  class="display-none" style="text-align:center">'
									+ j
									+ '</td><td>'
									+itemact.activeIngredient
									+ '</td><td style="display:none">'
									+itemact.aiId
									+ '</td><td>'
									+ '<button  style="text-align:center"  class="btn btn-primary ms-2 mt-1 mt-md-0" type="button" >delete</button>'
									+ '</td></tr>';
									j++;
												
						 });
						 table1 = $('#actTable').append(trHTML);	
							$('#actTable').DataTable({
						        "dom": 'rtip',
						   "bInfo" : false,"searching": false,
						  autoWidth: false,   
						       columns: [
						           { "width": "15%" },
						           { "width": "80%" },
						           { "width": "0%" },
						           { "width": "5%" },
						           
								 ], });
							//$("#actBtn").show();
			 			/*}
			 			if(prdDtls.activeIngredientFlg=="S"){ 
			 				var data ="",trHTML="",j=1;
							 $.each(prdDtls.aidtls, function(i, itemact1) {
								 $("#activeingredienttxt").val(itemact1.activeIngredient);
								 $("#activeingredienttxtid").val(itemact1.aiId);
							});
							 //$("#actBtn").hide();
			 			}*/
		 			
   				        
   				        
   				    });
   				 //alert(productidVar.value)
   				        marketButtonEnable();
   				        $("#productSucc").show();
   				        setTimeout( "$('#productSucc').hide();", 4000);
   				        tocheckUploadStatus('HAA');
   				       /*if(appcatFileVar.value ==""){
   			    	     saveUpload('HAA','uploadFile');
   			    	   }*/
   			    	   /*else{
   			    		   saveUpload('HAA','reupload');
   			    	   }*/
						 	}
   			 
						   else{ 
							    $("#productFail").show();
								$("#productFail").text(data.description);
								$("#productFail").css('color', 'red');
								$("#productFail").css('font-weight',
										'bold');
							  // $("#productFail").show();	
							   //collapseopen(idval1);
                        }
   			$("#saveProductBTN span").addClass("d-none");
         },
			 
   	error : function(jqXHR, textStatus, errorThrown) {
   		$("#saveProductBTN span").addClass("d-none");
   		if (jqXHR.status == "401") {
   			sessionOut();
   		}
   		else{
   			$("#productFail").show();
   			
   		}
   	 }	
          });
		       }
		      }
			  }
				
			  
			  
			
			  
			  
			  $("#marketname").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#marketnameErr').hide();
						}
					else{
						$('#marketnameErr').show();
						
					}
				});
			  $("#marketcountry").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#marketcountryErr').hide();
						}
					else{
						$('#marketcountryErr').show();
						
					}
				});
			  $("#marketaddress").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#marketaddressErr').hide();
						}
					else{
						$('#marketaddressErr').show();
						
					}
				});
			 
				 $("#manufactactname").change(function() {
						if ( $(this).val() != null ||  $(this).val() != '0') {
							$('#manufactactnameErr').hide();
							}
						else{
							$('#manufactactnameErr').show();
							
						}
					});
			  $("#manufactactcountry").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#manufactactcountryErr').hide();
						}
					else{
						$('#manufactactcountryErr').show();
						
					}
				});
			  $("#manufactactaddress").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#manufactactaddressErr').hide();
						}
					else{
						$('#manufactactaddressErr').show();
						
					}
				});
			  $("#manufactexcname").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#manufactexcnameErr').hide();
						}
					else{
						$('#manufactexcnameErr').show();
						
					}
				});
			  $("#manufactexccountry").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#manufactexccountryErr').hide();
						}
					else{
						$('#manufactexccountryErr').show();
						
					}
				});
			  $("#manufactexcaddress").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#manufactexcaddressErr').hide();
						}
					else{
						$('#manufactexcaddressErr').show();
						
					}
				});
			  $("#manufactexcref").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#manufactexcrefErr').hide();
						}
					else{
						$('#manufactexcrefErr').show();
						
					}
				});
			  $("#manufactfinishname").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#manufactfinishnameErr').hide();
						}
					else{
						$('#manufactfinishnameErr').show();
						
					}
				});
			  $("#manufactfinishadd").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#manufactfinishaddErr').hide();
						}
					else{
						$('#manufactfinishaddErr').show();
						
					}
				});
			  
			  $("#mohregquestfinish").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#mohregquestfinishErr').hide();
						$("#mohregnofinish").val("");
						$("#mohissdtfinish").val("");
						$("#mohrenewdtfinish").val("");
						}
					else{
						$('#mohregquestfinishErr').show();
						
					}
				});
			  $("#mohregnofinish").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#mohregnofinishErr').hide();
						}
					else{
						$('#mohregnofinishErr').show();
						
					}
				});
			  $("#mohissdtfinish").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#mohissdtfinishErr').hide();
						}
					else{
						$('#mohissdtfinishErr').show();
						
					}
				});
			  $("#mohrenewdtfinish").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#mohrenewdtfinishErr').hide();
						}
					else{
						$('#mohrenewdtfinishErr').show();
						
					}
				});
			  
			  $("#manufactpriname").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#manufactprinameErr').hide();
						}
					else{
						$('#manufactprinameErr').show();
						
					}
				});
			  $("#manufactpriadd").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#manufactpriaddErr').hide();
						}
					else{
						$('#manufactpriaddErr').show();
						
					}
				});
			  
			  $("#mohregquestpri").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#mohregquestpriErr').hide();
						$("#mohregnopri").val("");
						$("#mohissdtpri").val("");
						$("#mohrenewdtpri").val("");
						}
					else{
						$('#mohregquestpriErr').show();
						
					}
				});
			  $("#mohregnopri").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#mohregnopriErr').hide();
						}
					else{
						$('#mohregnopriErr').show();
						
					}
				});
			  $("#mohissdtpri").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#mohissdtpriErr').hide();
						}
					else{
						$('#mohissdtpriErr').show();
						
					}
				});
			  $("#mohrenewdtpri").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#mohrenewdtpriErr').hide();
						}
					else{
						$('#mohrenewdtpriErr').show();
						
					}
				});
			  
			  $("#manufactsecname").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#manufactsecnameErr').hide();
						}
					else{
						$('#manufactsecnameErr').show();
						
					}
				});
			  $("#manufactsecadd").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#manufactsecaddErr').hide();
						}
					else{
						$('#manufactsecaddErr').show();
						
					}
				});
			  
			  $("#mohregquestsec").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#mohregquestsecErr').hide();
						$("#mohregnosec").val("");
						$("#mohissdtsec").val("");
						$("#mohrenewdtsec").val("");
						}
					else{
						$('#mohregquestsecErr').show();
						
					}
				});
			  $("#mohregnosec").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#mohregnosecErr').hide();
						
						}
					else{
						$('#mohregnosecErr').show();
						
					}
				});
			  $("#mohissdtsec").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#mohissdtseccErr').hide();
						}
					else{
						$('#mohissdtsecErr').show();
						
					}
				});
			  $("#mohrenewdtsec").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#mohrenewdtsecErr').hide();
						}
					else{
						$('#mohrenewdtsecErr').show();
						
					}
				});
			  
			  $("#manufactbatname").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#manufactbatnameErr').hide();
						}
					else{
						$('#manufactbatnameErr').show();
						
					}
				});
			  $("#manufactbatadd").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#manufactbataddErr').hide();
						}
					else{
						$('#manufactbataddErr').show();
						
					}
				});
			  
			  $("#mohregquestbat").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '0') {
						$('#mohregquestbatErr').hide();
						$("#mohregnobat").val("");
						$("#mohissdtbat").val("");
						$("#mohrenewdtbat").val("");
						}
					else{
						$('#mohregquestbatErr').show();
						
					}
				});
			  $("#mohregnobat").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#mohregnobatErr').hide();
						}
					else{
						$('#mohregnobatErr').show();
						
					}
				});
			  $("#mohissdtbat").change(function() {
					if ( $(this).val() != null ||  $(this).val() != '') {
						$('#mohissdtbatErr').hide();
						}
					else{
						$('#mohissdtbatErr').show();
						
					}
				});
			  $("#mohrenewdtbat").change(function() {
				 // alert($(this).val()+"1")
					if ( $(this).val() != null ||  $(this).val() != '') {
						//alert('in')
						$('#mohrenewdtbatErr').hide();
						}
					else{
						$('#mohrenewdtbatErr').show();
						
					}
				});
			  
			  
			  
				
			
				  function clearMarketDtl(type){
					  
					  if(type=="BR"){	
							$('#manufactbatnameErr').hide();
							$('#manufactbataddErr').hide();
							$('#mohregquestbatErr').hide();
							$('#mohregnobatErr').hide();
							$('#mohissdtbatErr').hide();
							$('#mohrenewdtbatErr').hide();
							
							$('#manufactbatslno').val("");
							$('#manufactbatid').val("");
							$('#manufactbatname').val("");
							$('#manufactbatadd').val("");
							$('#mohregquestbat').val("0");
							$('#mohregnobat').val("");
							$('#mohissdtbat').val("");
							$('#mohrenewdtbat').val("");
						    cleardatepicker(4)	;				
						}
					  else if(type=="SP"){
						    $('#manufactsecslno').val("");
							$('#manufactsecid').val("");
							$('#manufactsecname').val("");
							$('#manufactsecadd').val("");
							$('#mohregquestsec').val("0");
							$('#mohregnosec').val("");
							$('#mohissdtsec').val("");
							$('#mohrenewdtsec').val("");
							
							$('#manufactsecnameErr').hide();
							$('#manufactsecaddErr').hide();
							$('#mohregquestsecErr').hide();
							$('#mohregnosecErr').hide();
							$('#mohissdtsecErr').hide();
							$('#mohrenewdtsecErr').hide();
							 cleardatepicker(3)	;	
					  }
					  else if(type=="PP"){
							
							$('#manufactprislno').val("");
							$('#manufactpriid').val("");
							$('#manufactpriname').val("");
							$('#manufactpriadd').val("");
							$('#mohregquestpri').val("0");
							$('#mohregnopri').val("");
							$('#mohissdtpri').val("");
							$('#mohrenewdtpri').val("");
							
							    $('#manufactprinameErr').hide();
								$('#manufactpriaddErr').hide();
								$('#mohregquestpriErr').hide();
								$('#mohregnopriErr').hide();
								$('#mohissdtpriErr').hide();
								$('#mohrenewdtpriErr').hide();
								 cleardatepicker(2)	;	
					  }
					  else if(type=="FPM"){
						    $('#manufactfinishislno').val("");
						    $('#manufactfinishid').val("");
						    $('#manufactfinishname').val("");
							$('#manufactfinishadd').val("");
							$('#mohregquestfinish').val("0");
							$('#mohregnofinish').val("");
							$('#mohissdtfinish').val("");
							$('#mohrenewdtfinish').val("");
							
							$('#manufactfinishnameErr').hide();
							$('#manufactfinishaddErr').hide();
							$('#mohregquestfinishErr').hide();
							$('#mohregnofinishErr').hide();
							$('#mohissdtfinishErr').hide();
							$('#mohrenewdtfinishErr').hide();
							 cleardatepicker(1)	;	
					  }
					  else if(type=="AIM"){
						   $('#manufactactslno').val("");
							$('#manufactactid').val("");
						    $('#manufactactname').val("");
							$('#manufactactcountry').val("0");
							$('#manufactactaddress').val("");
							
							$('#manufactactnameErr').hide();
							$('#manufactactcountryErr').hide();
							$('#manufactactaddressErr').hide();
							
							$('#gmpFile').val("");
							$('#gmpFileid').val("");
							$('#gmpFiledoc').val("");
							document.getElementById( 'GMPappdocFile').value = null;	
					  }
					  else if(type=="EM"){
						    $('#manufactexcslno').val("");
							$('#manufactexcid').val("");
							$('#manufactexcname').val("");
							$('#manufactexccountry').val("0");
							$('#manufactexcaddress').val("");
							$('#manufactexcref').val("");
							
							$('#manufactexcnameErr').hide();
							$('#manufactexccountryErr').hide();
							$('#manufactexcaddressErr').hide();
							$('#manufactexcrefErr').hide();
					  }
					  else if(type=="MAH"){
						    $('#marketslno').val("");
						    $('#marketid').val("");
						    $('#marketname').val("");
							$('#marketcountry').val("0");
							$('#marketaddress').val("");
							$('#marketnameErr').hide();
							$('#marketcountryErr').hide();
							$('#marketaddressErr').hide();
					  }
					  
				  }
				  function cleardatepicker($k4){
					  $('.datepicker_i'+$k4).daterangepicker({
			                autoUpdateInput: false,
			                singleDatePicker: true,
			                showDropdowns: true,                        			
			                  locale: {
			                    format: 'DD/MM/YYYY'
			                  },
			                        parentEl: "#date_i"+$k4,
			               
			                	  });					                      
			         $('.datepicker_r'+$k4).daterangepicker({
			                autoUpdateInput: false,
			                singleDatePicker: true,
			                showDropdowns: true,                        			
			                  locale: {
			                    format: 'DD/MM/YYYY'
			                  },
			                        parentEl: "#date_r"+$k4,
			               
			                	  });	            
			            
			            $('.datepicker_i'+$k4).on('apply.daterangepicker', function(ev, picker) {
			                    $(this).val(picker.startDate.format('DD/MM/YYYY'));
			                });
			            $('.datepicker_r'+$k4).on('apply.daterangepicker', function(ev, picker) {
		                    $(this).val(picker.startDate.format('DD/MM/YYYY'));
		                });		
				  }
				  				  
				  function validateManufactdtl(type){
					    var res = true;	
						if(type=="BR"){
							if (manufactbatnameVar.value == null || manufactbatnameVar.value =='') {
								$('#manufactbatnameErr').show();
								res = false;
							}
							//alert(manufactbataddVar.value)
							if (manufactbataddVar.value == null || manufactbataddVar.value =='') {
								//alert('in')
								$('#manufactbataddErr').show();
								res = false;
							}
					     	if (mohregquestbatVar.value == null || mohregquestbatVar.value =='0') {
								$('#mohregquestbatErr').show();
								res = false;
							}
					     	if(mohregquestbatVar.value=='Y'){
								  
								if (mohregnobatVar.value == null || mohregnobatVar.value =='') {
									$('#mohregnobatErr').show();
									res = false;
								}
								if (mohissdtbatVar.value == null || mohissdtbatVar.value =='') {
									$('#mohissdtbatErr').show();
									res = false;
								}
								if (mohrenewdtbatVar.value == null || mohrenewdtbatVar.value =='') {
									$('#mohrenewdtbatErr').show();
									res = false;
								}
					     	}
						}
				  else if(type=="SP"){
					  if (manufactsecnameVar.value == null || manufactsecnameVar.value =='') {
							$('#manufactsecnameErr').show();
							res = false;
						}
						if (manufactsecaddVar.value == null || manufactsecaddVar.value =='') {
							$('#manufactsecaddErr').show();
							res = false;
						}
				     	if (mohregquestsecVar.value == null || mohregquestsecVar.value =='0') {
							$('#mohregquestsecErr').show();
							res = false;
						}
				     	if(mohregquestsecVar.value=='Y'){
							if (mohregnosecVar.value == null || mohregnosecVar.value =='') {
								$('#mohregnosecErr').show();
								res = false;
							}
							if (mohissdtsecVar.value == null || mohissdtsecVar.value =='') {
								$('#mohissdtsecErr').show();
								res = false;
							}
							if (mohrenewdtsecVar.value == null || mohrenewdtsecVar.value =='') {
								$('#mohrenewdtsecErr').show();
								res = false;
							}
				     	}
				  }
				  else if(type=="PP"){
					  if (manufactprinameVar.value == null || manufactprinameVar.value =='') {
							$('#manufactprinameErr').show();
							res = false;
						}
						if (manufactpriaddVar.value == null || manufactpriaddVar.value =='') {
							$('#manufactpriaddErr').show();
							res = false;
						}
				     	if (mohregquestpriVar.value == null || mohregquestpriVar.value =='0') {
							$('#mohregquestpriErr').show();
							res = false;
						}
				     	if(mohregquestpriVar.value=='Y'){
							if (mohregnopriVar.value == null || mohregnopriVar.value =='') {
								$('#mohregnopriErr').show();
								res = false;
							}
							if (mohissdtpriVar.value == null || mohissdtpriVar.value =='') {
								$('#mohissdtpriErr').show();
								res = false;
							}
							if (mohrenewdtpriVar.value == null || mohrenewdtpriVar.value =='') {
								$('#mohrenewdtpriErr').show();
								res = false;
							}
				     	}
				  }
				  else if(type=="FPM"){
					  if (manufactfinishnameVar.value == null || manufactfinishnameVar.value =='') {
							$('#manufactfinishnameErr').show();
							res = false;
						}
						if (manufactfinishaddVar.value == null || manufactfinishaddVar.value =='') {
							$('#manufactfinishaddErr').show();
							res = false;
						}
						
						if (mohregquestfinishVar.value == null || mohregquestfinishVar.value =='0') {
							$('#mohregquestfinishErr').show();
							res = false;
						}
						if(mohregquestfinishVar.value=='Y'){
							if (mohregnofinishVar.value == null || mohregnofinishVar.value =='') {
								$('#mohregnofinishErr').show();
								res = false;
							}
							if (mohissdtfinishVar.value == null || mohissdtfinishVar.value =='') {
								$('#mohissdtfinishErr').show();
								res = false;
							}
							if (mohrenewdtfinishVar.value == null || mohrenewdtfinishVar.value =='') {
								$('#mohrenewdtfinishErr').show();
								res = false;
							}
						} 
				  }
				  else if(type=="EM"){
					  if (manufactexcnameVar.value == null || manufactexcnameVar.value =='') {
							$('#manufactexcnameErr').show();
							res = false;
						}
						if (manufactexccountryVar.value == null || manufactexccountryVar.value =='0') {
							$('#manufactexccountryErr').show();
							res = false;
						}
						if (manufactexcaddressVar.value == null || manufactexcaddressVar.value =='') {
							$('#manufactexcaddressErr').show();
							res = false;
						}
						if (manufactexcrefVar.value == null || manufactexcrefVar.value =='') {
							$('#manufactexcrefErr').show();
							res = false;
						}
				  }
				  else if(type=="AIM"){
						if (manufactactnameVar.value == null || manufactactnameVar.value =='') {
							$('#manufactactnameErr').show();
							res = false;
						}
						if (manufactactcountryVar.value == null || manufactactcountryVar.value =='0') {
							$('#manufactactcountryErr').show();
							res = false;
						}
						if (manufactactaddressVar.value == null || manufactactaddressVar.value =='') {
							$('#manufactactaddressErr').show();
							res = false;
						}
						 var docType ='GMPappdoc';
							var fn = '#' + docType + 'File';
							var fileid = docType + 'File';
							var files = $(fn)[0].files;
							if(files.length == 0  ){
								$("#GMPuploadErr").show();
								res = false;
				               }
				  }
				  else if(type=="MAH"){

					    if (marketnameVar.value == null || marketnameVar.value =='') {
							$('#marketnameErr').show();
							res = false;
						}
						if (marketcountryVar.value == null || marketcountryVar.value =='0') {
							$('#marketcountryErr').show();
							res = false;
						}
						if (marketaddressVar.value == null || marketaddressVar.value =='') {
							$('#marketaddressErr').show();
							res = false;
						}
					    
				  }
				  
						return res;
				  }

				  
				  function saveMarketDtl(){
					    $("#marketSucc").hide();
				     	$("#marketdupl").hide();
				        $("#marketFail").hide();
			       var res=  validateManufactdtl();  
			      // alert(res)
			       if(res){
			    	   var myJSONObjapp=	JSON.stringify({
			    		   "appRegId": appRegIdVar.value,
			    		    "mah": {
			    		        "addId": (marketidVar.value==""?"na":marketidVar.value),
			    		        "addressType": "MAH",
			    		        "name": marketnameVar.value,
			    		        "address": marketaddressVar.value,
			    		        "countryId":marketcountryVar.value,
			    		        "regNo":  "na",
			    		        "regIssueDt":  "na",
			    		        "regRenewalDt":  "na",
			    		        "refPharmacopoeia":  "na",
			    		    },
			    		    "aim": {
			    		        "addId": (manufactactidVar.value==""?"na":manufactactidVar.value),
			    		        "addressType": "AIM",
			    		        "name": manufactactnameVar.value,
			    		        "address": manufactactaddressVar.value,
			    		        "countryId": manufactactcountryVar.value,
			    		        "regNo": "na",
			    		        "regIssueDt": "na",
			    		        "regRenewalDt": "na",
			    		        "refPharmacopoeia": "na"
			    		    },
			    		    "em": {
			    		        "addId":(manufactexcidVar.value==""?"na":manufactexcidVar.value),
			    		        "addressType": "EM",
			    		        "name": manufactexcnameVar.value,
			    		        "address": manufactexcaddressVar.value,
			    		        "countryId":manufactexccountryVar.value,
			    		        "regNo": "na",
			    		        "regIssueDt": "na",
			    		        "regRenewalDt": "na",
			    		        "refPharmacopoeia": manufactexcrefVar.value,
			    		    },
			    		    "fpm": {
			    		        "addId": (manufactfinishidVar.value==""?"na":manufactfinishidVar.value),
			    		        "addressType": "FPM",
			    		        "name": manufactfinishnameVar.value,
			    		        "address": manufactfinishaddVar.value,
			    		        "countryId":  "na",
			    		        "regNo":(mohregnofinishVar.value==""?"na":mohregnofinishVar.value), 
			    		        "regIssueDt": mohissdtfinishVar.value,
			    		        "regRenewalDt": mohrenewdtfinishVar.value,
			    		        "refPharmacopoeia": "na",
			    		    },
			    		    "pp": {
			    		        "addId": (manufactpriidVar.value==""?"na":manufactpriidVar.value),
			    		        "addressType": "PP",
			    		        "name": manufactprinameVar.value,
			    		        "address": manufactpriaddVar.value,
			    		        "countryId": "na",
			    		        "regNo": (mohregnopriVar.value==""?"na":mohregnopriVar.value),
			    		        "regIssueDt": mohissdtpriVar.value,
			    		        "regRenewalDt": mohrenewdtpriVar.value,
			    		        "refPharmacopoeia": "na",
			    		    },
			    		    "sp": {
			    		        "addId": (manufactsecidVar.value==""?"na":manufactsecidVar.value),
			    		        "addressType": "SP",
			    		        "name": manufactsecnameVar.value,
			    		        "address":manufactsecaddVar.value,
			    		        "countryId": "na",
			    		        "regNo":(mohregnosecVar.value==""?"na":mohregnosecVar.value),
			    		        "regIssueDt": mohissdtsecVar.value,
			    		        "regRenewalDt": mohrenewdtsecVar.value,
			    		        "refPharmacopoeia":  "na",
			    		    },
			    		    "br": {
			    		        "addId": (manufactbatidVar.value==""?"na":manufactbatidVar.value),
			    		        "addressType": "BR",
			    		        "name":manufactbatnameVar.value,
			    		        "address": manufactbataddVar.value,
			    		        "countryId":  "na",
			    		        "regNo": (mohregnobatVar.value==""?"na":mohregnobatVar.value),
			    		        "regIssueDt": mohissdtbatVar.value,
			    		        "regRenewalDt": mohrenewdtbatVar.value,
			    		        "refPharmacopoeia":  "na",
			    		    }
							 });	
							 
			 $.ajax({
	   			 type : "POST",
	                                url :warnamefr+"/Pharmaceutical?method=saveAddressDtls",
	                                 data : myJSONObjapp,
	                                 contentType : "application/json",
	                                 crossDomain : true,
	                                 cache:false,
	                                 headers : {
	         							Authorization : 'Bearer ' + tkn
	         						 },
	   			success : function(response) {
	   				//$('#spinDiv').hide();  
	   				//$("#savefileBtn").prop("disabled", false);
	   			    var data ="";
	   			    data =	JSON.parse(response);
	   			  if (data.code =="0"){
	   				        $("#marketSucc").show();
	   				        setTimeout( "$('#marketSucc').hide();", 4000);
							 	}
	   			 
							   else{ 
								   $("#marketFail").show();	
	                        }
	         },
				 
	   	error : function(jqXHR, textStatus, errorThrown) {
	   		if (jqXHR.status == "401") {
	   			sessionOut();
	   		}
	   		else{
	   			$("#marketFail").show();
	   			
	   		}
	   	 }	
	          });
			       }
				  }
					
					
					function selectFile(type) {
						
						var typ="";
					       typ= 'pdf';
					var docType =type+'appdoc';
					var docTypeSuccess = '#' + docType + 'UploadSucess';
				    var fnSelectFile = '#' + docType + 'File';
				    var doctypeFileName = '#' + docType + 'FileName';
				    var docTypeNofile = '#' + docType + 'NoFile';
				    var docTypeId = '#' + docType;
					
					
					var dNofileErr = type+'docTypeNofileErr';
				     $(docTypeSuccess).hide();
				     $(dNofileErr).hide();
				     if(type!="ECTD"){
					  checkfile(docType,type,typ);
				     }
					if(type=="ECTD"){
					  checkfile(docType,type,"zip");
					}
				  
				}
				function changeMsg(type) {
					var docType =type+'appdoc';
				    var docTypeSuccess = '#' + docType + 'UploadSucess';
				    var docTypeNofile = '#' + docType + 'NoFile';
					
					var dNofileErr = type+'docTypeNofileErr';
					var dupdErr= '#' +type+'uploadErr';
					
				    $(docTypeSuccess).hide();
				    $(dNofileErr).hide();
				    $(dupdErr).hide();
				   
				}	


				function checkfile(docType,type,typ) {
					//alert('typ'+typ) 
					var updErr = type+'uploadErr';
					   $(updErr).hide();
				       //alert(docType+'check file docType')   
				       
				       var fn = '#' + docType + 'File';
				       var fileid = docType + 'File';
				       var files = $(fn)[0].files;
				       var docTypeNofile  = '#' + docType + 'NofileErr';
				       var doctypeFileName= '#' + docType + 'FileName';
				       var docTypeSuccess = '#' + docType + 'UploadSucess';
				       var extnsion = ((document.getElementById(fileid).value).split('.').pop());
				      // alert("extnsion"+docTypeNofile);
				       if( type!="ECTD" ){
				      
				         if(files.length>0   ){
					       //var fd = new FormData();
					      // fd.append('file', files[0], docType + "." + extnsion);
						   
						   var dNofileErr = type+'docTypeNofileErr';
						   var dSuccfileErr = type+'docTypeSuccessErr';
						   var dTypefileErr = type+'doctypeFileName';
						   
					       
					    	    $("#"+dSuccfileErr).hide();
				     	        $("#"+dSuccfileErr).text('');
				                $("#"+dNofileErr).hide();
				                $("#"+dNofileErr).text('');
				                $("#"+dTypefileErr).hide();
				                $("#"+dTypefileErr).text('');
				                
							   
							   
					 	   
				       // Check file selected or not
				            
				     if (files.length > 0) {
				            var lang = '<%=response.getLocale().getLanguage()%>';
				            var fs = files[0].size;
				            var extnsion = ((document.getElementById(fileid).value).split('.').pop());
				           if (extnsion == typ) {
								
								//if (extnsion == 'pdf') {
				                 //  if((doctype!="medicalrep" && fs > 2000000) ||(doctype=="medicalrep" && fs > 6000000)){ 
				                 //if (fs > 20000000) {
				               
									if (fs >2000000) {
				                	 
				                		 $("#"+dNofileErr).show();
				                         $("#"+dNofileErr).text("<fmt:message key='error.filesize'/>");
										 $("#"+dNofileErr).css('color', 'red');
				                        // document.getElementById("docTypeNofileErr").style.color = "red";
				                         document.getElementById(docType + 'File').value = null;
				                         validfile = false;
				          	 	 }
				                 else if (fs === 0) {
				                	//alert(docTypeNofileErr+'else')
				                		 $("#"+dNofileErr).show();
				                         $("#"+dNofileErr).text( "<fmt:message key='error.valid'/>");
										 $("#"+dNofileErr).css('color', 'red');
				                         //document.getElementById("docTypeNofileErr"+sl).style.color = "red";
				                         document.getElementById(docType + 'File').value = null;
				                         validfile = false;
				          	 	 }
				            } else {
								//alert(dNofileErr+'dNofileErr')
				            	   $("#"+dNofileErr).show();
				                   $("#"+dNofileErr).text(
				                              "<fmt:message key='error.fileextension'/>");
											$("#"+dNofileErr).css('color', 'red');
				                   //  document.getElementById(docTypeNofileErr1).style.color = "red";
				                    document.getElementById(docType + 'File').value = null;
				                    validfile = false;
				     	 	      
				            }
				       }
				      }else{
				    	   $("#"+updErr).show();
					 	}  
				   }
				   if( type=="ECTD" ){
					     //alert('ectd'+type) 
				         if(files.length>0  ){
					       //var fd = new FormData();
					      // fd.append('file', files[0], docType + "." + extnsion);
						   
						   var dNofileErr = type+'docTypeNofileErr';
						   var dSuccfileErr = type+'docTypeSuccessErr';
						   var dTypefileErr = type+'doctypeFileName';
						   
					       
					    	    $("#"+dSuccfileErr).hide();
				     	        $("#"+dSuccfileErr).text('');
				                $("#"+dNofileErr).hide();
				                $("#"+dNofileErr).text('');
				                $("#"+dTypefileErr).hide();
				                $("#"+dTypefileErr).text('');
				                
							   
							   
				                //alert('ectd1'+type) 	   
				       // Check file selected or not
				            
				     if (files.length > 0) {
				    	// alert('ectd2'+type) 	   
				            var lang = '<%=response.getLocale().getLanguage()%>';
				            var fs = files[0].size;
				            var extnsion = ((document.getElementById(fileid).value).split('.').pop());
				          // alert( extnsion+" "+typ)
				           if (extnsion == typ) {
				        	 //  alert('ectd3'+type) 	
								//if (extnsion == 'pdf') {
				                 //  if((doctype!="medicalrep" && fs > 2000000) ||(doctype=="medicalrep" && fs > 6000000)){ 
				                 //if (fs > 20000000) {
				              // alert(fs)
									if (fs >8000000000) {
										//alert('ectd4'+type) 	 
				                		 $("#"+dNofileErr).show();
				                         $("#"+dNofileErr).text("<fmt:message key='error.filesize'/>");
										 $("#"+dNofileErr).css('color', 'red');
				                        // document.getElementById("docTypeNofileErr").style.color = "red";
				                         document.getElementById(docType + 'File').value = null;
				                         validfile = false;
				          	 	 }
				                 else if (fs === 0) {
				                	//alert(docTypeNofileErr+'else')
				                		 $("#"+dNofileErr).show();
				                         $("#"+dNofileErr).text( "<fmt:message key='error.valid'/>");
										 $("#"+dNofileErr).css('color', 'red');
				                         //document.getElementById("docTypeNofileErr"+sl).style.color = "red";
				                         document.getElementById(docType + 'File').value = null;
				                         validfile = false;
				          	 	 }
				            } else {
								//alert(dNofileErr+'dNofileErr')
				            	   $("#"+dNofileErr).show();
				                   $("#"+dNofileErr).text(
				                              "<fmt:message key='error.fileextension'/>");
											$("#"+dNofileErr).css('color', 'red');
				                   //  document.getElementById(docTypeNofileErr1).style.color = "red";
				                    document.getElementById(docType + 'File').value = null;
				                    validfile = false;
				     	 	      
				            }
				       }
				      }else{
				    	   $("#"+updErr).show();
					 	}
				      }
				      
				     //  return validfile;
				   }
				   
				   
				  
				  
				  


				  
				  
				  function clearUpload(){
					  //$("#uploadSucc").hide();
				      $("#uploaddupl").hide();
				      $("#uploadFail").hide();	
					 $('#docTable tbody tr').each(function (i, obj) { 
					 var currentRow=$(this);
					  var sl="",typ="",fl="";
					        sl= currentRow.find("td:eq(0)").text();
							fl='appdoc'+sl;  
						   var dNofileErr = 'docTypeNofileErr'+sl;
						   var dSuccfileErr = 'docTypeSuccessErr'+sl;
						   var dTypefileErr = 'doctypeFileName'+sl;
						   
					       
					    	    $("#"+dSuccfileErr).hide();
				     	        $("#"+dSuccfileErr).text('');
				                $("#"+dNofileErr).hide();
				                $("#"+dNofileErr).text('');
				                $("#"+dTypefileErr).hide();
				                $("#"+dTypefileErr).text('');
				                
					
					document.getElementById(fl + 'File').value = null;
					 });
				  }	
				  
				  
				  
				  
				  function getApplicationDtl(){
					    getToken();
						tkn = sessionStorage.getItem("tkn");
					   
					   
						 $.ajax({
								type : "POST",
								url : warnamefr+"/Pharmaceutical?method=getApplicationDetails?appRegId="+appRegIdVar.value,
							    contentType : "application/json",
								crossDomain : true,
								headers : {
									Authorization : 'Bearer ' + tkn
								},
								data:"na",
								success : function(response) {
									var data ="",trHTML="",j=1;	
						 			    data=JSON.parse(response);
						 		  $.each(data.elements, function(i, item) {
						 			      $("#apptrack").val(item.appDtls.trackType).change();
						 			      $("#appstatus").val(item.appDtls.statusId)
						 			   if(item.appDtls.statusId >=4){
						 				  finalDeclarationDisable();
						 				  $("#saveectdBtn").hide();
						 				  /* $("#clearectdBtn").hide(); */
						 			   }
						 			   
						 			if(item.prdDtls != null){
						 				//alert(item.prdDtls.productId)
						 			    $("#productid").val(item.prdDtls.productId);
						 			    $("#appproductid").val(item.prdDtls.appProdId);
						 			    $("#producttrdname").val(item.prdDtls.tradeName);
							 			$("#activeingredient").val(item.prdDtls.activeIngredientFlg);
							 			//$("#activeingredienttxt").val(item.prdDtls.activeIngredient);
							 			$("#strength").val(item.prdDtls.strength);
							 			$("#dosageform").val(item.prdDtls.dosageForm).change();
							 			$("#pack").val(item.prdDtls.packSize);
							 			$("#packmaterial").val(item.prdDtls.descPrimaryPack);
							 			$("#route").val(item.prdDtls.routeOfAdmin).change();
							 			$("#shelflife").val(item.prdDtls.shelfLife);
							 			$("#shelflifefirst").val(item.prdDtls.slAfterFirstOpn);
							 			$("#shelfliferecon").val(item.prdDtls.slAfterDilution);
							 			$("#shelflifePrd").val(item.prdDtls.shelfLifePrd);
							 			$("#shelflifefirstPrd").val(item.prdDtls.slAfterFirstOpnPrd);
							 			$("#shelflifereconPrd").val(item.prdDtls.slAfterDilutionPrd);
							 			$("#storagecondition").val(item.prdDtls.storageConditions);
							 			$("#pharmaco").val(item.prdDtls.pharmacotherapeuticGrp).change();
							 			loadAgentName('subclass',"","na");
							 			$("#pharmacosub").val(item.prdDtls.pharmacotherapeuticSubGrp);
							 			$("#atccd").val(item.prdDtls.atcCode);
							 			$("#therapeutic").val(item.prdDtls.therapeuticIndication);
							 			//$("#revisiondt").val(item.prdDtls.leafletRevisionDate);
							 			var str="",res="";
										if (item.prdDtls.leafletRevisionDate !='' && item.prdDtls.leafletRevisionDate != null) {
											 str = item.prdDtls.leafletRevisionDate.substring(0, 10);
											 res = str.split('-').reverse().join('/');
											}
										$('#revisiondt').val(res);
										$("#appcat").val(item.prdDtls.prodCat).change();
							 			   loadAgentName('Prodsubcat',"","na");
					 			  		$("#appsubcat").val(item.prdDtls.prodSubCat);
							 			//if(item.prdDtls.activeIngredientFlg=="M"){   
										 var data ="",trHTML="",j=1,buttonstyle="";
										 if(item.appDtls.statusId >= 5){
											 buttonstyle="style='text-align:center;display:none'";
										 }
										 else{
											 buttonstyle="style='text-align:center ";
										 }
										 $.each(item.prdDtls.aidtls, function(i, itemact) {
											 //var trHTML="";
											 trHTML += '<tr><td  class="display-none" style="text-align:center">'
													+ j
													+ '</td><td>'
													+itemact.activeIngredient
													+ '</td><td style="display:none">'
													+itemact.aiId
													+ '</td><td>'
													+ '<button   '+buttonstyle+'  id="delbutton" class="btn btn-primary ms-2 mt-1 mt-md-0 btnDelete" type="button" >delete</button>'
													+ '</td></tr>';
													j++;
													
										 });
										 table1 = $('#actTable').append(trHTML);	
											$('#actTable').DataTable({
										        "dom": 'rtip',
										   "bInfo" : false,"searching": false,
										  autoWidth: false,   
										       columns: [
										           { "width": "15%" },
										           { "width": "80%" },
										           { "width": "0%" },
										           { "width": "5%" },
												 ], });
											//$("#actBtn").show();
							 			//}
							 			/*if(item.prdDtls.activeIngredientFlg=="S"){ 
							 				var data ="",trHTML="",j=1;
											 $.each(item.prdDtls.aidtls, function(i, itemact1) {
												 $("#activeingredienttxt").val(itemact1.activeIngredient);
												 $("#activeingredienttxtid").val(itemact1.aiId);
											});
											// $("#actBtn").hide();
							 			}*/
						 			}
						 			if (item.appDtls.declrAnimalSrc == 'Y') {
										$('#animalSourY').prop('checked', true);
									} else {
										$('#animalSourY').prop('checked', false);
									}
						 			if (item.appDtls.priceCertificate == 'Y') {
										$('#pricecertY').prop('checked', true);
									} else {
										$('#pricecertY').prop('checked', false);
									}
						 			
						 			if (item.appDtls.ctdModule1 == 'Y') {
										$('#module1Y').prop('checked', true);
									} else {
										$('#module1Y').prop('checked', false);
									}
						 			if (item.appDtls.ctdModule2 == 'Y') {
										$('#module2Y').prop('checked', true);
									} else {
										$('#module2Y').prop('checked', false);
									}
						 			if (item.appDtls.ctdModule3 == 'Y') {
										$('#module3Y').prop('checked', true);
									} else {
										$('#module3Y').prop('checked', false);
									}
						 			if (item.appDtls.ctdModule4 == 'Y') {
										$('#module4Y').prop('checked', true);
									} else {
										$('#module4Y').prop('checked', false);
									}
						 			if (item.appDtls.ctdModule5 == 'Y') {
										$('#module5Y').prop('checked', true);
									} else {
										$('#module5Y').prop('checked', false);
									}
						 			
						 			if (item.appDtls.finalDeclaration == 'Y') {
										$('#finalDeclaration').prop('checked', true);
										finalDeclarationDisable();
									} else {
										$('#finalDeclaration').prop('checked', false);
									}
						 			
						 			
						 			  $.each(item.addDltls, function(i, itemadd) {
						 				  
						 			  
						 			//alert(itemadd.addressType)
						 			if(itemadd.addressType=="MAH"){
						 				//alert(itemadd.name)
						 				
						 				$("#marketslno").val(itemadd.slno);
						 				$("#marketid").val(itemadd.addId);
						 			    $("#marketname").val(itemadd.name);
							 			$("#marketcountry").val(itemadd.countryId);
							 			$("#marketaddress").val(itemadd.address);
						 			}
						 			
						 			if(itemadd.addressType=="IC"){
						 				//alert(itemadd.name)
						 				$("#invoicingid").val(itemadd.addId);
						 			    $("#invoicingname").val(itemadd.name);
							 			$("#invoicingadd").val(itemadd.address);
							 			
						 			}
						 			
								
						 			 });
									
						 			 $.each(item.fileDtls, function(i, itemfile) {
					                      if(itemfile.docCd =="HAA"){
					                    	  //alert(itemfile.docFileName)
					                          $("#appcatFile").val(itemfile.docFileName);
					                          $("#appcatFileid").val(itemfile.fileUpdId);
					                          $("#appcatFiledoc").val(itemfile.docCd);
					                    	  
					                      }
					                      if(itemfile.docCd =="IC"){
					                    	  $("#invFile").val(itemfile.docFileName);
					                    	  $("#invFileid").val(itemfile.fileUpdId);
					                          $("#invFiledoc").val(itemfile.docCd);
					                      }
					                      if(itemfile.docCd =="PC"){
					                    	  $("#priceFile").val(itemfile.docFileName);
					                    	  $("#priceFileid").val(itemfile.fileUpdId);
					                          $("#priceFiledoc").val(itemfile.docCd);
					                      }
					                      if(itemfile.docCd =="FTD"){
					                    	  $("#apptrackFile").val(itemfile.docFileName);
					                    	  $("#apptrackFileid").val(itemfile.fileUpdId);
					                    	  $("#apptrackFiledoc").val(itemfile.docCd);
					                      }
					                  });
									  });
						 			 
							   if(appstatusVar.value >=4){
								  finalDeclarationDisable();
				 				  $("#saveectdBtn").hide();
				 				  /* $("#clearectdBtn").hide(); */
				 			   }
							   else{
								   if(appRegIdVar.value ==0){
										 $("#FTDUPLOAD").hide();
										 $("#FTDDOWNLOAD").hide();
										 $("#saveAppBTN").show();
										 $("#saveProductBTN").hide();
										 $("#clearProductBTN").hide();
										 }
									 else{
										 $("#FTDUPLOAD").show();
										 $("#FTDDOWNLOAD").show();
										 $("#saveAppBTN").hide();
										 $("#saveProductBTN").show();
										 $("#clearProductBTN").show();
									 }
									 //alert(productidVar.value)
									 // tocheckUploadStatus('HAA');
									 if(productidVar.value ==0){
										 //$("#HAAUPLOAD").hide();
										 //$("#HAADOWNLOAD").hide(); 
										 marketButtonDisable();
									 }
									 else{
										// $("#HAAUPLOAD").show();
										 //$("#HAADOWNLOAD").show(); 
										 marketButtonEnable();
									 }
							   }
								},
								error : function(jqXHR, textStatus, errorThrown) {
									if (jqXHR.status == "401") {
										sessionOut();
									}
								}
						       });
					}
				 	
				  $("#finalDeclaration").change(function() {
					    if(this.checked) {
					    	$('#finalDeclarationErr').hide();
					    }
					});
				  $("#invoicingadd").change(function() {
						 // alert($(this).val()+"1")
							if ( $(this).val() != null ||  $(this).val() != '') {
								//alert('in')
								$('#invoicingaddErr').hide();
								}
							else{
								$('#invoicingaddErr').show();
								
							}
						});
				  
				  function validateeditApp(){
					    var res = true;	
					    
					    //alert("1"+res)
						if (!($('#finalDeclaration').is(':checked')) ){
							$('#finalDeclarationErr').show();
							res = false;
						}
					 
						return res;
				  }
				  
				  
				  function editAppDtl(){
					    $("#editSucc").hide();
				     	$("#editdupl").hide();
				        $("#editFail").hide();
			      var res=  validateeditApp();  
			      // alert(res)
			       if(res){
			    	 var isavailica="";
			    	 if(invoicingnameVar.value!=""){
			    		 isavailica="Y"; 
			    	 }
			    	 else{
			    		 isavailica="N";
			    	 }
			    	 
			    	   if ($('#animalSourY').is(':checked')) {
			    		   $('#animalSourY').val('Y');
						} else {
							$('#animalSourY').val('N');
						}
			    	   if ($('#pricecertY').is(':checked')) {
			    		   $('#pricecertY').val('Y');
						} else {
							$('#pricecertY').val('N');
						}
			    	   
			    	   if ($('#module1Y').is(':checked')) {
			    		   $('#module1Y').val('Y');
			    	   } else {
							$('#module1Y').val('N');
						}
			    	  
			    	   if ($('#module2Y').is(':checked')) {
			    		   $('#module2Y').val('Y');
			    	   } else {
							$('#module2Y').val('N');
						}
			    	   
			    	   if ($('#module3Y').is(':checked')) {
			    		   $('#module3Y').val('Y');
			    	   } else {
							$('#module3Y').val('N');
						}
			    	   
			    	   if ($('#module4Y').is(':checked')) {
			    		   $('#module4Y').val('Y');
			    	   } else {
							$('#module4Y').val('N');
						}
			    	   
			    	   if ($('#module5Y').is(':checked')) {
			    		   $('#module5Y').val('Y');
			    	   } else {
							$('#module5Y').val('N');
						}
			    	   
			    	   if ($('#finalDeclaration').is(':checked')) {
			    		   $('#finalDeclaration').val('Y');
			    	   } else {
							$('#finalDeclaration').val('N');
						}
			    	 
			    	 /* if($("#ICappdocFile").val()!= ""){ 
			    	   saveUpload('IC','uploadFile');
			    	  }
			    	  if($("#PCappdocFile").val()!= ""){ 
			    	   saveUpload('PC','uploadFile');
			    	  } */
			    	  
			    	   var myJSONObjapp=	JSON.stringify({
                            "appRegId": appRegIdVar.value,
			    		    "appCat":appcatVar.value,
			    		    "appSubCat":appsubcatVar.value,
			    		    "trackType": apptrackVar.value,
			    		    "declrAnimalSrc": animalSourYVar.value,
			    		    "priceCertificate": pricecertYVar.value,
			    		    "ctdModule1":module1YVar.value,
			    		    "ctdModule2":module2YVar.value,
			    		    "ctdModule3":module3YVar.value,
			    		    "ctdModule4":module4YVar.value,
			    		    "ctdModule5":module5YVar.value,
			    		    "finalDeclaration": finalDeclarationVar.value,
			    		    "isIcaAvailable": isavailica,
			    		    "icAddress": {
			    		        "addId": (invoicingidVar.value==""?"na":invoicingidVar.value),
			    		        "addressType": "IC",
			    		        "name": invoicingnameVar.value,
			    		        "address": invoicingaddVar.value,
			    		        "countryId": "na",
			    		        "regNo": "na",
			    		        "regIssueDt": "",
			    		        "regRenewalDt": "",
			    		        "refPharmacopoeia": ""
			    		    }
							 });	
							 
			 $.ajax({
	   			 type : "POST",
	                                url :warnamefr+"/Pharmaceutical?method=editApplication",
	                                 data : myJSONObjapp,
	                                 contentType : "application/json",
	                                 crossDomain : true,
	                                 cache:false,
	                                 headers : {
	         							Authorization : 'Bearer ' + tkn
	         						 },
	   			success : function(response) {
	   				//$('#spinDiv').hide();  
	   				//$("#savefileBtn").prop("disabled", false);
	   			    var data ="";
	   			    data =	JSON.parse(response);
	   			  if (data.code =="0"){
	   				        $('#editAppDtlbtn').hide();
	   			            $("#editSucc").show();
	   				        setTimeout( "$('#editSucc').hide();", 4000);
							 	}
	   			  else if (data.code =="-12"){
	   				   $("#editFail").show();
						$("#editFail").text(data.description);
						$("#editFail").css('color', 'red');
						$("#editFail").css('font-weight',
								'bold');
	   			 }
	   			 
							   else{ 
								   $("#editFail").show();	
	                        }
	         },
				 
	   	error : function(jqXHR, textStatus, errorThrown) {
	   		if (jqXHR.status == "401") {
	   			sessionOut();
	   		}
	   		else{
	   			$("#editFail").show();
	   			
	   		}
	   	 }	
	          });
			       }
				  }
					
			
				  
				  
				  function  finalDeclarationDisable(){
					 // alert('in')
				        $('#actBtn').hide();
					    $('#animalSourY').attr('disabled', true);
						$('#pricecertY').attr('disabled', true);
						$('#module1Y').attr('disabled', true);
						$('#module2Y').attr('disabled', true);
						$('#module3Y').attr('disabled', true);
						$('#module4Y').attr('disabled', true);
						$('#module5Y').attr('disabled', true);
						$('#finalDeclaration').attr('disabled', true);
						$('#editAppDtlbtn').hide();
						$('#clearAppDtlbtn').hide();
						$('#saveAppBTN').hide();
						$('#clearAppBTN').hide();
						$('#saveMarketSingleMAHBTN').hide();
						$('#saveMarketSingleAIMBTN').hide();
						$('#saveMarketSingleEMBTN').hide();
						$('#saveMarketSingleFPMBTN').hide();
						$('#saveMarketSinglePPBTN').hide();
						$('#saveMarketSingleSPBTN').hide();
						$('#saveMarketSingleBRBTN').hide();
						
						
						$('#ICFILEUPLOAD').hide();
						$('#ICFILEREUPLOAD').hide();
						$('#PCFILEUPLOAD').hide();
						$('#PCFILEREUPLOAD').hide();
						
						
						
						/* $('#GMPFILEUPLOAD').attr('disabled', true);
						$('#GMPFILEDOWNLOAD').attr('disabled', true); */
						
						/* $('#savemarketBTN').attr('disabled', true); */
						$('#saveProductBTN').hide();
						$('#clearmarketBTN').hide();
						$('#clearProductBTN').hide();
						$('#HAAUPLOAD').attr('disabled', true);
						$('#HAAREUPLOAD').attr('disabled', true);
						$('#HAADOWNLOAD').attr('disabled', true);
						
						 $("#FTDUPLOAD").attr('disabled', true);
						 $("#FTDDOWNLOAD").attr('disabled', true);
						/*  $("#saveAppBTN").attr('disabled', true); */
						 
				  }
				  
				  
				  function clearDeclarationDtl(){
					  //alert("in")
				        $('#invoicingname').val("");
					    $('#invoicingid').val("");
						$('#invoicingadd').val("");
						$('#invFile').val("");
						$('#invFileid').val("");
						$('#invFiledoc').val("");
						$('#priceFile').val("");
						$('#priceFileid').val("");
						$('#priceFiledoc').val("");
						document.getElementById( 'ICappdocFile').value = null;	
						document.getElementById( 'PCappdocFile').value = null;	
						// alert("in1")
						
						$("#ICuploadErr").hide();
						$("#invoicingaddErr").hide();
						$('#animalSourY').prop('checked', false);
						$('#pricecertY').prop('checked', false);
						$('#module1Y').prop('checked', false);
						$('#module2Y').prop('checked', false);
						$('#module3Y').prop('checked', false);
						$('#module4Y').prop('checked', false);
						$('#module5Y').prop('checked', false);
						$('#finalDeclaration').prop('checked', false);
					
						
				  }
				  
				  
				  function downloadApplicationFile(type){
					  getToken();
					  tkn = sessionStorage.getItem("tkn");
					 if(type =='HAA'){
					  var myJSNObjType = JSON.stringify({
						  "fileCat":"A",
						  "userRegId":loginregid,
						  "appRegId":appRegIdVar.value,
						  "fileName":appcatFileVar.value,
		                });
					 }
					if(type =='GMP'){
						  var myJSNObjType = JSON.stringify({
							  "fileCat":"A",
							  "userRegId":loginregid,
							  "appRegId":appRegIdVar.value,
							  "fileName":gmpFileVar.value,
			                });
						 }
					 if(type =='FTD'){
						  var myJSNObjType = JSON.stringify({
							  "fileCat":"A",
							  "userRegId":loginregid,
							  "appRegId":appRegIdVar.value,
							  "fileName":apptrackFileVar.value,
			                });
						 }
					 if(type =='IC'){
						  var myJSNObjType = JSON.stringify({
							  "fileCat":"A",
							  "userRegId":loginregid,
							  "appRegId":appRegIdVar.value,
							  "fileName":invFileVar.value,
			                });
						 }
					 if(type =='PC'){
						  var myJSNObjType = JSON.stringify({
							  "fileCat":"A",
							  "userRegId":loginregid,
							  "appRegId":appRegIdVar.value,
							  "fileName":priceFileVar.value,
			                });
						 }
					 $.ajax({
							type : "POST",
							url : warnamefr+"/Dashboard?method=downloadFile",
						    contentType : "application/json",
							crossDomain : true,
							headers : {
								Authorization : 'Bearer ' + tkn
							},
							data:myJSNObjType,
							success : function(datahere) {
								  //$("#downloadSpin").hide();
					 			   if(datahere != null && datahere.length > 0 ){
				                        var dataString=datahere; 
				                       // var jsonData = JSON.parse(datahere);     
				                                //alert('jsonData: '+jsonData);     
				                        var type = 'application/pdf';
				                        let blob = null;
				                        const blobURL = URL.createObjectURL( pdfBlobConversion(datahere, 'application/pdf'));
				                        window.open(blobURL, 'printpopup', 'directories=0,location=0,status=0,scrollbars=no,titlebar=no,toolbar=0,menubar=no,scrollbars=0,resizable=0, width=800,height=780');
				                        this.target = 'printpopup';
				                     

				                     }
					 			   // console.log(data+'data');
							
									
							},
							error : function(jqXHR, textStatus, errorThrown) {
								//$("#downloadSpin").hide();
								if (jqXHR.status == "401") {
									sessionOut();
								}
							}
					       });
				  }
				  
				  
				  function saveUpload(type,option){
					 
				       var typ="";
					       typ= 'pdf';
					    var docType =type+'appdoc';
				  	    var res = true;
				  	     checkfile(docType,type,typ);
				  	 // alert("isValid"+isValid)
				         var v_doc ="",v_reqId="",v_url="";
				          if ( res == true) {
				      	      var fn = '#' + docType + 'File';
				              var fileid = docType + 'File';
				              var files = $(fn)[0].files;
				              var docTypeNofile = '#' + docType + 'NoFile';
				              var doctypeFileName = '#' + docType + 'FileName';
				              var docTypeSuccess = '#' + docType + 'UploadSucess';
				              var fnSelectFile = '#' + docType + 'File';
				             
				               var dNofileErr = type+'docTypeNofileErr';
							   var dSuccfileErr = type+'docTypeSuccessErr';
							   var dTypefileErr = type+'doctypeFileName';
				              
					    	    $("#"+dSuccfileErr).hide();
				     	        $("#"+dSuccfileErr).text('');
				                $("#"+dNofileErr).hide();
				                $("#"+dNofileErr).text('');
				                $("#"+dTypefileErr).hide();
				                $("#"+dTypefileErr).text('');
				    	 	  
				              
				               if (files.length > 0) {
				              	// $('#ButtonSave'+sl).hide();
				               if(option=="uploadFile"){
				              	 var myJSONObjapp=	JSON.stringify({
			        			      "fileCat": "A",
			        			      "userRegId": loginregid,
			        			      "appRegId": appRegIdVar.value
									});	
				              	  v_url="/getBackendResposeUploadSingle?method=uploadFile"
				              			  
				              		 if(type=="HAA"){
				              			$("#HAAUPLOAD span").removeClass("d-none"); 
				              		 }
				                  }
				                if(option=="reupload"  && type=="GMP" ){
					              	 var myJSONObjapp=	JSON.stringify({
				        			      "fileCat": "A",
				        			      "userRegId": loginregid,
				        			      "appRegId": appRegIdVar.value,
				        			      "fileName":gmpFileVar.value,
										  "fileUpdId":gmpFileidVar.value,
										  "docCd":gmpFiledocVar.value,
										});
					              	  v_url="/getBackendResposeReUploadSingle?method=reupload"
					                  }
				                if(option=="reupload"  && type=="FTD" ){
					              	 var myJSONObjapp=	JSON.stringify({
				        			      "fileCat": "A",
				        			      "userRegId": loginregid,
				        			      "appRegId": appRegIdVar.value,
				        			      "fileName":apptrackFileVar.value,
										  "fileUpdId":apptrackFileidVar.value,
										  "docCd":apptrackFiledocVar.value,
										});
					              	  v_url="/getBackendResposeReUploadSingle?method=reupload";
					              	  $("#FTDUPLOAD span").removeClass("d-none");
					                  }
				                if(option=="reupload"  && type=="HAA" ){
					              	 var myJSONObjapp=	JSON.stringify({
				        			      "fileCat": "A",
				        			      "userRegId": loginregid,
				        			      "appRegId": appRegIdVar.value,
				        			      "fileName":appcatFileVar.value,
										  "fileUpdId":appcatFileidVar.value,
										  "docCd":appcatFiledocVar.value,
										});
					              	  v_url="/getBackendResposeReUploadSingle?method=reupload"
					              	  $("#HAAREUPLOAD span").removeClass("d-none");	  
					                  }
				                if(option=="reupload"  && type=="IC" ){
					              	 var myJSONObjapp=	JSON.stringify({
				        			      "fileCat": "A",
				        			      "userRegId": loginregid,
				        			      "appRegId": appRegIdVar.value,
				        			      "fileName":invFileVar.value,
										  "fileUpdId":invFileidVar.value,
										  "docCd":invFiledocVar.value,
										});
					              	  v_url="/getBackendResposeReUploadSingle?method=reupload"
					                  }
				                if(option=="reupload"  && type=="PC" ){
					              	 var myJSONObjapp=	JSON.stringify({
				        			      "fileCat": "A",
				        			      "userRegId": loginregid,
				        			      "appRegId": appRegIdVar.value,
				        			      "fileName":priceFileVar.value,
										  "fileUpdId":priceFileidVar.value,
										  "docCd":priceFiledocVar.value,
										});
					              	  v_url="/getBackendResposeReUploadSingle?method=reupload"
					                  }
				              	     var fileName = $(fnSelectFile).val().replace(/.*(\/|\\)/, '');
				                     var extnsion=((document.getElementById(fileid).value).split('.').pop());
				                     var fd = new FormData();
				                     fd.append('multipleFiles', files[0],type +"."+extnsion);
				                                     //console.log(fileName+"."+extnsion);
				                     fd.append('jsonString',myJSONObjapp);
				                     getToken();
				                     tkn = window.sessionStorage.getItem("tkn");
				                                $.ajax({
				                                      type : "POST",
				                                       url :warnamefr+v_url,
				                                     //  url :warnamefr+"/getBackendResposeReUploadSingle?method=reupload",
				                                        data : fd,
				                                        enctype:'multipart/form-data',
				                                        timeout : 180000,
				                                        processData: false,
				                                        contentType: false,
				                                        cache:false,
				                                        async: false,
				                                      headers : {
				                                           Authorization : 'Bearer ' + tkn
				                                      },
				                                      success : function(response) {
				                                      	var data ="";
				              						   data =	JSON.parse(response);
				              						    console.log(response+'data');
				              							  if (data.code =="0"){
				              								// $.each(data.elements, function(i, item) {
				              									
				              							  	      // alert('in')
				              							  	    	   
					    	 
				              							  	    	     $("#"+dSuccfileErr).show();
				                 									     $("#"+dSuccfileErr).text("<fmt:message key='label.fileSucc'/>");
				                 									     $("#"+dSuccfileErr).css('font-weight', 'bold');
				                 									     $("#"+dSuccfileErr).css('color', 'green');
				                 									    // document.getElementById("#"+dSuccfileErr).style.color = "green";
				                 									     setTimeout( "$('#"+dSuccfileErr+"').hide();", 5000);
				                 									     document.getElementById(docType+'File').value=null;
				                 									     
				                 									    
				                 								     if(option=="uploadFile"  && type=="HAA" ){
				                 								    	$.each(data.elements, function(i, item) {
				                 								    		$('#appcatFile').val(item.docFileName);
				                 								    		$('#appcatFileid').val(item.fileUpdId);
				                 								    		$('#appcatFiledoc').val(item.docCd);
				                 								    		tocheckUploadStatus('HAA');
				                 								    	});
				                 								    	}
				                 								     if(option=="uploadFile"  && type=="PC" ){
					                 								    	$.each(data.elements, function(i, item) {
					                 								    		$('#priceFile').val(item.docFileName);
					                 								    		$('#priceFileid').val(item.fileUpdId);
					                 								    		$('#priceFiledoc').val(item.docCd);
					                 								    		tocheckUploadStatus('PC');
					                 								    	});
				                 								     }
					                 								   if(option=="uploadFile"  && type=="IC" ){
						                 								    	$.each(data.elements, function(i, item) {
						                 								    		$('#invFile').val(item.docFileName);
						                 								    		$('#invFileid').val(item.fileUpdId);
						                 								    		$('#invFiledoc').val(item.docCd);
						                 								    		tocheckUploadStatus('IC');
						                 								    	});
				                 								     }
				                 									   
				              								   }
				              							   else{

				              								   //$('#ButtonSave'+sl).show();
				            							  	      
				            							  	      $("#"+dNofileErr).show();
				                                                  $("#"+dNofileErr).text("<fmt:message key='error.upload'/>");
				                                                  $("#"+dNofileErr).css('font-weight', 'bold');
				                                                  $("#"+dNofileErr).css('color', 'red');
				                                                  
				                                                  document.getElementById(docType+'File').value=null;
				            							  	 	   
				                                                  
				              								   }
				              							 
				              							$("#FTDUPLOAD span").addClass("d-none");
                 									    $("#HAAREUPLOAD span").addClass("d-none");
                 									    $("#HAAUPLOAD span").addClass("d-none");
				                                      },
				                                    
				                                      error : function(jqXHR, textStatus, errorThrown) {
				                                           if (jqXHR.status == "401") {
				                                                getToken();
				                                           }
				                                            $("#FTDUPLOAD span").addClass("d-none");
	                 									    $("#HAAREUPLOAD span").addClass("d-none"); 
	                 									    $("#HAAUPLOAD span").addClass("d-none");
				                                      }
				                                 });  
				                            

				                      }
				              
				                   }              
				  	   
				     }
				          
/* 				    $('#accordionExample2').on('show.bs.collapse', function (e) {
				    	 alert('open'+ e.target.id)
				    	
				    	});
				    	  */
				    	/*$('#accordionExample2').on('hide.bs.collapse', function (e) {
				    		 alert('close'+ e.target.id)
				    		 if(e.target.id =="collapseOne"){
					    		 saveAppDtl('One','Two');
					    		}
				    		else if(e.target.id =="collapseThree"){
					    		saveProductDtl('Three','Four');
					    		}
				    		else if(e.target.id =="collapseFour"){
					    		saveMarketDtl('Four','Five');
					    		}
				    		else if(e.target.id =="collapseFive"){
					    		editAppDtl('Five','Six');
					    		} 
				    		/*  if(e.target.id =="collapseOne"){
					    		 collapseopen('Two');
					    		}
				    		else if(e.target.id =="collapseThree"){
				    			collapseopen('Four');
					    		}
				    		else if(e.target.id =="collapseFour"){
				    			collapseopen('Five');
					    		}
				    		else if(e.target.id =="collapseFive"){
				    			collapseopen('Six');
					    		} */
				    //	});
				    	
				  /*function collapseopen(idval){
					  alert("in"+idval)
					   $("#collapse"+idval).addClass("show"); 
			           $("#heading"+idval+" btn").removeClass("collapsed"); 
			           $("#heading"+idval+" btn").attr("aria-expanded","true"); 
					  
				  }	 */  
				  
				  
				  function clearForm(){
					  clearAppdtl();
					  clearProductDtl();
					  /* clearMarketDtl(); */
					  clearDeclarationDtl();
				  }
				  
				  
				  function saveEctd123(type){
					  $('#progressBar').width( '0%').html( '0%');
				       var typ="";
				       typ= 'zip';
				    var docType =type+'appdoc';
			  	    var res = true;
			  	     checkfile(docType,type,typ);
			  	 // alert("isValid"+isValid)
			         var v_doc ="",v_reqId="";
			          if ( res == true) {
			      	      var fn = '#' + docType + 'File';
			              var fileid = docType + 'File';
			              var files = $(fn)[0].files;
			              var docTypeNofile = '#' + docType + 'NoFile';
			              var doctypeFileName = '#' + docType + 'FileName';
			              var docTypeSuccess = '#' + docType + 'UploadSucess';
			              var fnSelectFile = '#' + docType + 'File';
			             
			               var dNofileErr = type+'docTypeNofileErr';
						   var dSuccfileErr = type+'docTypeSuccessErr';
						   var dTypefileErr = type+'doctypeFileName';
			              
				    	    $("#"+dSuccfileErr).hide();
			     	        $("#"+dSuccfileErr).text('');
			                $("#"+dNofileErr).hide();
			                $("#"+dNofileErr).text('');
			                $("#"+dTypefileErr).hide();
			                $("#"+dTypefileErr).text('');
			    	 	  
			              
			               if (files.length > 0) {
			              	// $('#ButtonSave'+sl).hide();
			              
			              	 var myJSONObjapp=	JSON.stringify({
		        			      "pAppRegId": appRegIdVar.value
								});	
			              	 
			              	   
			              	     var fileName = $(fnSelectFile).val().replace(/.*(\/|\\)/, '');
			                     var extnsion=((document.getElementById(fileid).value).split('.').pop());
			                     var fd = new FormData();
			                     fd.append('ectdfile', files[0],type +"."+extnsion);
			                                     //console.log(fileName+"."+extnsion);
			                     fd.append('pAppRegId',appRegIdVar.value);
			                     getToken();
			                     tkn = window.sessionStorage.getItem("tkn");
			                                $.ajax({
			                                      type : "POST",
			                                      // url :warnamefr+"/getBackendResposeUploadECTD?method=submitApplication",
			                                        url :warnamefr+"/getBackendResposeUploadECTD?method=reSubmitApplication",
			                                        data : fd,
			                                        enctype:'multipart/form-data',
			                                        timeout : 180000,
			                                        processData: false,
			                                        contentType: false,
			                                        cache:false,
			                                      
			                                      headers : {
			                                           Authorization : 'Bearer ' + tkn
			                                      },
			                                      xhr: function () { 
			                                          var xhr = new XMLHttpRequest(); 
			                                       //   xhr.upload.addEventListener("progress", onUploadProgress, false);
			                                        xhr.upload.onprogress = function (e) { 
			                                              if (e.lengthComputable) { 
			                                            	  
			                                               var percentage = (e.loaded / e.total) * 100; 
			                                              $('#progressBar').width(percentage + '%').html(percentage.toFixed(2) + '%'); 
			                                              } 
			                                          }; 
			                                          return xhr; 
			                                      },
			                                      success : function(response) {
			                                      	var data ="";
			              						   data =	JSON.parse(response);
			              						    console.log(response+'data');
			              							  if (data.code =="0"){
			              								// $.each(data.elements, function(i, item) {
			              									
			              							  	      // alert('in')
			              							  	    	    
				    	 
			              							  	    	     $("#"+dSuccfileErr).show();
			                 									     $("#"+dSuccfileErr).text("<fmt:message key='label.fileSucc'/>");
			                 									     $("#"+dSuccfileErr).css('font-weight', 'bold');
			                 									    $("#"+dSuccfileErr).css('color', 'green');
			                 									    // document.getElementById("#"+dSuccfileErr).style.color = "green";
			                 									    
			                                                      
			                 									   document.getElementById(docType+'File').value=null;
			                 									  $('#progressBar').width( '0%').html( '0%');
			              								   }
			              							   else{

			              								   //$('#ButtonSave'+sl).show();
			            							  	      
			            							  	      $("#"+dNofileErr).show();
			                                                  $("#"+dNofileErr).text("<fmt:message key='error.upload'/>");
			                                                  $("#"+dNofileErr).css('font-weight', 'bold');
			                                                  $("#"+dNofileErr).css('color', 'red');
			                                                  
			                                                  document.getElementById(docType+'File').value=null;
			                                                  $('#progressBar').width( '0%').html( '0%');
			                  							   
			              								   }
			              							 
			                                           
			                                      },
			                                    
			                                      error : function(jqXHR, textStatus, errorThrown) {
			                                    	  $("#"+dNofileErr).show();
	                                                  $("#"+dNofileErr).text("<fmt:message key='error.upload'/>");
	                                                  $("#"+dNofileErr).css('font-weight', 'bold');
	                                                  $("#"+dNofileErr).css('color', 'red');
	                                                  $('#progressBar').width( '0%').html( '0%');
			                                        if (jqXHR.status == "401") {
			                                                getToken();
			                                           }
			                                      }
			                                 });  
			                            

			                      }
			              
			                   } 
				  }
			          
			          
			          
			          function backbtn(){
			        	  window.location.href = context	+ "/dashboard";
			          }
			          
			          
			          function saveMarketSingle(type){
			        	     getToken();
		                     tkn = window.sessionStorage.getItem("tkn");
			          
			        	  if(type =="BR"){
			                $("#marketBatSucc").hide();
					     	$("#marketBatdupl").hide();
					        $("#marketBatFail").hide();
			        	  }
			        	  if(type =="SP"){
				                $("#marketSecSucc").hide();
						     	$("#marketSecdupl").hide();
						        $("#marketSecFail").hide();
				        	  }
			        	  if(type =="PP"){
				                $("#marketPriSucc").hide();
						     	$("#marketPridupl").hide();
						        $("#marketPriFail").hide();
				        	  }
			        	  if(type =="FPM"){
				                $("#marketFinishSucc").hide();
						     	$("#marketFinishdupl").hide();
						        $("#marketFinishFail").hide();
				        	  }
			        	  if(type =="EM"){
				                $("#marketExcSucc").hide();
						     	$("#marketExcdupl").hide();
						        $("#marketExcFail").hide();
				        	  }
			        	  if(type =="AIM"){
				                $("#marketGmpSucc").hide();
						     	$("#marketGmpdupl").hide();
						        $("#marketGmpFail").hide();
				        	  }
			        	  if(type =="MAH"){
				                $("#marketSucc").hide();
						     	$("#marketdupl").hide();
						        $("#marketFail").hide();
				        	  }
				       var res=  validateManufactdtl(type);  
				       if(res){
				    	   if(type =="BR"){
				      
				    	   var myJSONObjapp=	JSON.stringify({
				    		       "appRegId": appRegIdVar.value,
				    		        "slno": (manufactbatslnoVar.value==""?"na":manufactbatslnoVar.value),
				    		        "addId": (manufactbatidVar.value==""?"na":manufactbatidVar.value),
				    		        "addressType": "BR",
				    		        "name":manufactbatnameVar.value,
				    		        "address": manufactbataddVar.value,
				    		        "countryId":  "na",
				    		        "regNo": (mohregnobatVar.value==""?"na":mohregnobatVar.value),
				    		        "regIssueDt": mohissdtbatVar.value,
				    		        "regRenewalDt": mohrenewdtbatVar.value,
				    		        "refPharmacopoeia":  "na",
				    		   });	
				    	   $("#saveMarketSingleBRBTN span").removeClass("d-none");
				    	   }
				    	   if(type =="SP"){
							      
					    	   var myJSONObjapp=	JSON.stringify({
					    		   "appRegId": appRegIdVar.value,
					    		   "slno": (manufactsecslnoVar.value==""?"na":manufactsecslnoVar.value),
					    		   "addId": (manufactsecidVar.value==""?"na":manufactsecidVar.value),
				    		        "addressType": "SP",
				    		        "name": manufactsecnameVar.value,
				    		        "address":manufactsecaddVar.value,
				    		        "countryId": "na",
				    		        "regNo":(mohregnosecVar.value==""?"na":mohregnosecVar.value),
				    		        "regIssueDt": mohissdtsecVar.value,
				    		        "regRenewalDt": mohrenewdtsecVar.value,
				    		        "refPharmacopoeia":  "na",
					    		   });	
					    	   $("#saveMarketSingleSPBTN span").removeClass("d-none");
					    	   }
				    	   if(type =="PP"){
							      
					    	   var myJSONObjapp=	JSON.stringify({
					    		   "appRegId": appRegIdVar.value,
					    		   "slno": (manufactprislnoVar.value==""?"na":manufactprislnoVar.value),
					    		   "addId": (manufactpriidVar.value==""?"na":manufactpriidVar.value),
				    		        "addressType": "PP",
				    		        "name": manufactprinameVar.value,
				    		        "address": manufactpriaddVar.value,
				    		        "countryId": "na",
				    		        "regNo": (mohregnopriVar.value==""?"na":mohregnopriVar.value),
				    		        "regIssueDt": mohissdtpriVar.value,
				    		        "regRenewalDt": mohrenewdtpriVar.value,
				    		        "refPharmacopoeia": "na"
					    		   });	
					    	   $("#saveMarketSinglePPBTN span").removeClass("d-none");
					    	   }
				    	   if(type =="FPM"){
							      
					    	   var myJSONObjapp=	JSON.stringify({
					    		   "appRegId": appRegIdVar.value,
					    		   "slno": (manufactfinishslnoVar.value==""?"na":manufactfinishslnoVar.value),
					    		   "addId": (manufactfinishidVar.value==""?"na":manufactfinishidVar.value),
				    		        "addressType": "FPM",
				    		        "name": manufactfinishnameVar.value,
				    		        "address": manufactfinishaddVar.value,
				    		        "countryId":  "na",
				    		        "regNo":(mohregnofinishVar.value==""?"na":mohregnofinishVar.value), 
				    		        "regIssueDt": mohissdtfinishVar.value,
				    		        "regRenewalDt": mohrenewdtfinishVar.value,
				    		        "refPharmacopoeia": "na",
					    		   });
					    	   $("#saveMarketSingleFPMBTN span").removeClass("d-none");
					    	   }
				    	   if(type =="EM"){
							      
					    	   var myJSONObjapp=	JSON.stringify({
					    		   "appRegId": appRegIdVar.value,
					    		   "slno": (manufactexcslnoVar.value==""?"na":manufactexcslnoVar.value),
					    		   "addId":(manufactexcidVar.value==""?"na":manufactexcidVar.value),
				    		        "addressType": "EM",
				    		        "name": manufactexcnameVar.value,
				    		        "address": manufactexcaddressVar.value,
				    		        "countryId":manufactexccountryVar.value,
				    		        "regNo": "na",
				    		        "regIssueDt": "na",
				    		        "regRenewalDt": "na",
				    		        "refPharmacopoeia": manufactexcrefVar.value,
					    		   });	
					    	   $("#saveMarketSingleEMBTN span").removeClass("d-none");
					    	   }
				    	   if(type =="AIM"){
							      
					    	   var myJSONObjapp=	JSON.stringify({
					    		   "appRegId": appRegIdVar.value,
					    		   "slno": (manufactactslnoVar.value==""?"na":manufactactslnoVar.value),
					    		   "addId": (manufactactidVar.value==""?"na":manufactactidVar.value),
				    		        "addressType": "AIM",
				    		        "name": manufactactnameVar.value,
				    		        "address": manufactactaddressVar.value,
				    		        "countryId": manufactactcountryVar.value,
				    		        "regNo": "na",
				    		        "regIssueDt": "na",
				    		        "regRenewalDt": "na",
				    		        "refPharmacopoeia": "na"
					    		   });
					    	 $("#saveMarketSingleAIMBTN span").removeClass("d-none");
					    	   }
				    	   if(type =="MAH"){
				    		var myJSONObjapp=	JSON.stringify({
				    	      "appRegId": appRegIdVar.value,
				    		   "slno":  (marketslnoVar.value==""?"na":marketslnoVar.value),
				    		   "addId": (marketidVar.value==""?"na":marketidVar.value),
			    		        "addressType": "MAH",
			    		        "name": marketnameVar.value,
			    		        "address": marketaddressVar.value,
			    		        "countryId":marketcountryVar.value,
			    		        "regNo":  "na",
			    		        "regIssueDt":  "na",
			    		        "regRenewalDt":  "na",
			    		        "refPharmacopoeia":  "na",
				    		});
				    		$("#saveMarketSingleMAHBTN span").removeClass("d-none");
				    	   }
				 $.ajax({
		   			 type : "POST",
		                                url :warnamefr+"/Pharmaceutical?method=saveAddress",
		                                 data : myJSONObjapp,
		                                 contentType : "application/json",
		                                 crossDomain : true,
		                                 cache:false,
		                                 headers : {
		         							Authorization : 'Bearer ' + tkn
		         						 },
		   			success : function(response) {
		   				//$('#spinDiv').hide();  
		   				//$("#savefileBtn").prop("disabled", false);
		   			    var data ="";
		   			    data =	JSON.parse(response);
		   			 if(type =="BR"){
		   			         if (data.code =="0"){
		   				        $("#marketBatSucc").show();
		   				        setTimeout( "$('#marketBatSucc').hide();", 4000);
		   				        clearMarketDtl(type);
		   				        getMarketSingle(type);
								 	}
		   			 
								   else{ 
									   $("#marketBatFail").show();	
		                        }
		   			        }
		   			if(type =="SP"){
	   			         if (data.code =="0"){
	   				        $("#marketSecSucc").show();
	   				        setTimeout( "$('#marketSecSucc').hide();", 4000);
	   				        clearMarketDtl(type);
	   				        getMarketSingle(type);
							 	}
	   			 
							   else{ 
								   $("#marketSecFail").show();	
	                        }
	   			        }
		   			if(type =="PP"){
	   			         if (data.code =="0"){
	   				        $("#marketPriSucc").show();
	   				        setTimeout( "$('#marketPriSucc').hide();", 4000);
	   				        clearMarketDtl(type);
	   				        getMarketSingle(type);
							 	}
	   			 
							   else{ 
								   $("#marketPriFail").show();	
	                        }
	   			        }
		   			if(type =="FPM"){
	   			         if (data.code =="0"){
	   				        $("#marketFinishSucc").show();
	   				        setTimeout( "$('#marketFinishSucc').hide();", 4000);
	   				        clearMarketDtl(type);
	   				        getMarketSingle(type);
							 	}
	   			 
							   else{ 
								   $("#marketFinishFail").show();	
	                        }
	   			        }
		   			if(type =="EM"){
	   			         if (data.code =="0"){
	   				        $("#marketExcSucc").show();
	   				        setTimeout( "$('#marketExcSucc').hide();", 4000);
	   				        clearMarketDtl(type);
	   				        getMarketSingle(type);
							 	}
	   			 
							   else{ 
								   $("#marketExcFail").show();	
	                        }
	   			        }
		   			if(type =="AIM"){
	   			         if (data.code =="0"){
	   			        	  if(manufactactslnoVar.value ==""){
					    	     saveUpload('GMP','uploadFile');
					    	   }
					    	   else{
					    		   saveUpload('GMP','reupload');
					    	    }$("#marketGmpSucc").show();
	   				        setTimeout( "$('#marketGmpSucc').hide();", 4000);
	   				        clearMarketDtl(type);
	   				        getMarketSingle(type);
							 	}
	   			 
							   else{ 
								   $("#marketGmpFail").show();	
	                        }
	   			        }
		   			if(type =="MAH"){
	   			         if (data.code =="0"){
	   			        	 $.each(data.elements, function(i, itemmah) {
	   			        	//	alert(itemmah.addId);
		   			            $("#marketid").val(itemmah.addId);
		   			            $("#marketslno").val(itemmah.slno);
	   			        	 });
	   			        	
	   			            $("#marketSucc").show();
	   				        setTimeout( "$('#marketSucc').hide();", 4000);
	   				        //clearMarketDtl(type);
	   				       }
	   			 
							   else{ 
								   $("#marketFail").show();	
	                        }
	   			         
	   			        }
		   			$("#saveMarketSingleMAHBTN span").addClass("d-none");
		   			$("#saveMarketSingleBRBTN span").addClass("d-none");
		   			$("#saveMarketSingleSPBTN span").addClass("d-none");
		   			$("#saveMarketSinglePPBTN span").addClass("d-none");
		   			$("#saveMarketSingleAIMBTN span").addClass("d-none");
		   			$("#saveMarketSingleEMBTN span").addClass("d-none");
		   			$("#saveMarketSingleFPMBTN span").addClass("d-none");
		         },
					 
		   	error : function(jqXHR, textStatus, errorThrown) {
		   		$("#saveMarketSingleMAHBTN span").addClass("d-none");
	   			$("#saveMarketSingleBRBTN span").addClass("d-none");
	   			$("#saveMarketSingleSPBTN span").addClass("d-none");
	   			$("#saveMarketSinglePPBTN span").addClass("d-none");
	   			$("#saveMarketSingleAIMBTN span").addClass("d-none");
	   			$("#saveMarketSingleEMBTN span").addClass("d-none");
	   			$("#saveMarketSingleFPMBTN span").addClass("d-none");
		   	 
		   		if (jqXHR.status == "401") {
		   			sessionOut();
		   		}
		   		
		   	 }	
		          });
				       }
			          }
			          
			          
			          
			          function getMarketSingle(type){
			        	  getToken();
		                  tkn = window.sessionStorage.getItem("tkn"); 
		                  
		                  if(type=="BR"){
		                    var dataTable = $('#brTable').DataTable();
						    dataTable.destroy(); 
		                  }
		                  else if(type=="SP"){
			                    var dataTable = $('#spTable').DataTable();
							    dataTable.destroy(); 
			                  }
		                  else if(type=="PP"){
			                    var dataTable = $('#ppTable').DataTable();
							    dataTable.destroy(); 
			                  }
		                  else if(type=="FPM"){
			                    var dataTable = $('#fpmTable').DataTable();
							    dataTable.destroy(); 
			                  }
		                  else if(type=="EM"){
			                    var dataTable = $('#emTable').DataTable();
			                    
							    dataTable.destroy(); 
			                  }
		                  else if(type=="AIM"){
			                    var dataTable = $('#aimTable').DataTable();
							    dataTable.destroy(); 
			                  }
				     $.ajax({
		   			 type : "POST",
		                                url :warnamefr+"/Pharmaceutical?method=getAddressDetails?addType="+type+"%26appRegId="+appRegIdVar.value,
		                                 data : "na",
		                                 contentType : "application/json",
		                                 crossDomain : true,
		                                 cache:false,
		                                 headers : {
		         							Authorization : 'Bearer ' + tkn
		         						 },
		   			success : function(response) {
		   				var data ="",trHTML="",j=1;	
		 			    data=JSON.parse(response);
		 			   if(type=="BR"){
		   			      $('#brTable tbody tr').remove();
		 			   }
		 			   else if(type=="SP"){
		   			      $('#spTable tbody tr').remove();
		 			   }
		 			  else if(type=="PP"){
		   			      $('#ppTable tbody tr').remove();
		 			   }
		 			 else if(type=="FPM"){
		   			      $('#fpmTable tbody tr').remove();
		 			   }
		 			 else if(type=="EM"){
		   			      $('#emTable tbody tr').remove();
		 			   }
		 			else if(type=="AIM"){
		 				   $('#aimTable tbody tr').remove();
		 			   }
			 			$.each(data.elements, function(i, item) {
			 				var trHTML="";
			 				var  regflag="No",regyesno="N",onclk="",tt="",gmpb="";
			 				var str="",res="";
			 				var str1="",res1="";
							if (item.regIssueDt !='' && item.regIssueDt != null) {
								 str = item.regIssueDt.substring(0, 10);
								 res = str.split('-').reverse().join('/');
								}
							if (item.regRenewalDt !='' && item.regRenewalDt != null) {
								 str1 = item.regRenewalDt.substring(0, 10);
								 res1 = str1.split('-').reverse().join('/');
								}
			 					if(item.regNo != null){
			 						regyesno ='Y';
			 					    regflag='Yes'
			 						    +'<br><span class="text-blue">Reg NO. :</span> <span class="badge purple">'+item.regNo+'</span>'
                                        +'<br><span class="text-blue"> Issued - Renewal Date :</span> <span class="badge purple">'+res +'-'+ res1+'</span>';
			 					}
			 					 if(type=="BR"){
			 						 tt ="this,'BR'";
					 			   }
					 			   else if(type=="SP"){
					 				  tt ="this,'SP'";
					 			   }
					 			  else if(type=="PP"){
					 				  tt ="this,'PP'";
					 			   }
					 			 else if(type=="FPM"){
					 				  tt ="this,'FPM'";
					 			   }
					 			else if(type=="EM"){
					 				  tt ="this,'EM'";
					 			   }
					 			else if(type=="AIM"){
					 				  tt ="this,'AIM'";
					 			   }
			 					
			 					
			 			if(type=="BR" || type=="SP" ||type=="FPM" || type=="PP"){
								//alert(regflag)
								
			 				  trHTML += '<tr><td  class="display-none" style="text-align:center">'
									+ j
									+ '</td><td>'
									+ item.name
									+ '</td><td>'
									+ item.address
									+ '</td><td class="text-infolight form-label">'
									+ regflag
									+ '</td><td class="text-infolight form-label"><button class="btn btn-orange btn-sm" onclick="editbatch('+tt+')" >'
									+ 'edit'
									+ '</button></td><td style="display:none">'
									+ item.slno
									+ '</td><td style="display:none">'
									+ item.addId
									+ '</td><td style="display:none">'
									+ item.regNo
									+ '</td><td style="display:none">'
									+ res
									+ '</td><td style="display:none">'
									+ res1
									+ '</td><td style="display:none">'
									+ regyesno
									+ '</td></tr>'
									;
									
			 			}	
			 			if(type=="EM"){
							//alert(regflag)
							
		 				  trHTML += '<tr><td  class="display-none" style="text-align:center">'
								+ j
								+ '</td><td>'
								+ item.name
								+ '</td><td>'
								+ item.address
								+ '</td><td class="text-infolight form-label">'
								+ item.refPharmacopoeia
								+ '</td><td class="text-infolight form-label"><button class="btn btn-orange btn-sm" onclick="editbatch('+tt+')" >'
								+ 'edit'
								+ '</button></td><td style="display:none">'
								+ item.slno
								+ '</td><td style="display:none">'
								+ item.addId
								+ '</td><td style="display:none">'
								+ item.countryId
								+ '</td></tr>'
								;
								
		 			}	
			 			if(type=="AIM"){
							//alert(regflag)
						
							
						var filenm="",fileid="",doc="";
							if(item.fileupload!= null){
								filenm=item.fileupload.docFileName;
								fileid=item.fileupload.fileUpdId;
								doc=item.fileupload.docCd;
							  }
							
		 				  trHTML += '<tr><td  class="display-none" style="text-align:center">'
								+ j
								+ '</td><td>'
								+ item.name
								+ '</td><td>'
								+ item.address
								+ '</td><td class="text-center">'
								+ '<button class="btn btn-primary btn-sm rounded" type="button" id="" title="Download"  onclick=downloadApplicationGMPFile(this) >'
								+ '<i class="bi bi-download"></i>' 
								+ '</button>'
								+ '</td><td class="text-infolight form-label"><button class="btn btn-orange btn-sm" onclick="editbatch('+tt+')" >'
								+ 'edit'
								+ '</button></td><td style="display:none">'
								+ item.slno
								+ '</td><td style="display:none">'
								+ item.addId
								+ '</td><td style="display:none">'
								+ item.countryId
								+ '</td><td style="display:none">'
								+ filenm
								+ '</td><td style="display:none">'
								+ fileid
								+ '</td><td style="display:none">'
								+ doc
								+ '</td></tr>'
								;
								
		 			}	
									
							j++;
							if(type=="BR"){
							   table1 = $('#brTable').append(trHTML);
							  }
							else if(type=="SP"){
								   table1 = $('#spTable').append(trHTML);
								  }
							else if(type=="PP"){
								   table1 = $('#ppTable').append(trHTML);
								  }
							else if(type=="FPM"){
								   table1 = $('#fpmTable').append(trHTML);
								   }
							else if(type=="EM"){
								   table1 = $('#emTable').append(trHTML);
								  }
							else if(type=="AIM"){
								 table1 = $('#aimTable').append(trHTML);
								    
								}
			 				 
			 			   });
			 			if(type=="BR"){
							   $('#brTable').DataTable({
							        "dom": 'rtip',
							   "bInfo" : false,"searching": false,
							    });
							}
							else if(type=="SP"){
								     $('#spTable').DataTable({
								        "dom": 'rtip',
								   "bInfo" : false,"searching": false,
								   });
								}
							else if(type=="PP"){
								    $('#ppTable').DataTable({
								        "dom": 'rtip',
								   "bInfo" : false,"searching": false,
								   });
								}
							else if(type=="FPM"){
								     $('#fpmTable').DataTable({
								        "dom": 'rtip',
								   "bInfo" : false,"searching": false,
								   });
								}
							else if(type=="EM"){
								     $('#emTable').DataTable({
								        "dom": 'rtip',
								   "bInfo" : false,"searching": false,
								   });
								}
							else if(type=="AIM"){
								 $('#aimTable').DataTable({
							        "dom": 'rtip',
							   "bInfo" : false,"searching": false,
							   });
								}
			 			 
		         },
					 
		   	error : function(jqXHR, textStatus, errorThrown) {
		   		if (jqXHR.status == "401") {
		   			sessionOut();
		   		}
		   		
		   	 }	
		          });
		 }
			          
         function editbatch(editdata,type){
        	 //alert(type)
              var row = $(editdata).parents("tr");
			  var cols = row.children("td");
			  if(type=="BR"){
			    clearMarketDtl("BR");  
			        $("#manufactbatslno").val($(cols[5]).text());
			        $("#manufactbatid").val($(cols[6]).text());
	 			    $("#manufactbatname").val($(cols[1]).text());
		 			$("#manufactbatadd").val($(cols[2]).text());
		 			//alert($(cols[10]).text()+"$(cols[7]).text()")
		 			if($(cols[10]).text() =='Y' ){
		 				//alert('in');
		 			    $("#mohregquestbat").val("Y").change();
		 			    $("#mohissdtbat").val($(cols[8]).text());
			 			$("#mohrenewdtbat").val($(cols[9]).text());
			 			$("#mohregnobat").val($(cols[7]).text());
			 			
		 			}
		 			else{
		 				//alert('in1');
		 			   $("#mohregquestbat").val("N").change();
		 			}
			  }
			  if(type=="SP"){
				    clearMarketDtl("SP");  
			        $("#manufactsecslno").val($(cols[5]).text());
			        $("#manufactsecid").val($(cols[6]).text());
	 			    $("#manufactsecname").val($(cols[1]).text());
		 			$("#manufactsecadd").val($(cols[2]).text());
		 			//alert(itemadd.regNo)
		 			if($(cols[10]).text() =='Y' ){
		 				$("#mohregquestsec").val("Y").change();
		 				$("#mohissdtsec").val($(cols[8]).text());
			 		    $("#mohrenewdtsec").val($(cols[9]).text());
			 		    $("#mohregnosec").val($(cols[7]).text());
			 			
		 			}
		 			else{
		 				$("#mohregquestsec").val("N").change();
		 			}
		 				
		 			}
			  
			  if(type=="PP"){
				    clearMarketDtl("PP");  
				    $("#manufactprislno").val($(cols[5]).text());
		 			$("#manufactpriid").val($(cols[6]).text());
	 			    $("#manufactpriname").val($(cols[1]).text());
		 			$("#manufactpriadd").val($(cols[2]).text());
		 			//alert(itemadd.regNo)
		 			if($(cols[10]).text() =='Y' ){
		 				$("#mohregquestpri").val("Y").change();
		 				$("#mohissdtpri").val($(cols[8]).text());
			 		    $("#mohrenewdtpri").val($(cols[9]).text());
			 		    $("#mohregnopri").val($(cols[7]).text());
			 			
		 			}
		 			else{
		 				$("#mohregquestpri").val("N").change();
		 			}
		 				
		 			}
			  if(type=="FPM"){
				    clearMarketDtl("FPM");  
				    $("#manufactfinishslno").val($(cols[5]).text());
		 			$("#manufactfinishid").val($(cols[6]).text());
	 			    $("#manufactfinishname").val($(cols[1]).text());
		 			$("#manufactfinishadd").val($(cols[2]).text());
		 			//alert(itemadd.regNo)
		 			if($(cols[10]).text() =='Y' ){
		 				$("#mohregquestfinish").val("Y").change();
		 				$("#mohissdtfinish").val($(cols[8]).text());
			 		    $("#mohrenewdtfinish").val($(cols[9]).text());
			 		    $("#mohregnofinish").val($(cols[7]).text());
			 			
		 			}
		 			else{
		 				$("#mohregquestfinish").val("N").change();
		 			}
		 				
		 			}
			  if(type=="EM"){
				    clearMarketDtl("EM"); 
				   // alert($(cols[7]).text())
				    $("#manufactexcslno").val($(cols[5]).text());
		 			$("#manufactexcid").val($(cols[6]).text());
	 			    $("#manufactexcname").val($(cols[1]).text());
		 			$("#manufactexcaddress").val($(cols[2]).text());
		 			$("#manufactexcref").val($(cols[3]).text());
		 			$("#manufactexccountry").val($(cols[7]).text());
		 			
		 				
		 			}
			  
			  if(type=="AIM"){
				 // alert('in')
			   clearMarketDtl("AIM"); 
				   // alert($(cols[7]).text())
				    $("#manufactactslno").val($(cols[5]).text());
		 			$("#manufactactid").val($(cols[6]).text());
	 			    $("#manufactactname").val($(cols[1]).text());
		 			$("#manufactactaddress").val($(cols[2]).text());
		 			$("#manufactactcountry").val($(cols[7]).text());
		 			$("#gmpFile").val($(cols[8]).text());
		 			$("#gmpFileid").val($(cols[9]).text());
		 			$("#gmpFiledoc").val($(cols[10]).text());
		 			
		 				
		 			}
			
			
         }
         
         
         function downloadApplicationGMPFile(editdata){
        	 var row = $(editdata).parents("tr");
			  var cols = row.children("td");
            getToken();
			  tkn = sessionStorage.getItem("tkn");
			
			 
				  var myJSNObjType = JSON.stringify({
					  "fileCat":"A",
					  "userRegId":loginregid,
					  "appRegId":appRegIdVar.value,
					  "fileName":$(cols[8]).text(),
	                });
				 
			 
			 $.ajax({
					type : "POST",
					url : warnamefr+"/Dashboard?method=downloadFile",
				    contentType : "application/json",
					crossDomain : true,
					headers : {
						Authorization : 'Bearer ' + tkn
					},
					data:myJSNObjType,
					success : function(datahere) {
						  //$("#downloadSpin").hide();
			 			   if(datahere != null && datahere.length > 0 ){
		                        var dataString=datahere; 
		                       // var jsonData = JSON.parse(datahere);     
		                                //alert('jsonData: '+jsonData);     
		                        var type = 'application/pdf';
		                        let blob = null;
		                        const blobURL = URL.createObjectURL( pdfBlobConversion(datahere, 'application/pdf'));
		                        window.open(blobURL, 'printpopup', 'directories=0,location=0,status=0,scrollbars=no,titlebar=no,toolbar=0,menubar=no,scrollbars=0,resizable=0, width=800,height=780');
		                        this.target = 'printpopup';
		                     

		                     }
			 			   // console.log(data+'data');
					
							
					},
					error : function(jqXHR, textStatus, errorThrown) {
						//$("#downloadSpin").hide();
						if (jqXHR.status == "401") {
							sessionOut();
						}
					}
			       });
		  }
         
         
         function actIngridient(){
        	var res=true ,cntactable=0; 
            if (activeingredienttxtVar.value == null || activeingredienttxtVar.value =='') {
					$('#activeingredienttxtErr').show();
					res = false;
				}
            if(activeingredientVar.value == null || activeingredientVar.value =='0'){
            	$('#activeingredientErr').show();
				res = false;
            }
            $('#actTable tbody tr').each(function (i, obj) {
		    	   var currentRow=$(this);
		    	   var acttxt="",acttxtid=""
		    		   acttxt=currentRow.find("td:eq(1)").text();
		    	  if(acttxt!=""){
		    		  cntactable++;
		    	  }
		    }); 
        	// alert(activeingredientVar.value)
        	 // alert($('#actTable tbody tr').length)
				//if ((activeingredientVar.value == "S") && (($('#actTable tbody tr').length) >= 1)){
					if ((activeingredientVar.value == "S") && (cntactable >= 1)){
						 $('#activeingredientsingleErr').show();
						 $('#activeingredienttxt').val("");
                         setTimeout( "$('#activeingredientsingleErr').hide();", 4000);
						res = false;
				}
       if(res){
    	   if($('#actTable tbody tr').length!=0){
       
            var dataTable = $('#actTable').DataTable();
            dataTable.destroy(); 
    	   }
         var j=($('#actTable tbody tr').length)+1;
       //  $('#actTable tbody tr').remove();
			
         var trHTML="";
          trHTML = '<tr><td  class="display-none" style="text-align:center">'
					+ j
					+ '</td><td>'
					+activeingredienttxtVar.value
					+ '</td><td style="display:none">'
					+ 0
					+ '</td><td>'
					+ '<button  style="text-align:center"  class="btn btn-primary btnDelete ms-2 mt-1 mt-md-0" type="button" >delete</button>'
					+ '</td></tr>';
					j++;
					table1 = $('#actTable').append(trHTML);	
					$('#actTable').DataTable({
				        "dom": 'rtip',
				   "bInfo" : false,"searching": false,
				  autoWidth: false,  
				   columns: [
				           { "width": "15%" },
				           { "width": "80%" },
				           { "width": "0%" },
				           { "width": "5%" },
				           
						 ], });
					$('#activeingredienttxt').val("");	
         }
         }
         
         
         $("#actTable").on('click', '.btnDelete', function () {
        	   $('#activeingredientdeleteErr').hide();
               var currentRow=$(this);
	    	   var acttxt="",acttxtid="";
	    	   var res=false;
	    		   acttxtid=$(this).closest('tr').find('td:eq(2)').text();
             //alert($(this).closest('tr').find('td:eq(2)').text());
             if(acttxtid != 0){
            	 $.ajax({
						type : "POST",
						url : warnamefr+"/Pharmaceutical?method=deleteAI?aid="+acttxtid,
						contentType : "application/json",
						crossDomain : true,
						async: false ,
						data:"na",
						headers : {
							Authorization : 'Bearer ' + tkn
						},
						success : function(response) {
							var data = JSON.parse(response);
							//alert(data.code)
							if (data.code =="0"){
								//alert('in')
							    res=true;
							  }
							},
						error : function(jqXHR, textStatus, errorThrown) {
					   		if (jqXHR.status == "401") {
					   			sessionOut();
					   		}
						   }	
						   });
            	// alert(res)
            	 if(res==true){
            		 var table = $('#actTable').DataTable();
		   	   		  table
		   	         .row( $(this).parents('tr') )
		   	         .remove()
		   	         .draw();
		   	   }
             }
             else{
            	 var table = $('#actTable').DataTable();
		   	   		  table
		   	         .row( $(this).parents('tr') )
		   	         .remove()
		   	         .draw();
		   	     }
            		
	   	
	   	});
         function marketButtonDisable(){
			//$('#actBtn').hide();
			$('#saveMarketSingleAIMBTN').hide();
			$('#saveMarketSingleEMBTN').hide();
			$('#saveMarketSingleFPMBTN').hide();
			$('#saveMarketSinglePPBTN').hide();
			$('#saveMarketSingleSPBTN').hide();
			$('#saveMarketSingleBRBTN').hide();
			$('#saveMarketSingleMAHBTN').hide();
			
			$('#ICFILEUPLOAD').hide();
			$('#PCFILEUPLOAD').hide();
			$('#editAppDtlbtn').hide();
			$('#clearAppDtlbtn').hide();
         }
         function marketButtonEnable(){
 			//$('#actBtn').show();
 			$('#saveMarketSingleAIMBTN').show();
 			$('#saveMarketSingleEMBTN').show();
 			$('#saveMarketSingleFPMBTN').show();
 			$('#saveMarketSinglePPBTN').show();
 			$('#saveMarketSingleSPBTN').show();
 			$('#saveMarketSingleBRBTN').show();
 			$('#saveMarketSingleMAHBTN').show();
 			
 			$('#ICFILEUPLOAD').show();
			$('#PCFILEUPLOAD').show();
			$('#editAppDtlbtn').show();
			$('#clearAppDtlbtn').show();
          }
         
         function tocheckUploadStatus(type){
        	  getToken();
              tkn = window.sessionStorage.getItem("tkn");
              var myJSNObjType = JSON.stringify({
				  "appRegId":appRegIdVar.value,
				  "docCd":type,
				  "srlno":"1",
				  });
			 
              $.ajax({
					type : "POST",
					url : warnamefr+"/GetToken?method=checkFile",
					contentType : "application/json",
					crossDomain : true,
					async: false ,
					data:myJSNObjType,
					headers : {
						Authorization : 'Bearer ' + tkn
					},
					success : function(response) {
						var data = JSON.parse(response);
						//alert(data.code)
						if (data.code =="0"){
							$.each(data.elements, function(i, item) {
								//alert(item.FileExist+'in'+type)
							 if(item.FileExist ==false && type =='HAA'){
									//alert('in')
								    $('#HAAUPLOAD').show();
									$('#HAAREUPLOAD').hide();
									$("#HAADOWNLOAD").hide(); 
								}
                                if(item.FileExist ==true && type =='HAA'){
                                	//alert('in1');
                                    $('#HAAREUPLOAD').show();
									$('#HAAUPLOAD').hide();
									$("#HAADOWNLOAD").show(); 
								}
                                if(item.FileExist ==false && type =='IC'){
									//alert('in')
								    $('#ICFILEUPLOAD').show();
									$('#ICFILEREUPLOAD').hide();
									$("#ICFILEDOWNLOAD").hide(); 
								}
                                if(item.FileExist ==true && type =='IC'){
                                	//alert('in1');
                                    $('#ICFILEREUPLOAD').show();
									$('#ICFILEUPLOAD').hide();
									$("#ICFILEDOWNLOAD").show(); 
								}
                                if(item.FileExist ==false && type =='PC'){
									//alert('in')
								    $('#PCFILEUPLOAD').show();
									$('#PCFILEREUPLOAD').hide();
									$("#PCFILEDOWNLOAD").hide(); 
								}
                                if(item.FileExist ==true && type =='PC'){
                                	//alert('in1');
                                    $('#PCFILEREUPLOAD').show();
									$('#PCFILEUPLOAD').hide();
									$("#PCFILEDOWNLOAD").show(); 
								}
							 });
						  }
						},
					error : function(jqXHR, textStatus, errorThrown) {
				   		if (jqXHR.status == "401") {
				   			sessionOut();
				   		}
					   }	
					   });
         }
         
        
         
         
         function saveEctd(type){
        	 getToken();
             tkn = window.sessionStorage.getItem("tkn");
            $('#progressBar').width( '0%').html( '0%');
	       var typ="";
	       typ= 'zip';
	       var docType =type+'appdoc';
 	       var res = true;
 	       checkfile(docType,type,typ);
 	       var v_doc ="",v_reqId="";
         if ( res == true) {
     	      var fn = '#' + docType + 'File';
             var fileid = docType + 'File';
             var files = $(fn)[0].files;
             var docTypeNofile = '#' + docType + 'NoFile';
             var doctypeFileName = '#' + docType + 'FileName';
             var docTypeSuccess = '#' + docType + 'UploadSucess';
             var fnSelectFile = '#' + docType + 'File';
            
              var dNofileErr = type+'docTypeNofileErr';
			   var dSuccfileErr = type+'docTypeSuccessErr';
			   var dTypefileErr = type+'doctypeFileName';
             
	    	    $("#"+dSuccfileErr).hide();
    	        $("#"+dSuccfileErr).text('');
               $("#"+dNofileErr).hide();
               $("#"+dNofileErr).text('');
               $("#"+dTypefileErr).hide();
               $("#"+dTypefileErr).text('');
   	 	  
             
           if (files.length > 0) {
        	 $("#saveectdBtn").hide();
             $('#progressBar').width( '0%').html( '0%'); 		              
             let docType =type+'appdoc';                    
             let fn = '#' + docType + 'File';
             let fileid = docType + 'File';
             let files = $(fn)[0].files;
             checkfileexist($('#appproductid').val());
             uploadFileInChunks(type);
           }
         }
         }
         //const CHUNK_SIZE = 2 * 1024 * 1024 * 1024;  // 2GB
         const CHUNK_SIZE = 50 *  1024 * 1024;//50MB
       async function uploadFileInChunks(type) {
    	     let docType =type+'appdoc';                    
             let fn = '#' + docType + 'File';
             let fileid = docType + 'File';
             let file= $(fn)[0].files;
           const totalChunks = Math.ceil(file[0].size / CHUNK_SIZE);
           const identifier = $('#appproductid').val();
          percentage =100/totalChunks;
          for (let i = 1; i <= totalChunks; i++) {
        	  await uploadChunk(file[0], i, totalChunks, identifier);
          }
       }
      
          async function uploadChunk(file, chunkNumber, totalChunks, identifier) {
         	  // alert('ectd4')
                   const start = (chunkNumber - 1) * CHUNK_SIZE;
                   const end = Math.min(start + CHUNK_SIZE, file.size);
                   const chunk = file.slice(start, end);
                   const formData = new FormData();
                   formData.append('file', chunk);
                   formData.append('chunkNumber', chunkNumber);
                   formData.append('totalChunks', totalChunks);
                   formData.append('identifier', identifier);
                   const response =  await fetch(warnamefr+'/upload-chunk', {
                       method: 'POST',
                       body: formData,
                   })/*.then(function () { // after the request has been sent
                 	   finish();       // call summonfeed to update the div with the new contents of feed.html
                   })*/
                   const result = await response.text();
                   const percentage = (chunkNumber / totalChunks) * 100;
                   $('#progressBar').width(percentage + '%').html(percentage.toFixed(0) + '%'); 
                   if (chunkNumber === totalChunks  ) {
                	   if(result.substring(0, 14) !="Failed to save") {
                        uploadfinish('S',identifier+'.zip');
                         $('#progressBar').width( '0%').html( '0%');
                         $("#ECTDdocTypeSuccessErr").show();
					     $("#ECTDdocTypeSuccessErr").text("<fmt:message key='label.fileSucc'/>");
					     $("#ECTDdocTypeSuccessErr").css('font-weight', 'bold');
					     $("#ECTDdocTypeSuccessErr").css('color', 'green');
					    
					   document.getElementById('ECTDappdocFile').value=null;
					   //setTimeout( "$('#ECTDdocTypeSuccessErr').hide();", 9000);
                	   }
                	   else{
                		   $("#ECTDdocTypeNofileErr").show();
                           $("#ECTDdocTypeNofileErr").text("<fmt:message key='error.upload'/>");
                           $("#ECTDdocTypeNofileErr").css('font-weight', 'bold');
                           $("#ECTDdocTypeNofileErr").css('color', 'red');
                           uploadfinish('F',identifier+'.zip');
                           document.getElementById('ECTDappdocFile').value=null;
                           $('#progressBar').width( '0%').html( '0%'); 
                	   }
                   }
                   
                }
           function checkfileexist(identifier) {
				//var identifier =identifier;
				//alert("getADuser")
				$
						.ajax({
							type : "POST",
							url : warnamefr+"/deletefileexist?identifier="+identifier,
							contentType : "application/json",
							crossDomain : true,
							async: false ,
							//data : identifier,
							success : function(response) {
								//alert(response);
								//alert(response+"checkfileexist")
								},
							error : function(jqXHR, textStatus, errorThrown) {
								
							}
						});
			}
  
  function uploadfinish(type,identifier){
	  getToken();
      tkn = window.sessionStorage.getItem("tkn");
      
     $.ajax({
			type : "POST",
			url : warnamefr+"/Pharmaceutical?method=updateStatus?pAppRegId="+appRegIdVar.value+"%26outcome="+type+"%26filename="+identifier,
			contentType : "application/json",
			crossDomain : true,
			async: false ,
			data:"na",
			headers : {
				Authorization : 'Bearer ' + tkn
			},
			success : function(response) {
				var data = JSON.parse(response);
				//alert(data.code)
				if (data.code =="0"){
					//alert('in')
				    //res=true;
				  }
				},
			error : function(jqXHR, textStatus, errorThrown) {
		   		if (jqXHR.status == "401") {
		   			sessionOut();
		   		}
			   }	
			   });
  }
   	      
    </script>
</body>

</html>
