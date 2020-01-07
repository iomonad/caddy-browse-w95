<!DOCTYPE html>
<html lang="en">
    <head>
	<meta charset="utf-8"/>
	<title>{{.Host}}</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<style>
	 body {
	     background-color: #008080;
	     padding: 50px;
	     
	 }
	 .container {
	     border: 2px solid;
	     border-bottom-color: #535353;
	     border-right-color: #535353;
	     border-left-color: #dbdbdb;
	     border-top-color: #dbdbdb;
	     background-color: #bfbfbf;
	     max-width: 600px;
	     font-size: 13px;
	     padding: 2px;
	     
	 }
	 .container ul.toolbar {
	     list-style: none;
	     padding: 2px 0;
	     margin: 0;
	     
	 }
	 .container ul.toolbar li {
	     display: inline-block;
	     padding: 0 5px;
	     
	 }
	 .container .container-inner {
	     border: 2px solid;
	     border-bottom-color: #c7c7c7;
	     border-right-color: #c7c7c7;
	     border-left-color: #808080;
	     border-top-color: #808080;
	     background-color: #fff;
	     padding: 10px;
	     
	 }
	 .container .container-inner .file-explorer {
	     list-style: none;
	     padding: 2px 0;
	     margin: 0;
	     
	 }
	 .container .container-inner ul.file ul.folder  {
	     display: inline-block;
	     padding: 0 5px;
	     
	 }
	 .container .statusbar .left, .container .statusbar .right {
	     border: 1px solid;
	     border-color: #888 #dadada #dadada #888;
	     display: inline-block;
	     padding: 0px 5px;
	     font-size: 11px;
	     
	 }
	 .container .statusbar .left {
	     width: 33%;
	     
	 }
	 .container .statusbar .right {
	     width: 66%;
	     
	 }

	 .title {
	     background-color: #808080;
	     padding: 2px 4px 3px 4px;
	     position: relative;
	     
	 }
	 .title h1 {
	     font-weight: bold;
	     color: #bcbcbc;
	     font-size: 13px;
	     margin: 0;
	     
	 }
	 .title button {
	     border: 2px solid;
	     border-bottom-color: #444;
	     border-right-color: #444;
	     border-left-color: #a6a6a6;
	     border-top-color: #a6a6a6;
	     background-color: #bfbfbf;
	     position: absolute;
	     font-size: 9px;
	     line-height: 0;
	     padding: 1px;
	     height: 15px;
	     width: 15px;
	     top: 2px;
	     
	 }
	 .title button.minimize {
	     right: 34px;
	     
	 }
	 .title button.expand {
	     right: 18px;
	     
	 }
	 .title button.times {
	     right: 2px;
	     
	 }
	 
	</style>
    </head>
    <body>
	<div class="container">
	    <div class="title">
		<div class="pull-right">
		    <button class="minimize">
			<span class="fa fa-minus">
			</span>
		    </button>
		    <button class="expand">
			<span class="fa fa-square-o">
			</span>
		    </button>
		    <button class="times">
			<span class="fa fa-times">
			</span>
		    </button>
		</div>
		<h1>
		    <div class="icon-my-computer">
		    </div> C:\\{{.Host}}{{.Path}}
		</h1>
	    </div>
	    <ul class="toolbar">
		<li>
		    <u>F</u>ile
		</li>
		<li>
		    <u>E</u>dit
		</li>
		<li>
		    <u>V</u>iew
		</li>
		<li>
		    <u>H</u>elp
		</li>
	    </ul>
	    <div class="container-inner">
		<ul class="file-explorer">
		    {{if .CanGoUp}}
		    <li class="folder">
			<span id="back-arrow">&lsaquo;</span>
			<a href="..">..</a>
		    </li>
		    {{end}}
		    {{range .Items}}
		    {{if .IsDir}}
			<li class="folder">
			    <span id="back-arrow">&lsaquo;</span>
			    <a href="{{.URL}}"><script>document.write(location.protocol)</script>//{{$.Host}}/{{.Name}}</a>
			</li>
			{{end}}
			{{end}}
			{{range .Items}}
			{{if not .IsDir}}
			    <li class="file">
				<span id="back-arrow">&lsaquo;</span>
				<a href="{{.URL}}"><script>document.write(location.protocol)</script>//{{$.Host}}/{{.Name}}</a>
			    </li>
			    {{end}}
			    {{end}}
		</ul>
	    </div>
	    <div class="statusbar">
		<div class="left"><script> document.getElementById("file-explorer").getElementsByTagName("LI").length;</script> object(s)
		</div>
		<div class="right">&nbsp;
		</div>
	    </div>
	</div>
    </body>
    <script>
     
    </script>
</html>
