﻿<%@ Page Title="" Language="C#" MasterPageFile="~/01_Administrator/AD_MasterPage.master" AutoEventWireup="true" CodeBehind="AD_Prof_Assign.aspx.cs" Inherits="Project._01_Administrator.AD_Prof_Assign" %>

<asp:Content ID="WebContent" ContentPlaceHolderID="WebContent" runat="server">
    <!-- 網頁內容 -->
    <table style="width: 100%; vertical-align: top;" id="table">
        <tr>
            <td style="border-style: solid; vertical-align: top; width: 75%; height: 599px;">
                <asp:Label ID="Browse_Mode_LB" runat="server" Text="瀏覽模式"></asp:Label>
                <asp:DropDownList ID="Browse_Mode_DDL" runat="server">
                </asp:DropDownList>
                <div style="width: 100%; height: 47%; overflow: scroll">
                <asp:GridView ID="Teacher_GV" runat="server" AutoGenerateColumns="False" DataKeyNames="ID,ID1" PageSize="15" ShowHeaderWhenEmpty="True" Width="100%" Height="25%">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="教師編號" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Name" HeaderText="姓名" SortExpression="Name" />
                        <asp:BoundField DataField="Field" HeaderText="專長領域" SortExpression="Field" />
                        <asp:BoundField DataField="Exam_Point" HeaderText="審查人數" SortExpression="Exam_Point" />
                    </Columns>
                </asp:GridView>
                </div>
                <asp:Label ID="Doc_Title_Forward" runat="server" Text="國防大學管理學院資訊管理學系"></asp:Label>
                <asp:DropDownList ID="Batch_DDL" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="Batch" DataTextField="Batch" DataValueField="Batch" OnSelectedIndexChanged="Batch_DDL_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:Label ID="Doc_Title__Backward" runat="server" Text="期論文計畫書審查成績冊"></asp:Label>
                <div style="width: 100%; height: 47%; overflow: scroll">
                <asp:GridView ID="Student_GV" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" PageSize="25" ShowHeaderWhenEmpty="True" Width="100%" AutoGenerateSelectButton="True" OnSelectedIndexChanged="Student_GV_SelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField HeaderText="項次"></asp:TemplateField>
                        <asp:BoundField DataField="ID" HeaderText="學號" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Name" HeaderText="研究生姓名" SortExpression="Name" />
                        <asp:BoundField DataField="Ch_Title" HeaderText="論文題目(中文)" SortExpression="Ch_Title" />
                        <asp:BoundField DataField="First_Prof" HeaderText="指導教授" SortExpression="First_Prof" />
                        <asp:BoundField DataField="First_Commit" HeaderStyle-ForeColor="Blue" HeaderText="審查委員1" SortExpression="First_Commit">
                            <HeaderStyle ForeColor="Blue" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Second_Commit" HeaderStyle-ForeColor="Blue" HeaderText="審查委員2" SortExpression="Second_Commit">
                            <HeaderStyle ForeColor="Blue" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Third_Commit" HeaderStyle-ForeColor="Blue" HeaderText="審查委員3" SortExpression="Third_Commit">
                            <HeaderStyle ForeColor="Blue" />
                        </asp:BoundField>
                    </Columns>
                    <RowStyle HorizontalAlign="Center" />
                </asp:GridView>
                </div>
            </td>

            <td style="border-style: solid solid solid none; vertical-align: top; width: 25%; height: 599px;">
                <asp:Label ID="Title_Student_LB" runat="server" Text="研究生" Font-Bold="True"></asp:Label>
                <asp:DetailsView ID="Student_DV" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="Student_SDS_ForDV" Height="50px" Width="100%">
                    <Fields>
                        <asp:BoundField DataField="ID" HeaderText="研究生學號" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Name" HeaderText="研究生姓名" SortExpression="Name" />
                        <asp:BoundField DataField="Ch_Title" HeaderText="論文題目(中文)" SortExpression="Ch_Title" />
                        <asp:BoundField DataField="First_Prof" HeaderText="指導教授" SortExpression="First_Prof" />
                        <asp:BoundField DataField="First_Commit" HeaderText="審查委員1" SortExpression="First_Commit" />
                        <asp:BoundField DataField="Second_Commit" HeaderText="審查委員2" SortExpression="Second_Commit" />
                        <asp:BoundField DataField="Third_Commit" HeaderText="審查委員3" SortExpression="Third_Commit" />
                    </Fields>
                </asp:DetailsView>
                <asp:Label ID="Title_Commit_LB" runat="server" Text="審查委員" Font-Bold="True"></asp:Label>
                <asp:DetailsView ID="Commit_DV_0" runat="server" AutoGenerateRows="False" DataKeyNames="ID" Height="50px" Width="100%">
                    <Fields>
                        <asp:TemplateField HeaderText="ID" SortExpression="ID">
                            <ItemTemplate>
                                <asp:DropDownList ID="ID_DDL" runat="server" AutoPostBack="True" DataSourceID="Test_SDS" SelectedValue='<%# Bind("ID") %>' DataTextField="ID" DataValueField="ID" Width="100%">
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:BoundField DataField="Job" HeaderText="Job" SortExpression="Job" />
                        <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                        <asp:BoundField DataField="Exp" HeaderText="Exp" SortExpression="Exp" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Field" HeaderText="Field" SortExpression="Field" />
                        <asp:BoundField DataField="Exam_Point" HeaderText="Exam_Point" SortExpression="Exam_Point" />
                    </Fields>
                </asp:DetailsView>
                <asp:DetailsView ID="Commit_DV_1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" Height="50px" Width="100%">
                    <Fields>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:BoundField DataField="Job" HeaderText="Job" SortExpression="Job" />
                        <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                        <asp:BoundField DataField="Exp" HeaderText="Exp" SortExpression="Exp" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Field" HeaderText="Field" SortExpression="Field" />
                        <asp:BoundField DataField="Exam_Point" HeaderText="Exam_Point" SortExpression="Exam_Point" />
                    </Fields>
                </asp:DetailsView>
                <asp:DetailsView ID="Commit_DV_2" runat="server" AutoGenerateRows="False" DataKeyNames="ID" Height="50px" Width="100%">
                    <Fields>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:BoundField DataField="Job" HeaderText="Job" SortExpression="Job" />
                        <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                        <asp:BoundField DataField="Exp" HeaderText="Exp" SortExpression="Exp" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Field" HeaderText="Field" SortExpression="Field" />
                        <asp:BoundField DataField="Exam_Point" HeaderText="Exam_Point" SortExpression="Exam_Point" />
                    </Fields>
                </asp:DetailsView>
                <asp:DetailsView ID="Commit_DV_3" runat="server" AutoGenerateRows="False" DataKeyNames="ID" Height="50px" Width="100%">
                    <Fields>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:BoundField DataField="Job" HeaderText="Job" SortExpression="Job" />
                        <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                        <asp:BoundField DataField="Exp" HeaderText="Exp" SortExpression="Exp" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Field" HeaderText="Field" SortExpression="Field" />
                        <asp:BoundField DataField="Exam_Point" HeaderText="Exam_Point" SortExpression="Exam_Point" />
                    </Fields>
                </asp:DetailsView>
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="Batch" runat="server" ConnectionString="<%$ ConnectionStrings:Project_Db %>" SelectCommand="SELECT DISTINCT [Batch] FROM [Student]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="Student_SDS_ForDV" runat="server" ConnectionString="<%$ ConnectionStrings:Project_Db %>" SelectCommand="SELECT [ID], [Name], [Ch_Title], [First_Commit], [Second_Commit], [Third_Commit], [First_Prof] FROM [Student]"></asp:SqlDataSource>
     
    <asp:SqlDataSource ID="Test_SDS" runat="server" ConnectionString="<%$ ConnectionStrings:Project_Db %>" SelectCommand="SELECT [ID] FROM [ExamPoint_Log] WHERE (([Batch] = @Batch) OR ([Batch] = @Batch2))">
        <SelectParameters>
            <asp:ControlParameter ControlID="Batch_DDL" DefaultValue="0" Name="Batch" PropertyName="SelectedValue" Type="String" />
            <asp:Parameter DefaultValue="0" Name="Batch2" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
     
</asp:Content>
