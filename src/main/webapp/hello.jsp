<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSP_setproperty_and_getproperty_actions
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2021/12/26
  Time(创建时间)： 13:52
  Description(描述)： <jsp:getProperty> 动作用于获取 Bean 的属性值，<jsp:setProperty> 动作用于设置 Bean 的属性值。
<jsp:getProperty>
<jsp:setProperty> 的语法如下：
<jsp:setProperty name = "beanName" property = "attributeName" value = "attributeValue"/>
其中，name 指定需要修改属性的 Bean 的名称；property 指定 Bean 的属性，即 Bean 类中的属性；value 是要设定的属性值。
<jsp:setProperty> 通常和 <jsp:useBean> 一起使用，分为两种情况。
1. 在 <jsp:useBean> 标签外使用 <jsp:setProperty> ，例如：
<jsp:useBean id = "User" ... />
...
<jsp:setProperty name = "User" property = "attributeName" value = "attributeValue"/>
以上情况，无论 <jsp:useBean> 是否实例化了 User 对象，<jsp:setProperty> 都会执行。
2. 在 <jsp:useBean> 标签里使用 <jsp:setProperty> ，例如：
<jsp:useBean id = "User" ...>
    ...
    <jsp:setProperty name = "User" property = "attributeName" value = "attributeValue"/>
</jsp:useBean>
以上情况，只有 <jsp:useBean> 实例化了 User 对象，<jsp:setProperty> 才会执行。
<jsp:getProperty>
<jsp:getProperty> 的语法如下：
<jsp:getProperty name = "beanName" property = "attributeName">
其中，name 指定需要获取属性的 Bean 的名称；property 指定 Bean 的属性，即 Bean 类中的属性。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="Student" class="mao.jsp_setproperty_and_getproperty_actions.Student"/>
<h1>
    <jsp:setProperty property="*" name="Student"/>
    <br/>
    学号：
    <jsp:getProperty property="no" name="Student"/>
    <br/>
    姓名：
    <jsp:getProperty property="name" name="Student"/>
    <br/>
    性别：
    <jsp:getProperty property="sex" name="Student"/>
    <br/>
    年龄：
    <jsp:getProperty property="age" name="Student"/>
    <br/>
</h1>
</body>
</html>
