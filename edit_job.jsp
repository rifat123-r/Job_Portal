<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Job</title>
<%@include file="Component/Css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="Component/nav.jsp"%>
	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						JobDao dao = new JobDao(DBConnect.getconn());
						Jobs j = dao.getJobById(id);
						%>
						<h5>Edit Jobs</h5>
						<div>
							<form action="update" method="post">
								<input type="hidden" value="<%=j.getId() %>" name="id">
								<div class="form-group">
									<label>Enter tittle</label> <input type="text" name="title"
										required class="form-control" value="<%=j.getTitle()%>">
								</div>
								<div class="form-row">
									<div class="form-group col-md-4">
										<label>Location</label> <select name="Location"
											class="custom-select" id="inlineFormCustomSelectPref">
											<option value="<%=j.getLocation() %>"><%=j.getLocation %></option>
											<option value="alabama">Alabama</option>
											<option value="alaska">Alaska</option>
											<option value="california">California</option>
											<option value="colorado">Colorado</option>
											<option value="delaware">Delaware</option>
											<option value="florida">Florida</option>
											<option value="georgia">Georgia</option>
											<option value="hawaii">Hawaii</option>
											<option value="newyork">New York</option>
											<option value="newjersy">New Jersy</option>
											<option value="northcarolina">North Carolina</option>
											<option value="northdakota">North Dakota</option>
											<option value="ohio">Ohio</option>
											<option value="oregon">Oregon</option>
											<option value="pennsylvnia">Pennsylvnia</option>
											<option value="southcarolina">South Carolina</option>
										</select>
									</div>
									<div class="form-group col-md-4">
										<label>Catagory</label><select id="inlineFormCustomSelectPref"
											name="catagory">
											<option value="<%=j.getCatagory() %>"><%=j.getCatagory %></option>
											<option value="IT">IT</option>
											<option value="Software Developer">Software
												Developer</option>
											<option value="Financial Manager">Financial Manager</option>
											<option value="Physical Therapist">Physical
												Therapist</option>
											<option value="Construction Manager">Construction
												Manager</option>
											<option value="Manufacturing">Manufacturing</option>
											<option value="Server">Server</option>
											<option value="Janitor">Janitor</option>
											<option value="Stocking associate">Stocking
												Associate</option>
											<option value="Engineering">Engineering</option>
											<option value="Hospitality">Hospitality</option>
											<option value="Blockchain Developer">Blockchain
												Developer</option>
											<option value="Digital Marketer">Digital Marketer</option>
										</select>
									</div>
									<div class="form-group col-md-4">
										<label>Status</label><select class="form-control"
											name="status">
											<option class="Active" value="<%=j.getStatus()%>"><%=j.getStatus()%></option>
											<option class="Active" value="Active">Active</option>
											<option class="Inactive" value="Inactive">Inactive</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label>Enter Description</label>
									<textarea required rows="6" cols="" name="desc"
										class="form-control"><%=j.getDescription() %></textarea>
								</div>
								<button class="btn btn-success">Publish Job</button>
							</form>
						</div>
					</div>
				</div>
			</div>
</body>
</html>