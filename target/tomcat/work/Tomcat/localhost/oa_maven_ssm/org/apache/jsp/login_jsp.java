/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-11-23 08:01:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=emulateIE7\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/style.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/skin_/login.css\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/jquery.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/jquery.select.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/gVerify.js\"></script>\r\n");
      out.write("<title>蓝色企业数字办公后台管理模板_用户登录</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"container\">\r\n");
      out.write("    <div id=\"bd\">\r\n");
      out.write("    \t<div id=\"main\">\r\n");
      out.write("        \t<div class=\"login-box\">\r\n");
      out.write("                <div id=\"logo\"></div>\r\n");
      out.write("                <h1></h1>\r\n");
      out.write("                <form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/User/login.action\" method=\"post\">\r\n");
      out.write("                <div class=\"input username\" id=\"username\">\r\n");
      out.write("                    <label for=\"userName\">用户名</label>\r\n");
      out.write("                    <span></span>\r\n");
      out.write("                    <input type=\"text\" id=\"userName\" name=\"user.uname\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${queryVo.user.uname}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\"/>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"input psw\" id=\"psw\">\r\n");
      out.write("                    <label for=\"password\">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>\r\n");
      out.write("                    <span></span>\r\n");
      out.write("                    <input type=\"password\" id=\"password\" name=\"user.upwd\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${queryVo.user.upwd}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\"/>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"input validate\" id=\"validate\">\r\n");
      out.write("                    <label for=\"valiDate\">验证码</label>\r\n");
      out.write("                    <input type=\"text\" id=\"valiDate\"  name=\"code\"/>\r\n");
      out.write("                    <div id=\"code_value\" class=\"value\"></div>\r\n");
      out.write("                    \r\n");
      out.write("                    <p style=\"margin-left: 150px; margin-top: 10px; color: red;\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${errorMeg}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"styleArea\">\r\n");
      out.write("                    <div class=\"styleWrap\">\r\n");
      out.write("                        <select name=\"style\" id=\"duoxuan\">\r\n");
      out.write("                            <option value=\"default\">默认风格</option>\r\n");
      out.write("                            <option value=\"red\">红色风格</option>\r\n");
      out.write("                            <option value=\"green\">绿色风格</option>\r\n");
      out.write("                        </select>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div id=\"btn\" class=\"loginButton\">\r\n");
      out.write("                    <input type=\"submit\" class=\"button\" value=\"登录\"  />\r\n");
      out.write("                </div>\r\n");
      out.write("            \t</form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"ft\">CopyRight&nbsp;2014&nbsp;&nbsp;版权所有&nbsp;&nbsp;More Templates <a href=\"http://www.cssmoban.com/\" target=\"_blank\" title=\"模板之家\">模板之家</a> - Collect from <a href=\"http://www.cssmoban.com/\" title=\"网页模板\" target=\"_blank\">网页模板</a> &nbsp;&nbsp;</div>\r\n");
      out.write("    </div>\r\n");
      out.write("   \r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("\t$(function(){\r\n");
      out.write("\t\t$.get(\"/oa_maven_ssm/User/checkCode.action\",function(data){\r\n");
      out.write("\t\t\t$(\"#code_value\").text(data);\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$(\"#code_value\").click(function(){\r\n");
      out.write("\t\t\t$.get(\"/oa_maven_ssm/User/checkCode.action\",function(data){\r\n");
      out.write("\t\t\t\t$(\"#code_value\").text(data);\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t})\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t$(\"#duoxuan\").change(function(){\r\n");
      out.write("\t\t\t//选中的值\r\n");
      out.write("\t\t\tif($('#duoxuan option:selected').val()==\"default\"){\r\n");
      out.write("\t\t\t\t$(\"#container\").css(\"background-color\", \"#0170a4\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif($('#duoxuan option:selected').val()==\"red\"){\r\n");
      out.write("\t\t\t\t$(\"#container\").css(\"background-color\", \"red\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif($('#duoxuan option:selected').val()==\"green\"){\r\n");
      out.write("\t\t\t\t$(\"#container\").css(\"background-color\", \"green\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t})\r\n");
      out.write("\r\n");
      out.write("\tvar height = $(window).height() > 445 ? $(window).height() : 445;\r\n");
      out.write("\t$(\"#container\").height(height);\r\n");
      out.write("\tvar bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;\r\n");
      out.write("\t$('#bd').css('padding-top', bdheight);\r\n");
      out.write("\t$(window).resize(function(e) {\r\n");
      out.write("        var height = $(window).height() > 445 ? $(window).height() : 445;\r\n");
      out.write("\t\t$(\"#container\").height(height);\r\n");
      out.write("\t\tvar bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;\r\n");
      out.write("\t\t$('#bd').css('padding-top', bdheight);\r\n");
      out.write("    });\r\n");
      out.write("\t$('select').select();\r\n");
      out.write("\t/* \r\n");
      out.write("\t$('.loginButton').click(function(e) {\r\n");
      out.write("        document.location.href = \"main.html\";\r\n");
      out.write("    }); */\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
