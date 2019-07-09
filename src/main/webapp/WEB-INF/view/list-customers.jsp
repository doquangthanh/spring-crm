<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
	<c:import url="header.jsp"></c:import>
	<div id="content">

		<!--  add a search box button -->

		<form:form action="search" method="POST">

			<div id="buttonGroup">

				Search customer: <input type="text" name="theSearchName" /> <input
					type="submit" value="Search" class="add-button" />
			</div>



			<div id="buttonGroup">
				<security:authorize access="hasAnyRole('MANAGER', 'ADMIN')">
					<!-- Put new button here: Add customer -->
					<input type="button" value="Add Customer"
						onclick="window.location.href='showFormForAdd'; return false;"
						class="add-button" />
				</security:authorize>

				<input type="button" value="Show All Customers"
					onclick="window.location.href='list'; return false;"
					class="add-button" />

			</div>

		</form:form>


		<!-- add out html table here -->

		<table class="table table-bordered table-striped">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>

				<%-- Only show "Action" column for managers or admin --%>
				<security:authorize access="hasAnyRole('MANAGER', 'ADMIN')">

					<th>Action</th>

				</security:authorize>

			</tr>

			<!-- Loop over and print out customers -->
			<c:forEach var="tempCustomer" items="${customers}">

				<!-- construct an "update" link with customer id -->
				<c:url var="updateLink" value="/customer/showFormForUpdate">
					<c:param name="customerId" value="${tempCustomer.id}" />
				</c:url>

				<!-- construct an "delete" link with customer id -->
				<c:url var="deleteLink" value="/customer/delete">
					<c:param name="customerId" value="${tempCustomer.id}" />
				</c:url>


				<tr>
					<td>${tempCustomer.firstName}</td>
					<td>${tempCustomer.lastName}</td>
					<td>${tempCustomer.email}</td>

					<security:authorize access="hasAnyRole('MANAGER', 'ADMIN')">

						<td><security:authorize
								access="hasAnyRole('MANAGER', 'ADMIN')">
								<!-- display the update link  -->
								<a href="${updateLink}" class="btn btn-info btn-sm ml-3 mr-1">Update</a>
							</security:authorize> <security:authorize access="hasAnyRole('ADMIN')">
                                  
									<a href="${deleteLink}" class="btn btn-danger btn-sm ml-3 mr-1"
									onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
							</security:authorize></td>

					</security:authorize>

				</tr>

			</c:forEach>

		</table>

		<!-- Add Pagination Controls -->
		<nav aria-label="...">
			<ul class="pagination">
				<!-- Handle "First" and "Prev" links -->
				<c:choose>

					<c:when test="${pagination eq 'false'}">

					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${currentPage == 1}">
								<li class="page-item disabled"><a class="page-link"
									href="#">First</a></li>
								<li class="page-item disabled"><a class="page-link"
									href="#">Prev</a></li>
							</c:when>
							<c:otherwise>
								<c:url var="firstPageLink" value="/customer/list">
									<c:param name="pageNumber" value="1" />
								</c:url>
								<li class="page-item"><a class="page-link"
									href="${firstPageLink}">First</a></li>

								<c:url var="prevPageLink" value="/customer/list">
									<c:param name="pageNumber" value="${currentPage - 1}" />
								</c:url>
								<li class="page-item"><a class="page-link"
									href="${prevPageLink}">Prev</a></li>
							</c:otherwise>
						</c:choose>

						<%-- Handle Page Number links --%>
						<c:forEach begin="1" end="${totalCustomerCount}"
							step="${pageSize}" varStatus="loop">
							<c:choose>

								<c:when
									test="${loop.count > (currentPage-5) && loop.count <= (currentPage+5) || (currentPage <= 5 && loop.count <= 10) || totalPages <=10}">

									<c:url var="pageLink" value="/customer/list">
										<c:param name="pageNumber" value="${loop.count}" />
									</c:url>

									<c:choose>
										<c:when test="${loop.count == currentPage}">
												<li class="page-item active"  aria-current="page"><a class="page-link"href="${pageLink}" class="selected-page">${loop.count}</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link"
												href="${pageLink}">${loop.count}</a></li>
										</c:otherwise>
									</c:choose>

								</c:when>

							</c:choose>
						</c:forEach>

						<%-- Handle '...' if there are more pages --%>
						<c:choose>
							<c:when
								test="${currentPage < (totalPages-5) && (totalPages > 10)}">
								<li class="page-item">...</li>
							</c:when>
						</c:choose>

						<%-- Handle "Next" and "Prev" links --%>
						<c:choose>

							<c:when test="${currentPage == totalPages}">
								<li class="page-item"><a class="page-link disabled"
									href="#">Next</a></li>
								<li class="page-item"><a class="page-link disabled"
									href="#">Last</a></li>

							</c:when>

							<c:otherwise>
								<c:url var="nextPageLink" value="/customer/list">
									<c:param name="pageNumber" value="${currentPage + 1}" />
								</c:url>
								<li class="page-item"><a class="page-link disabled"
									href="${nextPageLink}">Next</a></li>
								<c:url var="lastPageLink" value="/customer/list">
									<c:param name="pageNumber" value="${totalPages}" />
								</c:url>
								<li class="page-item"><a class="page-link disabled"
									href="${lastPageLink}">Last</a></li>
							</c:otherwise>

						</c:choose>
					</c:otherwise>

				</c:choose>
			</ul>
		</nav>
	</div>

</div>

<p></p>

<c:import url="footer.jsp"></c:import>
