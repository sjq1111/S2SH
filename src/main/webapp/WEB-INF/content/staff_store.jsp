<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>staff和store连接查询</title>
    <script src="./js/jquery-1.12.3.min.js"></script>
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="./css/jquery.bootgrid.min.css">
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="./js/jquery.bootgrid.min.js"></script>
  </head>
  <body>
     <div class="container">
  	<div class="row">
  		<div class="col-md-12">
  		<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Mysql sakila database</a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">单表查询<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="showactor">actor</a></li>
            <li><a href="showrental">rental</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">跨表查询<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="country_city">country和city</a></li>
            <li><a href="staff_store">staff和store</a></li>
          </ul>
        </li>
        <li><a href="fileupload">fileupload</a></li>
        <li><a href="logout">logout</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
  		</div>
  	</div>
  	<div class="row">
  		<div class="col-md-12">
  		<h2>staff和store表连接查询的信息,1-1双向映射</h2>
  		    <table id="grid-data" class="table table-condensed table-hover table-striped">
        <thead>
            <tr>
                <th data-column-id="id"  data-identifier="true" data-type="numeric">staffID</th>
                <th data-column-id="first_name">firstname</th>
                <th data-column-id="last_name">lastname</th>
                <th data-column-id="username">username</th>
                <th data-column-id="store_id" data-formatter="store_id">store_id</th>
            </tr>
        </thead>
    </table>
  		</div>
  	</div>
  </div>
<script>
$(document).ready(function(){
    var grid =$("#grid-data").bootgrid({
    ajax:true,
    url:"staffandstore",
        formatters: {
        "store_id": function(column, row)
        {
            return row.store.id; 
        }
    	}
    });
  });
  </script>
  </body>
</html>
