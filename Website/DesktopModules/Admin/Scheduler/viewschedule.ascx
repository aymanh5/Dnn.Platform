<%@ Control Language="C#" AutoEventWireup="false" Inherits="DotNetNuke.Modules.Admin.Scheduler.ViewSchedule" CodeFile="ViewSchedule.ascx.cs" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke.Web" Namespace="DotNetNuke.Web.UI.WebControls" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="Telerik.Web.UI" %>
<div class="dnnViewSchedule dnnClear">
    <dnn:DnnGrid id="dgSchedule" runat="server" AutoGenerateColumns="false" AllowSorting="true" CssClass="dnnGrid">
        <MasterTableView DataKeyNames="ScheduleID,Enabled,TimeLapse,TimeLapseMeasurement,RetryTimeLapse,RetryTimeLapseMeasurement,NextStart">
            <Columns>
                <dnn:DnnGridTemplateColumn UniqueName="EditItem">
                    <ItemTemplate>
                        <asp:HyperLink ID="hlEdit" runat="server"><dnn:DnnImage IconKey="Edit" id="imgEdit" runat="server" /></asp:HyperLink>
                    </ItemTemplate>
                </dnn:DnnGridTemplateColumn>
                <dnn:DnnGridBoundColumn DataField="FriendlyName" HeaderText="Name" />
                <dnn:DnnGridCheckBoxColumn DataField="Enabled" HeaderText="Enabled" />
                <dnn:DnnGridTemplateColumn UniqueName="Frequency" HeaderText="Frequency">
                    <ItemTemplate><asp:Label ID="lblFrequency" runat="server" /></ItemTemplate>
                </dnn:DnnGridTemplateColumn>
                <dnn:DnnGridTemplateColumn UniqueName="RetryTimeLapse" HeaderText="RetryTimeLapse">
                    <ItemTemplate><asp:Label ID="lblRetryTimeLapse" runat="server" /></ItemTemplate>
                </dnn:DnnGridTemplateColumn>
                <dnn:DnnGridTemplateColumn UniqueName="NextStart" HeaderText="NextStart">
                    <ItemTemplate><asp:Label ID="lblNextStart" runat="server" /></ItemTemplate>
                </dnn:DnnGridTemplateColumn>
                <dnn:DnnGridTemplateColumn UniqueName="ViewHistory" HeaderText="ViewLog">
                    <ItemTemplate>
                        <asp:HyperLink ID="hlHistory" runat="server">
                            <dnn:DnnImage IconKey="ScheduleHistory" id="imgHistory" runat="server" />
                        </asp:HyperLink>
                    </ItemTemplate>
                </dnn:DnnGridTemplateColumn>
            </Columns>
        </MasterTableView>
    </dnn:DnnGrid>
    <ul class="dnnActions dnnClear">
	    <li><asp:Hyperlink id="cmdAdd" runat="server" CssClass="dnnPrimaryAction" resourcekey="AddContent.Action"  /></li>
	    <li><asp:Hyperlink id="cmdStatus" runat="server" CssClass="dnnSecondaryAction" resourcekey="ContentOptions.Action" /></li>
	    <li><asp:Hyperlink id="cmdHistory" runat="server" CssClass="dnnSecondaryAction" resourcekey="ScheduleHistory.Action" /></li>
    </ul>
</div>
<div id="dnnAdvancedSettings" class="dnnAdvancedSettings dnnClear">
		<div class="dnnFormExpandContent"><a href=""><%=Localization.GetString("ExpandAll", Localization.SharedResourceFile)%></a></div>
		<div class="psasContent dnnClear">
			<h2 id="dnnPanel-TabsAppearance" class="dnnFormSectionHead"><a href="" class="dnnLabelExpanded"><%=LocalizeString("Settings")%></a></h2>
			<fieldset>
				<legend></legend>
				      <div class="ssosContent dnnClear">
            <fieldset class="dnnhsOtherSettings">
               
                <div class="dnnFormItem">
                    <dnn:label id="plSchedulerMode" controlname="cboSchedulerMode" runat="server" />
                    <dnn:dnncombobox id="cboSchedulerMode" runat="server">
                        <Items>
                        <dnn:DnnComboBoxItem resourcekey="Disabled" Value="0" />
                        <dnn:DnnComboBoxItem resourcekey="TimerMethod" Value="1" />
                        <dnn:DnnComboBoxItem resourcekey="RequestMethod" Value="2" />
                        </Items>
                    </dnn:dnncombobox>
                </div>
			</fieldset>
                         

		</div>
                 </fieldset>
	</div>

 <ul class="dnnActions dnnClear">
        <li>
            <asp:LinkButton ID="cmdUpdate" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    </ul>