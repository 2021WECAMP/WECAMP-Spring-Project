<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<c:set var ="i" value="0"/>
	<c:set var ="j" value="5"/>
		
	<c:forEach items="${sigungu}" var="sigungu">
	<!--0부터 ul태그 열고 , 1,2,3,4 까지 li 출력 후 ul 태그가 닫힘   -->
		<c:if test="${i%j == 0}">
			<ul class="sigungu-list">
		</c:if>	
				<li>
					<label class="box-radio-input">
						<input type="radio" class="sigungu-nm" value="${sigungu.SIGUNGU}"
							name="sigungu-nm" onclick="getAllCampList(this.value,1)"/>
						<span>${sigungu.SIGUNGU}(${sigungu.SIGUNGU_COUNT})</span>
					</label>
				</li>
		<c:if test="${i%j == j-1}">
			</ul>
		</c:if>
		<c:set var="i" value="${i+1}"/>
	</c:forEach>