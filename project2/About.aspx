<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="project2.About" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
    <table>
         <div class="text">
                <p id="firstPara"></p>
         </div>
    </table>
    <script type="text/javascript">
        $(document).ready(function () {
                type: "POST",
                url: "../services/WebSwervice1.asmx/HelloWorld",
                data: null,
                contentType: "application/json",
                datatype: "json",
                success: function(res) {
                    $('#firstPara').html(d.res);
                }


        ))
    </script>




</asp:Content>
