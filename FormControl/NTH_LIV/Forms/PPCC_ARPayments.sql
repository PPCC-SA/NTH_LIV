DECLARE @FormID INT
DECLARE @DeletedFormID INT
DECLARE @Sequence INT
SET @Sequence = 0
SELECT @FormID = ID FROM Forms WHERE Name = N'PPCC_ARPayments' AND ScopeType = 1
SET    @DeletedFormID = @FormID
DELETE FROM Forms WHERE ID = @FormID AND ScopeType = 1
DELETE FROM FormComponents WHERE FormID = @FormID
DELETE FROM ActiveXComponentProperties WHERE FormID = @FormID
DELETE FROM FormEventHandlers WHERE FormID = @FormID
DELETE FROM Variables WHERE FormID = @FormID
DELETE FROM ActiveXScriptLines WHERE ScriptName = N'PPCC_ARPayments' AND ScopeType = 1
DELETE FROM ActiveXScripts WHERE Name = N'PPCC_ARPayments' AND ScopeType = 1
DELETE FROM FormComponentDragDropEvents WHERE FormID = @FormID
DELETE FROM DerivedFormOverrides WHERE FormID = @FormID

INSERT INTO [Forms] (
  [ScopeType], [ScopeName], [Component], [Name], [SubComponent], [Type], [Caption], 
  [PrimaryDataSource], 
  [StandardOperations], [TopPos], [LeftPos], [Height], [Width], [IconFileName], [HelpFileName], [HelpContextID], [Flags], [LockedBy], 
  [FilterFormSpec], [PaneZeroSize], [Description], [MasterDeviceID], [BaseFormName], [LayoutAttributes] )
VALUES (
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  NULL,   -- [Component]
  N'PPCC_ARPayments',   -- [Name]
  NULL,   -- [SubComponent]
  3,   -- [Type]
  N'PPCC A/RPayments',   -- [Caption]
  N'V(fds_DataSource)',   -- [PrimaryDataSource]
  1019,   -- [StandardOperations]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('40' AS float),   -- [Height]
  CAST('129' AS float),   -- [Width]
  NULL,   -- [IconFileName]
  N'default.html?helpcontent=mergedProjects/sl_financial/forms/artopics/customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  970,   -- [Flags]
  NULL,   -- [LockedBy]
  N'ARPaymentsQuery( )',   -- [FilterFormSpec]
  N'21.285714285714285',   -- [PaneZeroSize]
  NULL,   -- [Description]
  0,   -- [MasterDeviceID]
  NULL,   -- [BaseFormName]
  NULL  -- [LayoutAttributes]
)

SELECT @FormID = @@IDENTITY

DECLARE @ContainerSequence INT
DECLARE @TabOrder INT
SET @ContainerSequence = 0
SET @TabOrder = 0 
SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'FormCollectionGrid',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  14,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('38.93333333333333' AS float),   -- [Height]
  CAST('2' AS float),   -- [ListHeight]
  CAST('21' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'objects',   -- [DataSource]
  3,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  384,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'StdGridWithActions()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  NULL,   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = 500
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'GotoActivitiesFolderToolbarButton',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  11,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('0' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('0' AS float),   -- [Width]
  N'sGoToActivitiesFolder',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'GoToActivitiesFolder',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  N'GotoActivities.png',   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_main/buttons/g/gotoactivitiesfoldertoolbarbutton.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sGoToActivitiesFolder',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'GotoUtilitiesFolderToolbarButton',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  11,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('0' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('0' AS float),   -- [Width]
  N'sGoToUtilitiesFolder',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'GoToUtilitiesFolder',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  N'GotoUtilities.png',   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_main/buttons/g/gotoutilitiesfoldertoolbarbutton.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sGoToUtilitiesFolder',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'GotoMaintenanceFolderToolbarButton',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  11,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('0' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('0' AS float),   -- [Width]
  N'sGoToMaintenanceFolder',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'GoToMaintenanceFolder',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  N'GotoMaintenance.png',   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_main/buttons/g/gotomaintenancefoldertoolbarbutton.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sGoToMaintenanceFolder',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'GotoFilesFolderToolbarButton',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  11,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('0' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('0' AS float),   -- [Width]
  N'sGoToFilesFolder',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'GoToFilesFolder',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  N'GotoFiles.png',   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_main/buttons/g/gotofilesfoldertoolbarbutton.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sGoToFilesFolder',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'GotoReportsFolderToolbarButton',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  11,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('0' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('0' AS float),   -- [Width]
  N'sGoToReportsFolder',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'GoToReportsFolder',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  N'GotoReports.png',   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_main/buttons/g/gotoreportsfoldertoolbarbutton.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sGoToReportsFolder',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'GotoQueriesFolderToolbarButton',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  11,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('0' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('0' AS float),   -- [Width]
  N'sGoToQueriesFolder',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'GoToQueriesFolder',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  N'GotoQueries.png',   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_main/buttons/g/gotoqueriesfoldertoolbarbutton.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sGoToQueriesFolder',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CustNumGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('6.1428571428571432' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12' AS float),   -- [Width]
  NULL,   -- [Caption]
  N'CustNumArpmt',   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CustNum',   -- [DataSource]
  1,   -- [Binding]
  N'StdCurCompDetails',   -- [EventToGenerate]
  N'CustNumDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  32,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/c/customer_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'CustNumForBillTo(CadName,,,,,,CadCurrCode)',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'CustNum',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sCustomer',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CadNameGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('18.142857142857142' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('32' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CadName',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/c/customer_name_ar_draft_remittance.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Name',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sName',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'TypeGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('9' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.Type',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'TypeDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/t/type_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  N'StdDefault',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'ArpmtType(sType, sArpmtType=D, sCustomer, sCurrency,P(CadCurrCode))',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ArpmtType',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sType',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CreditMemoGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CreditMemoNum',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/c/credit_memo_ar_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'ArtranCreditMemo(CustNum)',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'InvNum',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sCreditMemo',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CheckNumGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CheckNum',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'CheckNumDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/c/check_no_customer_paymentsar_payment_distribution.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  N'StdDefault',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'ArCheckNum()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ArCheckNum',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sNumber',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CheckNumGridColWithList',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CheckNum',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'CheckNumDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'ArCheckNum()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ArCheckNum',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sNumber',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'RecptDateGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  NULL,   -- [Caption]
  N'DateLE(C(DepositDateStatic),DepositDate),DateForAcctPeriod(RecptDateGridCol,RecptDateStatic,@%update),Ask(DateChkPromptMsg, DateChkPromptButtons,)',   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.RecptDate',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'RecptDateDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  32,   -- [Flags]
  N'CURDATE()',   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/r/receipt_date_field_option.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Date',   -- [PropertyClassName]
  N'DEFAULTVALUE(CURDATE())',   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sReceiptDate',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DueDateGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  N'sPaymentDueDateForARPayments',   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DueDate',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/d/draft_due_date_customer_paymentsar_payment_distribution.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Date',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sPaymentDueDateForARPayments',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CusPayTypeGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('11' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CusPayType',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_custvend/fields/p/payment_type_customer_maintenance.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'CustPayType',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sPaymentType',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DepositDateGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  NULL,   -- [Caption]
  N'DateGE(C(RecptDateStatic),RecptDate)',   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DepositDate',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  32,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/d/deposit_date_ar_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Date',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sDepositDate',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerCorpCustGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('11' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerCorpCust',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  8,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/c/corporate_cust_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'BooleanQuery',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sCorporate',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'RefGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('32' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.Ref',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/g/gl_reference_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Reference',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sG/LReference',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DescriptionGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('32' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.Description',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/d/payment_transaction_description.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Description',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sDescription',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'TransferCashGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('11' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.TransferCash',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/t/transfer_cash_multi_site_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ListYesNo',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sTransferCash',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'BankCodeGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('9' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.BankCode',   -- [DataSource]
  1,   -- [Binding]
  N'StdCurCompDetails',   -- [EventToGenerate]
  N'BankCodeDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/b/bank_code_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'BankCodeByCurrency(CadCurrCode)',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'BankCode',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sBankCode',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'PaymentCurrCodeGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('6.6666666666666696' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('9' AS float),   -- [Width]
  N'sPaymentCurrency',   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.BnkCurrCode',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/p/payment_currency_code_ap_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'CurrCode',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sPaymentCurrency',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CadCurrCodeGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('11' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CadCurrCode',   -- [DataSource]
  1,   -- [Binding]
  N'StdCurCompDetails',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_custvend/fields/c/currency_ar_trxcustomer_service.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'CurrCode',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sCurrency',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'PaymentCheckAmtGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('6.6666666666666696' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('23' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.PaymentCheckAmt',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'PaymentAmountDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/p/payment_amount_ap_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sPaymentCheckAmount',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'PaymentExchRateGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('6.6666666666666696' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('14' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.PaymentExchRate',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'PaymentExchRateDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/p/payment_exchange_rate_ap_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ExchRate',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sPaymentExchangeRate',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'ForCheckAmtGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('23' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.ForCheckAmt',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'ForCheckAmtDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/f/foreign_check_amount_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'MASK(->>>>>>>>>9.9999)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sCheckAmount',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerEuroAmountGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('20' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerEuroAmount',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/e/euro_check_amount_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'AmountVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'MASK(->>>>>>>>>9.99)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sEuroAmount',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DomCheckAmtGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('23' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DomCheckAmt',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'LeaveDomCheckAmt',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/d/domestic_check_amount_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sDomesticCheckAmount',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerPaymentAppliedGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('6.6666666666666696' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('23' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerPaymentApplied',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/t/total_applied_ap_payment_distribution.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sPaymentAmtApplied',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerForAppliedGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('23' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerForApplied',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/c/customer_amount_applied_a_r_payment_distributions.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'MASK(->>>>>>>>>9.9999)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sAmtApplied',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerDomAppliedGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('23' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerDomApplied',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/a/amt_applied_ar_payment_distribution.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sDomesticAmtApplied',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerPaymentRemainingGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('6.6666666666666696' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('23' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerPaymentRemaining',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/t/total_remaining_ap_payment_distribution.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sPaymentRemaining',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerForRemainingGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('23' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerForRemaining',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/t/tot_remaining_arap_payment_distribution.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'MASK(->>>>>>>>>9.9999)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sRemaining',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'ExchRateGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('14' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.ExchRate',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'LeaveExchRate',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/e/exchange_rate_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  N'ExchRateGetCurrent',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'ExchRateWithGetCurrRightClickOption()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ExchRate',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sExchangeRate',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerDomRemainingGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.800000000000001' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('23' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerDomRemaining',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/t/tot_remaining_arap_payment_distribution.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sDomesticRemaining',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = 0
SET @TabOrder = 0
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'AmtPaidEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('16.066666666666666' AS float),   -- [TopPos]
  CAST('14.142857142857142' AS float),   -- [LeftPos]
  CAST('1.3333333333333333' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('14.285714285714286' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.UDFDecimal1',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  N'0',   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  N'DEFAULTVALUE(0)',   -- [Post301DataType]
  N'MASK(>>>>>>9.99) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  NULL,   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'BankEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('14.333333333333334' AS float),   -- [TopPos]
  CAST('34.857142857142854' AS float),   -- [LeftPos]
  CAST('1.3333333333333333' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('9.2857142857142865' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.UDFShortText2',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'BankCodeDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  N'STDOLE SL.SLBankHdrs(  PROPERTIES(BankCode, Name) DISPLAY(1,2)FILTER(BankCode <> ''PDR'' and BankCode <> ''PDP''))',   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  NULL,   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'bt_CalDomAmt',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  8,   -- [Type]
  CAST('18.066666666666666' AS float),   -- [TopPos]
  CAST('89.571428571428569' AS float),   -- [LeftPos]
  CAST('1.5333333333333334' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('18.714285714285715' AS float),   -- [Width]
  N'sCalDomesticAmt',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'CalDomAmt',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sCalDomesticAmt',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'btARPaymentVoucher',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  8,   -- [Type]
  CAST('9.4000000000000004' AS float),   -- [TopPos]
  CAST('90.071428571428598' AS float),   -- [LeftPos]
  CAST('1.5333333333333334' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('18.571428571428569' AS float),   -- [Width]
  N'AR Payment Voucher',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'BtPaymentVoucher',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'BTF()',   -- [Post301Format]
  NULL,   -- [Description]
  N'AR Payment Voucher',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'btOutPutvat',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  8,   -- [Type]
  CAST('11.466666666666667' AS float),   -- [TopPos]
  CAST('90.071428571428598' AS float),   -- [LeftPos]
  CAST('1.5333333333333334' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('18.571428571428569' AS float),   -- [Width]
  N'PPCC Output VAT',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'btSalesVatRegister',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'BTF()',   -- [Post301Format]
  NULL,   -- [Description]
  N'PPCC Output VAT',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'btReceiptSlip',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  8,   -- [Type]
  CAST('13.533333333333333' AS float),   -- [TopPos]
  CAST('90.071428571428598' AS float),   -- [LeftPos]
  CAST('1.5333333333333334' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('18.571428571428569' AS float),   -- [Width]
  N'Print  AR Receipt Tax',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'PrintReceipt',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'BTF()',   -- [Post301Format]
  NULL,   -- [Description]
  N'Print  AR Receipt Tax',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CheckNoEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('14.333333333333334' AS float),   -- [TopPos]
  CAST('14.142857142857142' AS float),   -- [LeftPos]
  CAST('1.3333333333333333' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('14.285714285714286' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.UDFShortText1',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'ChangeCheckNum',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  NULL,   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CustomerEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('15.933333333333334' AS float),   -- [TopPos]
  CAST('39.142857142857146' AS float),   -- [LeftPos]
  CAST('1.3333333333333333' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('42' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.UDFLongText2',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  NULL,   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'Due',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  26,   -- [Type]
  CAST('14.333333333333334' AS float),   -- [TopPos]
  CAST('48.285714285714285' AS float),   -- [LeftPos]
  CAST('1.3999999999999999' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('14.285714285714286' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.UDFDateTime1',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'DateVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  NULL,   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'GLRefEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('17.733333333333334' AS float),   -- [TopPos]
  CAST('14' AS float),   -- [LeftPos]
  CAST('1.3333333333333333' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('23.428571428571427' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.UDFLongText1',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  NULL,   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'GLRefEdit1',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('17.733333333333334' AS float),   -- [TopPos]
  CAST('14' AS float),   -- [LeftPos]
  CAST('1.3333333333333333' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('23.428571428571427' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.UDFLongText1',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  NULL,   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'groupBox1',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  6,   -- [Type]
  CAST('13.333333333333334' AS float),   -- [TopPos]
  CAST('1.7142857142857142' AS float),   -- [LeftPos]
  CAST('6.1333333333333337' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('86.714285714285694' AS float),   -- [Width]
  N'Check Information',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'BTF()',   -- [Post301Format]
  NULL,   -- [Description]
  N'Check Information',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'HdrGroupBox',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  6,   -- [Type]
  CAST('0.13' AS float),   -- [TopPos]
  CAST('1' AS float),   -- [LeftPos]
  CAST('7.4000000000000004' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('86.714285714285694' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'StdGroupBox()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  NULL,   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'RunRV',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  8,   -- [Type]
  CAST('8.1333333333333329' AS float),   -- [TopPos]
  CAST('32.714285714285715' AS float),   -- [LeftPos]
  CAST('1.5333333333333334' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('11.285714285714286' AS float),   -- [Width]
  N'RunRV',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'RUNRV',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'BTF()',   -- [Post301Format]
  NULL,   -- [Description]
  N'RunRV',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'sAmtPaid',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('16.133333333333333' AS float),   -- [TopPos]
  CAST('3.2857142857142856' AS float),   -- [LeftPos]
  CAST('0.8666666666666667' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.142857142857142' AS float),   -- [Width]
  N'Amount Paid',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Amount Paid',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'sBank',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('14.6' AS float),   -- [TopPos]
  CAST('29' AS float),   -- [LeftPos]
  CAST('0.8666666666666667' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('5' AS float),   -- [Width]
  N'Bank',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Bank',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'sChNo',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('14.6' AS float),   -- [TopPos]
  CAST('2.5714285714285716' AS float),   -- [LeftPos]
  CAST('0.8666666666666667' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.857142857142858' AS float),   -- [Width]
  N'Check No.',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Check No.',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'sDue',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('14.6' AS float),   -- [TopPos]
  CAST('43' AS float),   -- [LeftPos]
  CAST('0.8666666666666667' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('5' AS float),   -- [Width]
  N'Due',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Due',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'sGLRef',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('17.933333333333334' AS float),   -- [TopPos]
  CAST('3' AS float),   -- [LeftPos]
  CAST('0.8666666666666667' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.428571428571429' AS float),   -- [Width]
  N'GL Ref',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'GL Ref',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'sPayBy',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('16.333333333333332' AS float),   -- [TopPos]
  CAST('29.857142857142858' AS float),   -- [LeftPos]
  CAST('0.8666666666666667' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('8.7142857142857135' AS float),   -- [Width]
  N'Pay By',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Pay By',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'sStatus',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('14.6' AS float),   -- [TopPos]
  CAST('64' AS float),   -- [LeftPos]
  CAST('0.8666666666666667' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('6.2857142857142856' AS float),   -- [Width]
  N'Status',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Status',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'static1_SITE',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('35.352941176470587' AS float),   -- [TopPos]
  CAST('42.625' AS float),   -- [LeftPos]
  CAST('1.5294117647058822' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('17.125' AS float),   -- [Width]
  N'Test Source Control',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  N'Test Source Control',   -- [Description]
  N'Test Source Control',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'static2_SITE',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('24.235294117647058' AS float),   -- [TopPos]
  CAST('37.25' AS float),   -- [LeftPos]
  CAST('1.9411764705882353' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('16.375' AS float),   -- [Width]
  N'Test 1',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Test 1',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'StatusEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('14.466666666666667' AS float),   -- [TopPos]
  CAST('71.714285714285708' AS float),   -- [LeftPos]
  CAST('1.3333333333333333' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13.857142857142858' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.UDFShortText3',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  N'INLINE ENTRIES(O\Check On hand,W\Check Clearing,P\Check Confirmed,R\Check Return,C\Cancel) DISPLAY(2) VALUE(1)',   -- [ComboListSource]
  513,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  NULL,   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CustNumStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('1.36666666666667' AS float),   -- [TopPos]
  CAST('2.71428571428571' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.285714285714301' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sCustomer',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CustNumEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('1.06666666666667' AS float),   -- [TopPos]
  CAST('13.5714285714286' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10' AS float),   -- [Width]
  N'C(CustNumStatic)',   -- [Caption]
  N'CustNumArpmt',   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CustNum',   -- [DataSource]
  1,   -- [Binding]
  N'StdCurCompDetails',   -- [EventToGenerate]
  N'CustNumDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  33,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/c/customer_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'CustNumForBillTo(CadName,,,,,,CadCurrCode)',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'CustNum',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(CustNumStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CadNameEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('1.06666666666667' AS float),   -- [TopPos]
  CAST('24.3571428571429' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('62' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CadName',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/c/customer_name_ar_draft_remittance.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Name',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sName',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'TypeStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('5.5333333333333332' AS float),   -- [TopPos]
  CAST('2.71428571428571' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.285714285714301' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sType',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'TypeEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('5.5333333333333332' AS float),   -- [TopPos]
  CAST('13.5714285714286' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('9' AS float),   -- [Width]
  N'C(TypeStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.Type',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'TypeDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  33554433,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/t/type_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  N'StdDefault',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'ArpmtType(sType, sArpmtType=D, sCustomer, sCurrency,P(CadCurrCode))',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ArpmtType',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(TypeStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CreditMemoStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('2.8666666666666698' AS float),   -- [TopPos]
  CAST('31.285714285714285' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('11.4285714285714' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sCreditMemo',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CreditMemoEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('2.56666666666667' AS float),   -- [TopPos]
  CAST('43.714285714285701' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('15' AS float),   -- [Width]
  N'C(CreditMemoStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CreditMemoNum',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  33554433,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/c/credit_memo_ar_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'ArtranCreditMemo(CustNum)',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'InvNum',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(CreditMemoStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CheckNumStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('8.4000000000000004' AS float),   -- [TopPos]
  CAST('3.7142857142857144' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('11.571428571428571' AS float),   -- [Width]
  N'RV Number',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'RV Number',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CheckNumEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('8.0666666666666664' AS float),   -- [TopPos]
  CAST('15.857142857142858' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('15' AS float),   -- [Width]
  N'C(CheckNumStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CheckNum',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'CheckNumDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  33554465,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/c/check_no_customer_paymentsar_payment_distribution.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  N'StdDefault',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'ArCheckNum()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ArCheckNum',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(CheckNumStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CheckNumEnhancedCombo',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('2.56666666666667' AS float),   -- [TopPos]
  CAST('71.357142857142804' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('15' AS float),   -- [Width]
  N'C(CheckNumStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CheckNum',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'CheckNumDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  N'STDOLE SL.SLCustdrfts(  PROPERTIES(DraftNum) FILTER(CustNum=FP(CustNum) AND (Stat=''E'' OR Stat=''T'')) )',   -- [ComboListSource]
  33554465,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  N'StdDefault',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'ArCheckNum()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ArCheckNum',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(CheckNumStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'RecptDateStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('4.2999999999999998' AS float),   -- [TopPos]
  CAST('2.71428571428571' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.285714285714301' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sReceiptDate',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'RecptDateEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  26,   -- [Type]
  CAST('4' AS float),   -- [TopPos]
  CAST('13.5714285714286' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  N'C(RecptDateStatic)',   -- [Caption]
  N'DateLE(C(DepositDateStatic),DepositDate),DateForAcctPeriod(RecptDateEdit,RecptDateStatic,@%update),Ask(DateChkPromptMsg, DateChkPromptButtons,)',   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.RecptDate',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'RecptDateDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  33,   -- [Flags]
  N'CURDATE()',   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/r/receipt_date_field_option.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Date',   -- [PropertyClassName]
  N'DEFAULTVALUE(CURDATE())',   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(RecptDateStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DueDateStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('4.2999999999999998' AS float),   -- [TopPos]
  CAST('27.319047619047598' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('15.8571428571429' AS float),   -- [Width]
  N'sPaymentDueDateForARPayments',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sPaymentDueDateForARPayments',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DueDateEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  26,   -- [Type]
  CAST('4' AS float),   -- [TopPos]
  CAST('43.714285714285701' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  N'C(DueDateStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DueDate',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/d/draft_due_date_customer_paymentsar_payment_distribution.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Date',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(DueDateStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CusPayTypeStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('5.666666666666667' AS float),   -- [TopPos]
  CAST('30.428571428571427' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12.714285714285699' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sPaymentType',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CusPayTypeEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('5.4000000000000004' AS float),   -- [TopPos]
  CAST('43.714285714285715' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('9' AS float),   -- [Width]
  N'C(CusPayTypeStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CusPayType',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_custvend/fields/p/payment_type_customer_maintenance.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'CustPayType',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(CusPayTypeStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DepositDateStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('2.6666666666666665' AS float),   -- [TopPos]
  CAST('59' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('11.8571428571429' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sDepositDate',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DepositDateEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  26,   -- [Type]
  CAST('2.3999999999999999' AS float),   -- [TopPos]
  CAST('71.285714285714292' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  N'C(DepositDateStatic)',   -- [Caption]
  N'DateGE(C(RecptDateStatic),RecptDate)',   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DepositDate',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  33,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/d/deposit_date_ar_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Date',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(DepositDateStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerCorpCustEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('5.4666666666666703' AS float),   -- [TopPos]
  CAST('71.357142857142904' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerCorpCust',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  33554433,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/c/corporate_cust_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'BooleanQuery',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sCorporate',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'BankCodeGroupBox',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  6,   -- [Type]
  CAST('7.4000000000000004' AS float),   -- [TopPos]
  CAST('1' AS float),   -- [LeftPos]
  CAST('5.8499999999999996' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('86.714285714285694' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'StdGroupBox()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  NULL,   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'RefStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('10.133333333333333' AS float),   -- [TopPos]
  CAST('2' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13.285714285714301' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sG/LReference',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'RefEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('9.8000000000000007' AS float),   -- [TopPos]
  CAST('15.8571428571429' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('32' AS float),   -- [Width]
  N'C(RefStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.Ref',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/g/gl_reference_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Reference',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(RefStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DescriptionStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('11.533333333333333' AS float),   -- [TopPos]
  CAST('4.71428571428571' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.5714285714286' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sDescription',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DescriptionEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('11.199999999999999' AS float),   -- [TopPos]
  CAST('15.8571428571429' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('42' AS float),   -- [Width]
  N'C(DescriptionStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.Description',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/d/payment_transaction_description.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Description',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(DescriptionStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'ReapMesStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('11.6666666666667' AS float),   -- [TopPos]
  CAST('15.8571428571429' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('32' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  17,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  NULL,   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'TransferCashCheckBox',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('8.5333333333333297' AS float),   -- [TopPos]
  CAST('70.285714285714306' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('15' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.TransferCash',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  16385,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/t/transfer_cash_multi_site_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ListYesNo',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sTransferCash',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'BankCodeStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('2.8666666666666667' AS float),   -- [TopPos]
  CAST('2.5714285714285716' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.5714285714286' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sBankCode',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'BankCodeEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('2.5333333333333332' AS float),   -- [TopPos]
  CAST('13.714285714285714' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('7' AS float),   -- [Width]
  N'C(BankCodeStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.BankCode',   -- [DataSource]
  1,   -- [Binding]
  N'StdCurCompDetails',   -- [EventToGenerate]
  N'BankCodeDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  33,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/b/bank_code_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'BankCodeCurr(BnkCurrCode,)',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'BankCode',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(BankCodeStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = 31
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'BankCodeGroupBox1',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  6,   -- [Type]
  CAST('19.600000000000001' AS float),   -- [TopPos]
  CAST('1' AS float),   -- [LeftPos]
  CAST('7.2666666666666702' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('118.428571428571' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'StdGroupBox()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  NULL,   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'PaymentHeaderStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('21' AS float),   -- [TopPos]
  CAST('12.4285714285714' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.5714285714286' AS float),   -- [Width]
  N'sPayment',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  17,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(L)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sPayment',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'PaymentCurrCodeEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('20.733333333333334' AS float),   -- [TopPos]
  CAST('27.428571428571399' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('5' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.BnkCurrCode',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/p/payment_currency_code_ap_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'CurrCode',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sBankCodeCurrency',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'PaymentExchRateStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('21' AS float),   -- [TopPos]
  CAST('33.571428571428598' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('20.8571428571429' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  19,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  N'JUSTIFY(R)',   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sPaymentExchangeRate',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CustHeaderStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('21' AS float),   -- [TopPos]
  CAST('55.571428571428598' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  N'sCustomer',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  17,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(L)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sCustomer',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CadCurrCodeEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('20.733333333333334' AS float),   -- [TopPos]
  CAST('70.571428571428598' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('5' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CadCurrCode',   -- [DataSource]
  1,   -- [Binding]
  N'StdCurCompDetails',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  17,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_custvend/fields/c/currency_ar_trxcustomer_service.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'CurrCode',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sCurrency',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'EuroHeaderStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('21' AS float),   -- [TopPos]
  CAST('76.785714285714306' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  N'sEuro',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  17,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(L)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sEuro',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'EuroEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('20.733333333333334' AS float),   -- [TopPos]
  CAST('91.785714285714306' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('5' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.EuroParmsCurrCode',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  5121,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_main/fields/e/euro_currency_multi_currency_parameters.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'CurrCode',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sEuroCurrencyCode',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DomHeaderStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('21' AS float),   -- [TopPos]
  CAST('98' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  N'sDomestic',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  17,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(L)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sDomestic',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CurrparmsCurrCodeEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('20.733333333333334' AS float),   -- [TopPos]
  CAST('113' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('5' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CurrparmsCurrCode',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  5121,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_main/fields/d/domestic_currency_payment_distribution.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'CurrCode',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sDomesticCurrency',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'ForCheckAmtStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('22.466666666666665' AS float),   -- [TopPos]
  CAST('2.8571428571428599' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('9.1428571428571406' AS float),   -- [Width]
  N'sAmount',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sAmount',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'PaymentCheckAmtEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('22.199999999999999' AS float),   -- [TopPos]
  CAST('12.4285714285714' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('20' AS float),   -- [Width]
  N'C(PaymentCheckAmtStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.PaymentCheckAmt',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'PaymentAmountDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/p/payment_amount_ap_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(PaymentCheckAmtStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'PaymentExchRateEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('22.199999999999999' AS float),   -- [TopPos]
  CAST('33.571428571428598' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('14' AS float),   -- [Width]
  N'C(PaymentExchRateStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.PaymentExchRate',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'PaymentExchRateDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/p/payment_exchange_rate_ap_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ExchRate',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(PaymentExchRateStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'ForCheckAmtEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('22.199999999999999' AS float),   -- [TopPos]
  CAST('55.571428571428598' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('20' AS float),   -- [Width]
  N'C(ForCheckAmtStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.ForCheckAmt',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'ForCheckAmtDataChange',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/f/foreign_check_amount_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'MASK(->>>>>>>>>9.9999)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(ForCheckAmtStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerEuroAmountEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('22.199999999999999' AS float),   -- [TopPos]
  CAST('76.785714285714306' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('20' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerEuroAmount',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  N'0',   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/e/euro_check_amount_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'AmountVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  N'DEFAULTVALUE(0)',   -- [Post301DataType]
  N'MASK(->>>>>>>>>9.99)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sEuroAmount',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DomCheckAmtEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('22.199999999999999' AS float),   -- [TopPos]
  CAST('98' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('20' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DomCheckAmt',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'LeaveDomCheckAmt',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/d/domestic_check_amount_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sDomesticCheckAmount',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerForAppliedStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('23.933333333333334' AS float),   -- [TopPos]
  CAST('2.8571428571428599' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('9.1428571428571406' AS float),   -- [Width]
  N'sApplied',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sApplied',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerPaymentAppliedEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('23.600000000000001' AS float),   -- [TopPos]
  CAST('12.4285714285714' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('20' AS float),   -- [Width]
  N'C(DerPaymentAppliedStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerPaymentApplied',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/t/total_applied_ap_payment_distribution.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(DerPaymentAppliedStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerForAppliedEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('23.600000000000001' AS float),   -- [TopPos]
  CAST('55.571428571428598' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('20' AS float),   -- [Width]
  N'C(DerForAppliedStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerForApplied',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/c/customer_amount_applied_a_r_payment_distributions.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'MASK(->>>>>>>>>9.9999)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(DerForAppliedStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'ExchRateStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('23.933333333333334' AS float),   -- [TopPos]
  CAST('76.785714285714306' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13.5714285714286' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sExchangeRate',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerDomAppliedEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('23.600000000000001' AS float),   -- [TopPos]
  CAST('98' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('20' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerDomApplied',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/a/amt_applied_ar_payment_distribution.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sDomesticAmtApplied',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerForRemainingStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('25.399999999999999' AS float),   -- [TopPos]
  CAST('2.8571428571428599' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('9.1428571428571406' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sRemaining',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerPaymentRemainingEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('25.133333333333333' AS float),   -- [TopPos]
  CAST('12.4285714285714' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('20' AS float),   -- [Width]
  N'C(DerPaymentRemainingStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerPaymentRemaining',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/t/total_remaining_ap_payment_distribution.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(DerPaymentRemainingStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerForRemainingEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('25.133333333333333' AS float),   -- [TopPos]
  CAST('55.571428571428598' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('20' AS float),   -- [Width]
  N'C(DerForRemainingStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerForRemaining',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/t/tot_remaining_arap_payment_distribution.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'MASK(->>>>>>>>>9.9999)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(DerForRemainingStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'ExchRateEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('25.133333333333333' AS float),   -- [TopPos]
  CAST('76.785714285714306' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('14' AS float),   -- [Width]
  N'C(ExchRateStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.ExchRate',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'LeaveExchRate',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/e/exchange_rate_customer_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  N'ExchRateGetCurrent',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'ExchRateWithGetCurrRightClickOption()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ExchRate',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'C(ExchRateStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerDomRemainingEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('25.133333333333333' AS float),   -- [TopPos]
  CAST('98' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('20' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerDomRemaining',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/fields/t/tot_remaining_arap_payment_distribution.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Amount',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sDomesticRemaining',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DistributionsButton',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  8,   -- [Type]
  CAST('1' AS float),   -- [TopPos]
  CAST('88.571428571428598' AS float),   -- [LeftPos]
  CAST('1.3999999999999999' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('18' AS float),   -- [Width]
  N's&Distributions',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'Distributions',   -- [EventToGenerate]
  N'Distributions',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/buttons/d/distributions_button_quick_payment_application.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  N'StdDefault',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'Button()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  N'Button to open AR Payment Distributions screen',   -- [Description]
  N's&Distributions',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'QuickButton',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  8,   -- [Type]
  CAST('2.6666666666666701' AS float),   -- [TopPos]
  CAST('88.571428571428598' AS float),   -- [LeftPos]
  CAST('1.3999999999999999' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('18' AS float),   -- [Width]
  N's&Quick',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'LaunchQuick',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/buttons/q/quick_voucher_payment_button.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  N'StdDefault',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'Button()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  N'Button to open the AR screen',   -- [Description]
  N's&Quick',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'LoadARPaymentPostingBtn',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  8,   -- [Type]
  CAST('4.4000000000000004' AS float),   -- [TopPos]
  CAST('88.571428571428598' AS float),   -- [LeftPos]
  CAST('1.3999999999999999' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('18' AS float),   -- [Width]
  N's&PaymentPosting',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'LaunchPaymentPostingForm',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'default.html?helpcontent=mergedProjects/sl_financial/buttons/p/payment_posting_button_ar_payments.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  N'StdDefault',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'Button()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N's&PaymentPosting',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CurPlacesEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('26.866666666666667' AS float),   -- [TopPos]
  CAST('13.4285714285714' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CurPlaces',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'int',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  NULL,   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CurAmtFormatEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('28.399999999999999' AS float),   -- [TopPos]
  CAST('13.4285714285714' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('20' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CurAmtFormat',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'InputMask',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sAmountFormat',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'UbOldTypeStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('30.199999999999999' AS float),   -- [TopPos]
  CAST('2.3190476190476201' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.714285714285699' AS float),   -- [Width]
  N'sOldType',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sOldType',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'UbOldTypeEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('29.866666666666667' AS float),   -- [TopPos]
  CAST('13.4285714285714' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('20' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.UbOldType',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  N'C',   -- [DefaultData]
  0,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ArpmtType',   -- [PropertyClassName]
  N'DEFAULTVALUE(C)',   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sType',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerOpenCodeStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('31.600000000000001' AS float),   -- [TopPos]
  CAST('2.3190476190476201' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.714285714285699' AS float),   -- [Width]
  N'Open Code',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Open Code',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerOpenCodeEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('31.266666666666666' AS float),   -- [TopPos]
  CAST('13.4285714285714' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('20' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerOpenCode',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sOpenCode',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerOpenTypeStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('33.06666666666667' AS float),   -- [TopPos]
  CAST('2.3190476190476201' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.714285714285699' AS float),   -- [Width]
  N'Open Type',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Open Type',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerOpenTypeEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('32.799999999999997' AS float),   -- [TopPos]
  CAST('13.4285714285714' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('20' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerOpenType',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sOpenType',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'GenerateDistributions',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  10,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('0' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('0' AS float),   -- [Width]
  N'sGenerateDistributions',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'GenerateDistributions',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sGenerateDistributions',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CurPartofEuroCheckBox',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('28.600000000000001' AS float),   -- [TopPos]
  CAST('42' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('15' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CurPartOfEuro',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ListYesNo',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sPartOfEuro',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerFixedEuroCheckBox',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('30' AS float),   -- [TopPos]
  CAST('42' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  N'Fixed Euro',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerFixedEuro',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'BooleanQuery',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'Fixed Euro',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerGetCrossSiteDistCheckBox',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('31.466666666666665' AS float),   -- [TopPos]
  CAST('42' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('22' AS float),   -- [Width]
  N'Get Cross Site Dist',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerGetCrossSiteDist',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'BooleanQuery',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'Get Cross Site Dist',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerOpenDraftCheckBox',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('32.866666666666667' AS float),   -- [TopPos]
  CAST('42' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerOpenDraft',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'BooleanQuery',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sOpenDraft',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CurBnkPartOfEuroCheckBox',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('28.600000000000001' AS float),   -- [TopPos]
  CAST('68.571428571428598' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('19' AS float),   -- [Width]
  N'CurBnkPartOfEuro',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CurBnkPartOfEuro',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ListYesNo',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'CurBnkPartOfEuro',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'CurrDomPartOfEuroCheckBox',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('30' AS float),   -- [TopPos]
  CAST('68.571428571428598' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('16' AS float),   -- [Width]
  N'DomPartOfEuro',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.CurrDomPartOfEuro',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1025,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ListYesNo',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'DomPartOfEuro',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerDomBankFlagCheckBox',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('31.466666666666665' AS float),   -- [TopPos]
  CAST('68.571428571428598' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('11' AS float),   -- [Width]
  N'Dom Bank',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerDomBankFlag',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'ListYesNo',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'Dom Bank',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = @TabOrder + 1
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID,   -- [FormID]
  N'DerCustDrftPrintFlagCheckBox',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('32.866666666666667' AS float),   -- [TopPos]
  CAST('68.571428571428598' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('14' AS float),   -- [Width]
  N'sPrintDraft',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.DerCustDrftPrintFlag',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  1,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  1,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'BooleanQuery',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  NULL,   -- [Post301Format]
  NULL,   -- [Description]
  N'sPrintDraft',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

DECLARE @EventSequence INT
SET @EventSequence = 0

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'ArpmtLeaveCustAmt',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'SL.SLArpmts.ArpmtLeaveCustAmtSp( V(ehm1_ArpmtLeaveCustAmt0) ERRORMESSAGE(mBackEndMessage) SUCCESSMESSAGE(mBackEndMessage) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'AskGenDists',   -- [EventName]
  @EventSequence,   -- [Sequence]
  8,   -- [ResponseType]
  N'MsgApp(Clear, Prompt, SuccessFailure, mQ=CmdPerformNoYes,  STRINGS(sGenerateDistributions))',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'BankCodeDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  33,   -- [ResponseType]
  N'SCRIPTTEXT(Option Explicit On' + NCHAR(13) + NCHAR(10) + N'Option Strict On' + NCHAR(13) + NCHAR(10) + NCHAR(13) + NCHAR(10) + N'Imports System' + NCHAR(13) + NCHAR(10) + N'Imports Microsoft.VisualBasic' + NCHAR(13) + NCHAR(10) + N'Imports Mongoose.IDO.Protocol' + NCHAR(13) + NCHAR(10) + N'Imports Mongoose.Scripting' + NCHAR(13) + NCHAR(10) + NCHAR(13) + NCHAR(10) + N'Namespace Mongoose.GlobalScripts' + NCHAR(13) + NCHAR(10) + N'    Public Class EvHandler_BankCodeDataChange_0' + NCHAR(13) + NCHAR(10) + N'        Inherits GlobalScript' + NCHAR(13) + NCHAR(10) + NCHAR(13) + NCHAR(10) + N'        Sub Main()' + NCHAR(13) + NCHAR(10) + N'            If ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") = _' + NCHAR(13) + NCHAR(10) + N'               Application.Variables("Parm_CurrCode").Value Then' + NCHAR(13) + NCHAR(10) + N'                ThisForm.PrimaryIDOCollection.Set',   -- [Response]
  N'CurrentObjectProperty("DerDomBankFlag", "1")' + NCHAR(13) + NCHAR(10) + N'            Else' + NCHAR(13) + NCHAR(10) + N'                ThisForm.PrimaryIDOCollection.SetCurrentObjectProperty("DerDomBankFlag", "0")' + NCHAR(13) + NCHAR(10) + N'            End If' + NCHAR(13) + NCHAR(10) + N'            ThisForm.PrimaryIDOCollection.NotifyDependentsToRefresh("DerDomBankFlag")' + NCHAR(13) + NCHAR(10) + N'        End Sub' + NCHAR(13) + NCHAR(10) + NCHAR(13) + NCHAR(10) + N'    End Class' + NCHAR(13) + NCHAR(10) + N'End Namespace' + NCHAR(13) + NCHAR(10) + N')',   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'BankCodeDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'SetFieldAttributes()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'BankCodeDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  21,   -- [ResponseType]
  N'GetPaymentExchRate(  )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'BankCodeDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'EnableDisableCheckInfor()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'BtPaymentVoucher',   -- [EventName]
  @EventSequence,   -- [Sequence]
  6,   -- [ResponseType]
  N'PPCC_ARPaymentVoucherReport( SETVARVALUES(StartChkNum=PV(CheckNum),EndChkNum=PV(CheckNum)) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'btSalesVatRegister',   -- [EventName]
  @EventSequence,   -- [Sequence]
  6,   -- [ResponseType]
  N'PPCC_SalesVATRegister( )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CalculateByCustAmtChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'SLArpmts.ArpmtLeaveCustToPayAmtSp( PARMS(VAR P(CadCurrCode), VAR P(BnkCurrCode), VAR P(BnkCurrCode), VAR P(CurrparmsCurrCode), RVAR P(PaymentCheckAmt), VAR P(RecptDate), VAR P(CheckNum), VAR P(BankCode), VAR P(CustNum), VAR P(Type), VAR P(CreditMemoNum), RVAR P(PaymentExchRate), VAR P(ForCheckAmt), VAR P(DomCheckAmt), RVAR P(DerPaymentApplied), RVAR P(DerForApplied), VAR P(DerDomApplied), RVAR P(DerPaymentRemaining), RVAR P(DerForRemaining), MESSAGE) ERRORMESSAGE(mBackEndMessage) SUCCESSMESSAGE(',   -- [Response]
  N'mBackEndMessage) )',   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CalculateByPayAmtChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'SLArpmts.ArpmtLeavePayToCustAmtSp( PARMS(VAR P(BnkCurrCode), VAR P(CadCurrCode), VAR P(BnkCurrCode), RVAR P(ForCheckAmt), VAR P(RecptDate), VAR P(CheckNum), VAR P(BankCode), VAR P(CustNum), VAR P(Type), VAR P(CreditMemoNum), RVAR P(PaymentExchRate), VAR P(PaymentCheckAmt), RVAR P(DerForApplied), RVAR P(DerPaymentApplied), RVAR P(DerForRemaining), RVAR P(DerPaymentRemaining), MESSAGE) ERRORMESSAGE(mBackEndMessage) SUCCESSMESSAGE(mBackEndMessage) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CalculateByPayExchRateChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'SLArpmts.ArpmtLeavePayExchRateAmtSp( PARMS(VAR P(BnkCurrCode), VAR P(CadCurrCode), VAR P(BnkCurrCode), RVAR P(ForCheckAmt), VAR P(RecptDate), VAR P(CheckNum), VAR P(BankCode), VAR P(CustNum), VAR P(Type), VAR P(CreditMemoNum), RVAR P(PaymentExchRate), VAR P(PaymentCheckAmt), RVAR P(DerForApplied), RVAR P(DerPaymentApplied), RVAR P(DerForRemaining), RVAR P(DerPaymentRemaining), MESSAGE) ERRORMESSAGE(mBackEndMessage) SUCCESSMESSAGE(mBackEndMessage) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CalDomAmt',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'PPCC_SLArpmts.PPCC_APPaymentUpdateAmtSp( PARMS(VAR P(CustNum), VAR P(CheckNum), VAR P(BankCode)) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CalDomAmt',   -- [EventName]
  @EventSequence,   -- [Sequence]
  29,   -- [ResponseType]
  N'object COLID(object)',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'ChangeCheckNum',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ChangeCheckNum()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CheckNumDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'SetReappInfo()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CheckNumDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'SetFieldAttributes()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CheckNumDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  21,   -- [ResponseType]
  N'ForCheckAmtDataChange',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CheckNumDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'EnableDisableDepositDate()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CheckNumDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  21,   -- [ResponseType]
  N'RecptDateDataChange(  )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CreditMemoChanged',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ChangeCheckNumAndAmt()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CreditMemoChanged',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'EnableDisableDepositDate()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CustNumDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  22,   -- [ResponseType]
  N' SETPROPVALUES(ForCheckAmt=0, DerForApplied=0, DerForRemaining=0, DomCheckAmt=0, DerDomApplied=0, DerDomRemaining=0, DueDate=, CusPayType=P(Type), PaymentExchRate=)',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CustNumDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  21,   -- [ResponseType]
  N'TypeDataChange(  )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CustNumDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'SetReappInfo()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CustNumDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'SetFieldAttributes()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CustNumDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ApplyMask()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'CustNumDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  21,   -- [ResponseType]
  N'GetPaymentExchRate(  )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'Distributions',   -- [EventName]
  @EventSequence,   -- [Sequence]
  6,   -- [ResponseType]
  N'ARPaymentDistributions( LINKBY(CheckNum=CheckNum,CustNum=CustNum,BankCode=BankCode,Type=Type,CreditMemoNum=CreditMemoNum) RLACS() SETVARVALUESONLINKUPDATE(CustCurrCodeDefault=P(CadCurrCode), ForCheckAmtDefault=P(ForCheckAmt), ExchRateDefault=P(ExchRate), DomCheckAmtDefault=P(DomCheckAmt), ForAmtBalDefault=P(DerForApplied), DomAmtBalDefault=P(DerDomApplied), ForAmtRemDefault=P(DerForRemaining), RecptDateDefault=P(RecptDate), CustNameDefault=P(CadName), CurPlacesDefault=P(CurPlaces), CorpCustDefau',   -- [Response]
  N'lt=P(DerCorpCust)) )',   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'EvaluatePromptResponse',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'EvaluatePromptResponse()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'ForCheckAmtDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  22,   -- [ResponseType]
  N' SETVARVALUES(PPayLeaveVar=0)',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'ForCheckAmtDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'SL.SLArpmts.ArpmtLeaveCustAmtSp( V(ehm1_ForCheckAmtDataChange1) ERRORMESSAGE(mBackEndMessage) SUCCESSMESSAGE(mBackEndMessage) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'ForCheckAmtDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'DomValueAftChange()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'ForCheckAmtDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  21,   -- [ResponseType]
  N'CalculateByCustAmtChange()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'ForCheckAmtDataChangeXX',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'DomesticAmountNotZero()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GenerateDistributions',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'GenerateDistributions()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GenerateDistributionsExecute',   -- [EventName]
  @EventSequence,   -- [Sequence]
  33,   -- [ResponseType]
  N'SCRIPTTEXT(Option Explicit On' + NCHAR(10) + N'Option Strict On' + NCHAR(10) + NCHAR(10) + N'Imports System' + NCHAR(10) + N'Imports Microsoft.VisualBasic' + NCHAR(10) + N'Imports Mongoose.IDO.Protocol' + NCHAR(10) + N'Imports Mongoose.Scripting' + NCHAR(10) + NCHAR(10) + N'Namespace Mongoose.GlobalScripts' + NCHAR(10) + N'    Public Class EvHandler_GenerateDistributionsExecute_0' + NCHAR(10) + N'        Inherits GlobalScript' + NCHAR(10) + NCHAR(10) + N'        Sub Main()' + NCHAR(10) + N'            ReturnValue = cstr(ThisForm.GenerateEvent("AskGenDists"))' + NCHAR(10) + N'            ThisForm.Variables("PromptMsg").Value = ""' + NCHAR(10) + N'            ThisForm.Variables("PromptBtns").Value = ""' + NCHAR(10) + N'            ThisForm.Variab',   -- [Response]
  N'les("PromptButtons").Value = ""' + NCHAR(10) + N'        End Sub' + NCHAR(10) + N'    End Class' + NCHAR(10) + N'End Namespace' + NCHAR(10) + N')',   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GenerateDistributionsExecute',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'SL.SLArpmtds.ARPaymentDistGenSp( PARMS(VAR P(BankCode), VAR P(CustNum), VAR P(Type), VAR P(CheckNum), VAR V(ReapVar), VAR P(DerOpenType), RVAR V(CallVar), RVAR P(CurSiteVar), MESSAGE, VAR P(CreditMemoNum)) ERRORMESSAGE(mBackEndMessage) SUCCESSMESSAGE(mBackEndMessage) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GenerateDistributionsExecute',   -- [EventName]
  @EventSequence,   -- [Sequence]
  21,   -- [ResponseType]
  N'StdFormRefreshCurrent',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GetExchangeRate',   -- [EventName]
  @EventSequence,   -- [Sequence]
  33,   -- [ResponseType]
  N'SCRIPTTEXT(Option Explicit On' + NCHAR(10) + N'Option Strict On' + NCHAR(10) + NCHAR(10) + N'Imports System' + NCHAR(10) + N'Imports Microsoft.VisualBasic' + NCHAR(10) + N'Imports Mongoose.IDO.Protocol' + NCHAR(10) + N'Imports Mongoose.Scripting' + NCHAR(10) + NCHAR(10) + N'Namespace Mongoose.GlobalScripts' + NCHAR(10) + N'    Public Class EvHandler_GetExchangeRate_0' + NCHAR(10) + N'        Inherits GlobalScript' + NCHAR(10) + NCHAR(10) + N'        Sub Main()' + NCHAR(10) + N'            If Not ThisForm.Components("ExchRateEdit").Enabled Then ReturnValue = CStr(-1)' + NCHAR(10) + N'        End Sub' + NCHAR(10) + N'    End Class' + NCHAR(10) + N'End Namespace' + NCHAR(10) + N')',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GetExchangeRate',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'SL.SLArpmts.ArpmtGetCurrentExchangeRateSp( PARMS(VAR P(CustNum), VAR P(RecptDate), RVAR P(ExchRate), MESSAGE) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GetPaymentExchRate',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'SLArpmts.GetExchRate2Sp( PARMS(VAR P(BankCode), VAR P(CustNum), VAR P(RecptDate), RVAR P(PaymentExchRate), MESSAGE) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GoToActivitiesFolder',   -- [EventName]
  @EventSequence,   -- [Sequence]
  41,   -- [ResponseType]
  N'MASTER/xModules/xFinance/xAccountsReceivable/xActivities',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GoToFilesFolder',   -- [EventName]
  @EventSequence,   -- [Sequence]
  41,   -- [ResponseType]
  N'MASTER/xModules/xFinance/xAccountsReceivable/xFiles',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GoToMaintenanceFolder',   -- [EventName]
  @EventSequence,   -- [Sequence]
  41,   -- [ResponseType]
  N'MASTER/xModules/xFinance/xAccountsReceivable',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GoToQueriesFolder',   -- [EventName]
  @EventSequence,   -- [Sequence]
  41,   -- [ResponseType]
  N'MASTER/xModules/xFinance/xAccountsReceivable/xQueries',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GoToReportsFolder',   -- [EventName]
  @EventSequence,   -- [Sequence]
  41,   -- [ResponseType]
  N'MASTER/xModules/xFinance/xAccountsReceivable/xReports',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GoToUtilitiesFolder',   -- [EventName]
  @EventSequence,   -- [Sequence]
  41,   -- [ResponseType]
  N'MASTER/xModules/xFinance/xAccountsReceivable/xUtilities',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'LaunchPaymentPostingForm',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'LaunchPaymentPostingForm()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'LaunchQuick',   -- [EventName]
  @EventSequence,   -- [Sequence]
  6,   -- [ResponseType]
  N'ARQuickPaymentApplication( LINKBY(BankCode=BankCode,CheckNum=CheckNum,CustNum=CustNum,Type=Type,CreditMemoNum=CreditMemoNum) RLACS() )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'LeaveDomCheckAmt',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'PropertyValueBefChange()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'LeaveDomCheckAmt',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'SL.SLArpmts.ArpmtLeaveDomAmtSp( PARMS(VAR P(CurrDomPartOfEuro), VAR P(CurPartOfEuro), VAR V(DomIsEuroVar), VAR P(BnkCurrCode), VAR P(CurBnkPartOfEuro), VAR P(DerFixedEuro), VAR P(CadCurrCode), VAR P(CurrparmsCurrCode), VAR P(DomCheckAmt), VAR P(RecptDate), VAR P(CheckNum), VAR P(BankCode), VAR P(CustNum), VAR P(Type), VAR P(CreditMemoNum), RVAR P(ExchRate), RVAR P(ForCheckAmt), RVAR P(DerEuroAmount), RVAR P(DerDomApplied), RVAR P(DerForApplied), RVAR P(DerDomRemaining), RVAR P(DerForRemaining),' + NCHAR(3),   -- [Response]
  N'MESSAGE) ERRORMESSAGE(mBackEndMessage) SUCCESSMESSAGE(mBackEndMessage) )',   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'LeaveDomCheckAmt',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'PropertyValueAftChange()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'LeaveExchRate',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ForeignAmountNotZero()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'LeaveExchRate',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'SL.SLArpmts.ArpmtExchRateLeaveSP( PARMS(VAR P(CurrDomPartOfEuro), VAR P(CurPartOfEuro), VAR P(BnkCurrCode), VAR P(DerFixedEuro), VAR P(CadCurrCode), VAR P(CurrparmsCurrCode), RVAR P(DomCheckAmt), VAR P(RecptDate), VAR P(CheckNum), VAR P(BankCode), VAR P(CustNum), VAR P(Type), VAR P(CreditMemoNum), RVAR P(ExchRate), RVAR P(ForCheckAmt), RVAR P(DerEuroAmount), RVAR P(DerDomApplied), RVAR P(DerForApplied), RVAR P(DerDomRemaining), RVAR P(DerForRemaining), MESSAGE) ERRORMESSAGE(mBackEndMessage) SUCC',   -- [Response]
  N'ESSMESSAGE(mBackEndMessage) )',   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'LeaveExchRate',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ExchRateChanged()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'LoadARAdjustmentPosting',   -- [EventName]
  @EventSequence,   -- [Sequence]
  6,   -- [ResponseType]
  N'ARAdjustmentPosting( SETVARVALUES(StartingCustomer=P(CustNum), EndingCustomer=P(CustNum)) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'LoadARDraftPosting',   -- [EventName]
  @EventSequence,   -- [Sequence]
  6,   -- [ResponseType]
  N'ARDraftPosting( SETVARVALUES(StartingCustomer=P(CustNum), EndingCustomer=P(CustNum)) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'LoadARPaymentPosting',   -- [EventName]
  @EventSequence,   -- [Sequence]
  6,   -- [ResponseType]
  N'ARPaymentPosting( SETVARVALUES(StartingCustomer=P(CustNum), EndingCustomer=P(CustNum)) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'LoadARWirePosting',   -- [EventName]
  @EventSequence,   -- [Sequence]
  6,   -- [ResponseType]
  N'ARWirePosting( SETVARVALUES(StartingCustomer=P(CustNum), EndingCustomer=P(CustNum)) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'PaymentAmountDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  21,   -- [ResponseType]
  N'CalculateByPayAmtChange()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'PaymentAmountDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  22,   -- [ResponseType]
  N'SETVARVALUES(PPayLeaveVar=1)',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'PaymentAmountDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  21,   -- [ResponseType]
  N'ArpmtLeaveCustAmt()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'PaymentAmountDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ChangeCheckAmt()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'PaymentExchRateDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  21,   -- [ResponseType]
  N'CalculateByPayExchRateChange()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'PaymentExchRateDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  22,   -- [ResponseType]
  N'SETVARVALUES(PPayLeaveVar=1)',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'PaymentExchRateDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  21,   -- [ResponseType]
  N'ArpmtLeaveCustAmt()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'PrintReceipt',   -- [EventName]
  @EventSequence,   -- [Sequence]
  6,   -- [ResponseType]
  N'PPCC_ARReceiptTaxInvoice( SETVARVALUES(SCheckNum=PV(CheckNum),ECheckNum=PV(CheckNum)) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'RecptDateDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ReappDateChanged()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'RecptDateDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'SL.SLArpmts.ArpmtRecptDateSp( PARMS(VAR P(CustNum), VAR P(CheckNum), VAR P(Type), VAR P(RecptDate), VAR P(DomCheckAmt), RVAR P(DerOpenType), RVAR P(DerOpenCode), RVAR P(DueDate), RVAR P(ExchRate), MESSAGE) ERRORMESSAGE(mBackEndMessage) SUCCESSMESSAGE(mBackEndMessage) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'RUNRV',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'RunRV()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdFormCopy',   -- [EventName]
  @EventSequence,   -- [Sequence]
  21,   -- [ResponseType]
  N'StdFormPerformValidations(  )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdFormCopyCompleted',   -- [EventName]
  @EventSequence,   -- [Sequence]
  8,   -- [ResponseType]
  N'CopyCompletedMarkComponentsValid()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdFormPerformValidations',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'DomesticAmountNotZero()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdFormPerformValidations',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ForeignAmountNotZero()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdFormPredisplay',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'SL.SLArpmts.ArpmtGetCurrInfoSp( PARMS(VAR V(Parm_CurrCode), RVAR V(EuroParmsCurrCodeVar), RVAR V(EuroAmtFormatVar), RVAR V(CurrDomPartOfEuroVar)) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdObjectNewCompleted',   -- [EventName]
  @EventSequence,   -- [Sequence]
  22,   -- [ResponseType]
  N'SETPROPVALUES(CurrparmsCurrCode=V(Parm_CurrCode), CurrDomPartOfEuro=V(CurrDomPartOfEuroVar), EuroParmsCurrCode=V(EuroParmsCurrCodeVar))',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdObjectSelectCurrentCompleted',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ToggleDueDate()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdObjectSelectCurrentCompleted',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ToggleCheckNumComponentVisible()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdObjectSelectCurrentCompleted',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'DisableButtonsIfNew()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  N'Disable Buttons on new record'   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdObjectSelectCurrentCompleted',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'SetFieldAttributes()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdObjectSelectCurrentCompleted',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'SetReappStatic()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdObjectSelectCurrentCompleted',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ApplyMask()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdObjectSelectCurrentCompleted',   -- [EventName]
  @EventSequence,   -- [Sequence]
  22,   -- [ResponseType]
  N' SETVARVALUES(PrevCreditMemo=P(CreditMemoNum))',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdObjectSelectCurrentCompleted',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'EnableDisableDepositDate()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdObjectSelectCurrentCompleted',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'EnableDisableCheckInfor()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'TypeDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'DisableButtonsIfNew()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'TypeDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ToggleDueDate()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'TypeDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ToggleCheckNumComponentVisible()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'TypeDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'FromDraftToCheck()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'TypeDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  22,   -- [ResponseType]
  N' SETPROPVALUES(UbOldType=P(Type), CreditMemoNum=)',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  N'Need to set old type after the FromDraftToCheck Handler for the TypeDataChange event'   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'TypeDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ToggleEuroAndCustAmts()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'TypeDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ToggleDueDateValue()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'TypeDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'SetFieldAttributes()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'TypeDataChange',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'EnableDisableDepositDate()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)


INSERT INTO Variables ( [FormID], [Name], [ScopeType], [ScopeName], [Value], [Value2], [Value3], [LockedBy], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'ehm1_ArpmtLeaveCustAmt0',   -- [Name]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  N'PARMS(VAR P(CurrDomPartOfEuro), VAR P(CurPartOfEuro), VAR V(CustIsEuroVar), VAR P(BnkCurrCode), VAR P(CurBnkPartOfEuro), VAR P(DerFixedEuro), VAR P(CadCurrCode), VAR P(CurrparmsCurrCode), RVAR P(DomCheckAmt), VAR P(RecptDate), VAR P(CheckNum), VAR P(BankCode), VAR P(CustNum), VAR P(Type), VAR P(CreditMemoNum), RVAR P(ExchRate), VAR P(PaymentCheckAmt), VAR P(ForCheckAmt), RVAR P(DerEuroAmount), RVAR P(DerDomApplied), RVAR P(DerForApplied), VAR P(DerPaymentApplied), RVAR P(DerDomRemaining), RVAR P',   -- [Value]
  N'(DerForRemaining), MESSAGE, VAR V(PPayLeaveVar))',   -- [Value2]
  NULL,   -- [Value3]
  NULL,   -- [LockedBy]
  NULL   -- [Description]
)

INSERT INTO Variables ( [FormID], [Name], [ScopeType], [ScopeName], [Value], [Value2], [Value3], [LockedBy], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'ehm1_ForCheckAmtDataChange0',   -- [Name]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  N'PARMS(VAR P(CurrDomPartOfEuro), VAR P(CurPartOfEuro), VAR V(CustIsEuroVar), VAR P(BnkCurrCode), VAR P(CurBnkPartOfEuro), VAR P(DerFixedEuro), VAR P(CadCurrCode), VAR P(CurrparmsCurrCode), RVAR P(DomCheckAmt), VAR P(RecptDate), VAR P(CheckNum), VAR P(BankCode), VAR P(CustNum), VAR P(Type), VAR P(CreditMemoNum), RVAR P(ExchRate), VAR P(PaymentCheckAmt), VAR P(ForCheckAmt), RVAR P(DerEuroAmount), RVAR P(DerDomApplied), RVAR P(DerForApplied), VAR P(DerPaymentApplied), RVAR P(DerDomRemaining), RVAR P',   -- [Value]
  N'(DerForRemaining), MESSAGE, VAR V(PPayLeaveVar))',   -- [Value2]
  NULL,   -- [Value3]
  NULL,   -- [LockedBy]
  NULL   -- [Description]
)

INSERT INTO Variables ( [FormID], [Name], [ScopeType], [ScopeName], [Value], [Value2], [Value3], [LockedBy], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'ehm1_ForCheckAmtDataChange1',   -- [Name]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  N'PARMS(VAR P(CurrDomPartOfEuro), VAR P(CurPartOfEuro), VAR V(CustIsEuroVar), VAR P(BnkCurrCode), VAR P(CurBnkPartOfEuro), VAR P(DerFixedEuro), VAR P(CadCurrCode), VAR P(CurrparmsCurrCode), RVAR P(DomCheckAmt), VAR P(RecptDate), VAR P(CheckNum), VAR P(BankCode), VAR P(CustNum), VAR P(Type), VAR P(CreditMemoNum), RVAR P(ExchRate), VAR P(PaymentCheckAmt), VAR P(ForCheckAmt), RVAR P(DerEuroAmount), RVAR P(DerDomApplied), RVAR P(DerForApplied), VAR P(DerPaymentApplied), RVAR P(DerDomRemaining), RVAR P',   -- [Value]
  N'(DerForRemaining), MESSAGE, VAR V(PPayLeaveVar))',   -- [Value2]
  NULL,   -- [Value3]
  NULL,   -- [LockedBy]
  NULL   -- [Description]
)

INSERT INTO Variables ( [FormID], [Name], [ScopeType], [ScopeName], [Value], [Value2], [Value3], [LockedBy], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'fds_DataSource',   -- [Name]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  N'SL.SLArpmts( ORDERBY(BankCode,CustNum,Type,CheckNum,CreditMemoNum) )',   -- [Value]
  NULL,   -- [Value2]
  NULL,   -- [Value3]
  NULL,   -- [LockedBy]
  NULL   -- [Description]
)

INSERT INTO Variables ( [FormID], [Name], [ScopeType], [ScopeName], [Value], [Value2], [Value3], [LockedBy], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'InitialCommand',   -- [Name]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  N'FilterInPlace',   -- [Value]
  NULL,   -- [Value2]
  NULL,   -- [Value3]
  NULL,   -- [LockedBy]
  NULL   -- [Description]
)

INSERT INTO ActiveXScripts ( [Name], [ScopeType], [ScopeName], [LockedBy], [Language] )
VALUES (
  N'PPCC_ARPayments',   -- [Name]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  NULL,   -- [LockedBy]
  N'Visual Basic'   -- [Language]
)

INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Option Explicit On'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Option Strict On'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Imports System'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Imports Microsoft.VisualBasic'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Imports Mongoose.IDO.Protocol'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Imports Mongoose.Scripting'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Namespace Mongoose.FormScripts'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'    Public Class PPCC_ARPayments'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Inherits FormScript'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub GenerateDistributions()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strType As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            strType = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("Type")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''  For type Draft, generate distributions is not allowed.'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If strType = "D" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.CallGlobalScript("MsgApp", "Clear", "NoPrompt", "SuccessFailure", "mE=IsCompare", "STRINGS(sType)", "STRINGS(sDraft)", "", "", "", "", "", "", "", "", "", "", "", "", "", "")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.CallGlobalScript("MsgApp", "NoClear", "NoPrompt", "SuccessFailure", "mE=CmdInvalid", "STRINGS(sGenerateDistributions)", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.CallGlobalScript("Ask", "PromptMsg", "Ok", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.GenerateEvent("GenerateDistributionsExecute")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub ToggleDueDate()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim bEnabled As Boolean'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            bEnabled = (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("Type") = "D")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("DueDateEdit").Enabled = bEnabled'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("DueDateGridCol").Enabled = bEnabled'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub ToggleDueDateValue()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("Type") <> "D" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.SetCurrentObjectPropertyPlusModifyRefresh("DueDate", "")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub ToggleCheckNumComponentVisible()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''Toggles the Check num components between edit and enhanced combo so that you have the appropriate list when a draft type'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim bDraft As Boolean'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            bDraft = (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("Type") = "D")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("CheckNumEdit").Visible = Not bDraft'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("CheckNumEnhancedCombo").Visible = bDraft'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("CheckNumGridCol").Visible = Not bDraft'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("CheckNumGridColWithList").Visible = bDraft'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub FromDraftToCheck()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''If type was draft, and is changed to check'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''and the check number field is not 0,'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''then zero out the customer and the euro amount fields'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strCheckNum As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            strCheckNum = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CheckNum")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If IsNumeric(strCheckNum) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                If ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("UbOldType") = "D" And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("Type") = "C" And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   CDec(strCheckNum) <> 0 Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.PrimaryIDOCollection.SetCurrentObjectPropertyPlusModifyRefresh("ForCheckAmt", "0")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.PrimaryIDOCollection.SetCurrentObjectPropertyPlusModifyRefresh("DerEuroAmt", "0")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("Type") = "D" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.GenerateEvent("CheckNumDataChange")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub ToggleEuroAndCustAmts()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim bEnabled As Boolean'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strCheckNum As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            strCheckNum = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CheckNum")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If IsNumeric(strCheckNum) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                bEnabled = (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("Type") <> "D" And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                         ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CheckNum") <> "0")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                bEnabled = False'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("ForCheckAmtEdit").Enabled = bEnabled'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("ForCheckAmtGridCol").Enabled = bEnabled'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("DerEuroAmountEdit").Enabled = bEnabled'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("DerEuroAmountGridCol").Enabled = bEnabled'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub SetReappInfo()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            '' Called from DataChange on CheckNum'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strCheckNum As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strDescription As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strCreditMemoNum As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Variables("strReceiptDate").SetValue(ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("RecptDate"))'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            strCheckNum = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CheckNum")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            strCreditMemoNum = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CreditMemoNum")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("Type") = "A" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.SetCurrentObjectPropertyPlusModifyRefresh( _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   "Description", "Payment Adj " & strCreditMemoNum & strCheckNum)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.SetCurrentObjectPropertyPlusModifyRefresh( _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   "Ref", "ARPA " & strCreditMemoNum & strCheckNum)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ElseIf IsNumeric(strCheckNum) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                If ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DerOpenType") <> "" Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CreditMemoNum") <> "" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ''Set Description'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    strDescription = Application.GetStringValue("sReapplication") & " " & strCreditMemoNum & " " & strCheckNum'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.PrimaryIDOCollection.SetCurrentObjectPropertyPlusModifyRefresh( _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                       "Description", strDescription)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ''Set Ref'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.PrimaryIDOCollection.SetCurrentObjectPropertyPlusModifyRefresh( _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                       "Ref", "ARPR " & strCreditMemoNum & " " & strCheckNum)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ''--Issue 6555...  Need this information on a reapp also'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    If ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("Type") <> "D" And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DerOpenType") <> "PAYMENT" And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DerOpenType") <> "CREDIT" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ThisForm.PrimaryIDOCollection.SetCurrentObjectPropertyPlusModifyRefresh( _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                           "ForCheckAmt", "0")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ThisForm.PrimaryIDOCollection.SetCurrentObjectPropertyPlusModifyRefresh( _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                           "DomCheckAmt", "0")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ''Set Description'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    strDescription = Application.GetStringValue("sPayment") & " " & strCreditMemoNum & " " & strCheckNum'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.PrimaryIDOCollection.SetCurrentObjectPropertyPlusModifyRefresh( _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                       "Description", strDescription)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ''Set Ref'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.PrimaryIDOCollection.SetCurrentObjectPropertyPlusModifyRefresh( _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                       "Ref", "ARP " & strCreditMemoNum & " " & strCheckNum)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            SetReappStatic()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub SetReappStatic()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            '' Called from StdObjectSelectCurrentCompleted and SetReappInfo'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strCheckNum As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strType As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            strCheckNum = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CheckNum")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            strType = ""'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If IsNumeric(strCheckNum) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                If (strCheckNum) <> "0" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    If ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DerOpenType") <> "" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ''Set Reap Message static caption'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        Select Case ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DerOpenType")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                            Case "PAYMENT"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                                strType = Application.GetStringValue("sPayment")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                            Case "CREDIT"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                                strType = Application.GetStringValue("sCredit")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        End Select'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ThisForm.Components("ReapMesStatic").Caption = _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                               Application.GetStringValue("sReapplicationOfOpen") & " " & strType'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ThisForm.Variables("ReapVar").Value = "1"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ThisForm.Components("ReapMesStatic").Caption = ""'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ThisForm.Variables("ReapVar").Value = "0"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.Components("ReapMesStatic").Caption = ""'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.Variables("ReapVar").Value = "0"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("ReapMesStatic").Caption = ""'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Variables("ReapVar").Value = "0"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub DisableButtonsIfNew()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim bEnabled As Boolean'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strType As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            bEnabled = Not ThisForm.PrimaryIDOCollection.IsCurrentObjectNew'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("DistributionsButton").Enabled = bEnabled'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("QuickButton").Enabled = bEnabled'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("CustNumEdit").Enabled = Not bEnabled'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("CustNumGridCol").Enabled = Not bEnabled'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("TypeEdit").Enabled = Not bEnabled'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("TypeGridCol").Enabled = Not bEnabled'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("CheckNumEdit").Enabled = Not bEnabled'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("CheckNumGridCol").Enabled = Not bEnabled'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("BankCodeEdit").Enabled = Not bEnabled'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("BankCodeGridCol").Enabled = Not bEnabled'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            strType = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("Type")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''For type Adjust and Draft Credit Memo is not allowed.'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("CreditMemoEdit").Enabled = Not bEnabled And (strType = "C" Or strType = "W")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("CreditMemoGridCol").Enabled = Not bEnabled And (strType = "C" Or strType = "W")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub SetFieldAttributes()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strFixedEuro As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strCustOfEuro As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strDomOfEuro As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strDerOpenType As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strPrintFlag As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            strFixedEuro = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DerFixedEuro")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            strCustOfEuro = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrPartOfEuro")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            strDomOfEuro = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrDomPartOfEuro")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            strDerOpenType = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DerOpenType")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            strPrintFlag = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DerCustDrftPrintFlag")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If strFixedEuro = "1" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                If strCustOfEuro <> "1" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.Variables("CustIsEuroVar").Value = "1"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.Variables("DomIsEuroVar").Value = "0"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    If strDomOfEuro <> "1" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ThisForm.Variables("CustIsEuroVar").Value = "0"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ThisForm.Variables("DomIsEuroVar").Value = "1"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Variables("CustIsEuroVar").Value = "0"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Variables("DomIsEuroVar").Value = "0"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            '' Enable and disable bank code'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.PrimaryIDOCollection.IsCurrentObjectNew Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("BankCodeEdit").Enabled = (strDerOpenType = "")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("BankCodeGridCol").Enabled = (strDerOpenType = "")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NCHAR(9)   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''Enable and disable Customer amount fields'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If strDerOpenType <> "" Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                  strPrintFlag = "1" Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                  (strFixedEuro = "1" And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                  ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DerDomBankFlag") = "1" And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                  ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode") <> _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                     ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrparmsCurrCode")) Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                 (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode") And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") <> ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrparmsCurrCode")) Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode") And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrparmsCurrCode")) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("ForCheckAmtEdit").Enabled = False'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("ForCheckAmtGridCol").Enabled = False'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("ForCheckAmtEdit").Enabled = True'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("ForCheckAmtGridCol").Enabled = True'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            '' Enable and disable Euro Amount'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If strDerOpenType <> "" Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                  strPrintFlag = "1" Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                  ThisForm.Variables("CustIsEuroVar").Value = "1" Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                  (ThisForm.Variables("DomIsEuroVar").Value = "1" And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                  (Application.Variables("Parm_CurrCode").Value <> ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode")) And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DerDomBankFlag") = "1")) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("DerEuroAmountEdit").Enabled = False'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("DerEuroAmountGridCol").Enabled = False'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("DerEuroAmountEdit").Enabled = True'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("DerEuroAmountGridCol").Enabled = False'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''Enable and disable domestic payment'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If strDerOpenType <> "" Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                  (strFixedEuro = "1" And ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DerDomBankFlag") <> "1") Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                  ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode") = "" Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                  (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") <> ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode") And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrparmsCurrCode")) Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") <> ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode") And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode") = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrparmsCurrCode")) Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode") And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrparmsCurrCode")) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("DomCheckAmtEdit").Enabled = False'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("DomCheckAmtGridCol").Enabled = False'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("DomCheckAmtEdit").Enabled = True'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("DomCheckAmtGridCol").Enabled = True'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''Enable Disable Exchange Rate'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If strDerOpenType <> "" Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                  strFixedEuro = "1" Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                  (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") <> ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode") And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrparmsCurrCode")) Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") <> ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode") And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode") = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrparmsCurrCode")) Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode") And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrparmsCurrCode")) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("ExchRateEdit").Enabled = False'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("ExchRateGridCol").Enabled = False'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("ExchRateEdit").Enabled = True'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("ExchRateGridCol").Enabled = True'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''Enable Disable Payment Amount'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If strDerOpenType <> "" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("PaymentCheckAmtEdit").Enabled = False'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("PaymentCheckAmtGridCol").Enabled = False'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("PaymentCheckAmtEdit").Enabled = True'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("PaymentCheckAmtGridCol").Enabled = True'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''Enable Disable Payment exch rate'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If strDerOpenType <> "" Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                strFixedEuro = "1" Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode") And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") <> ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrparmsCurrCode")) Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode") And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrparmsCurrCode")) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("PaymentExchRateEdit").Enabled = False'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("PaymentExchRateGridCol").Enabled = False'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("PaymentExchRateEdit").Enabled = True'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("PaymentExchRateGridCol").Enabled = True'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''Enable Disable Transfer Cash Check box'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            '' disabled if no arpmtd exist for this payment with site other than CurrSite'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("TransferCashCheckBox").Enabled = _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'               (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DerGetCrossSiteDist") = "1" And ThisForm.Variables("ReapVar").Value = "1" And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'               Not ThisForm.PrimaryIDOCollection.IsCurrentObjectNew)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("TransferCashGridCol").Enabled = _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'               (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DerGetCrossSiteDist") = "1" And ThisForm.Variables("ReapVar").Value = "1" And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'               Not ThisForm.PrimaryIDOCollection.IsCurrentObjectNew)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Function EvaluatePromptResponse() As Integer'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.Variables("PromptResponse").Value = CStr(vbNo) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                EvaluatePromptResponse = -1'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                EvaluatePromptResponse = 0'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Function'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub ApplyMask()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strAmtMask As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            strAmtMask = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurAmtFormat")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("ForCheckAmtEdit").InputMask = strAmtMask'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("ForCheckAmtGridCol").InputMask = strAmtMask'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("DerForAppliedEdit").InputMask = strAmtMask'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("DerForAppliedGridCol").InputMask = strAmtMask'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("DerForRemainingEdit").InputMask = strAmtMask'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("DerForRemainingGridCol").InputMask = strAmtMask'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''Get and Set Euro Amount Mask'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            strAmtMask = ThisForm.Variables("EuroAmtFormatVar").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("DerEuroAmountEdit").InputMask = strAmtMask'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("DerEuroAmountGridCol").InputMask = strAmtMask'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Function DomesticAmountNotZero() As Integer'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''If on a foreign customer with a domestic bank'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''you can not calculate the exchange rate if the'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''domestic amount is zero.'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''Display message and do not fire the method.'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            DomesticAmountNotZero = 0'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            '' if foreign customer'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode") <> _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'               ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrparmsCurrCode") Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                '' if bank code = currcode'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                If ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") = _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrparmsCurrCode") Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    If IsNumeric(ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DomCheckAmt")) And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                       IsNumeric(ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("ForCheckAmt")) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        If CDec(ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DomCheckAmt")) = 0 And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                           CDec(ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("ForCheckAmt")) > 0 Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                            DomesticAmountNotZero = -1'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        '' Can''t calculate rate if dom amount and for amount aren''t numeric...'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        DomesticAmountNotZero = -1'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    '' if foreign customer with foreign bank'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    DomesticAmountNotZero = 0'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else '' if domestic customer'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                DomesticAmountNotZero = 0'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If DomesticAmountNotZero <> 0 Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.CallGlobalScript("MsgApp", _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   "Clear", "NoPrompt", "SuccessFailure", _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   "mI=IsCompare=", "@sBankCurrency", "@sDomesticCurrency", _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   "", "", "", "", "", "", "", "", "", "", "", "", "", "")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.CallGlobalScript("MsgApp", _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   "NoClear", "Prompt", "SuccessFailure", _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   "mE=CmdFailed1", "@sCalculationOfExchangeRate", "@sPayment", _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   "@sDomesticCheckAmount", "0", "", "", "", "", "", "", "", "", "", "", "", "")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Function'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Function ForeignAmountNotZero() As Integer'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''If on a foreign customer with a foreign bank'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''you should not calculate the domestic amount if the'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''customer amount is zero.'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''Display message and do not fire the method.'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ForeignAmountNotZero = 0'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            '' if foreign customer'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CadCurrCode") <> _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'               ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrparmsCurrCode") Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                '' if bank code <> currcode'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                If ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BnkCurrCode") <> _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CurrparmsCurrCode") Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    If IsNumeric(ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DomCheckAmt")) And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                       IsNumeric(ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("ForCheckAmt")) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        If CDec(ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DomCheckAmt")) > 0 And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                           CDec(ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("ForCheckAmt")) = 0 Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                            ForeignAmountNotZero = -1'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        '' Can''t calculate amount if dom amount and for amount aren''t numeric...'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ForeignAmountNotZero = -1'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    '' if foreign customer with domestic bank'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ForeignAmountNotZero = 0'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else '' if domestic customer'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ForeignAmountNotZero = 0'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ForeignAmountNotZero <> 0 Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.CallGlobalScript("MsgApp", _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   "Clear", "Prompt", "SuccessFailure", _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   "mE=NoCompare", "@sCheckAmount", "0", _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                   "", "", "", "", "", "", "", "", "", "", "", "", "", "")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Function'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub PropertyValueBefChange()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Variables("NewDomValue").Value = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DomCheckAmt")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Variables("OldExchValue").Value = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("ExchRate")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub PropertyValueAftChange()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Variables("NewExchValue").Value = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("ExchRate")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.Variables("NewDomValue").GetValueOfDecimal(0) = ThisForm.Variables("OldDomValue").GetValueOfDecimal(0) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.SetCurrentObjectPropertyPlusModifyRefresh("ExchRate", ThisForm.Variables("OldExchValue").Value)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub DomValueAftChange()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Variables("OldDomValue").Value = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DomCheckAmt")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Variables("OldExchValue").Value = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("ExchRate")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub ExchRateChanged()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Variables("NewExchValue").Value = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("ExchRate")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Variables("OldDomValue").Value = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DomCheckAmt")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Function ChangeCheckNumAndAmt() As Integer'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ChangeCheckNumAndAmt = 0'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.Variables("PrevCreditMemo").Value <> "" And ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CreditMemoNum") = "" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.SetCurrentObjectPropertyPlusModifyRefresh("ForCheckAmt", "0")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("CheckNumEdit").SetModifiedSinceLoadOrValidation(True)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If Not ((ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CheckNum") = "0" Or _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CheckNum") = "") And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CreditMemoNum") = "") Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                If ThisForm.Components("CheckNumEdit").ValidateData(True) = True Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ChangeCheckNumAndAmt = 0'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ChangeCheckNumAndAmt = -1'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.Components("CheckNumEdit").SetModifiedSinceLoadOrValidation(True)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.Variables("PrevCreditMemo").Value <> ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CreditMemoNum") Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.GenerateEvent("CheckNumDataChange")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Variables("PrevCreditMemo").Value = ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CreditMemoNum")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Function'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub EnableDisableDepositDate()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.Components("TypeEdit").Text = "C" And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'               ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("DerOpenType") = "" And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'               ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("CreditMemoNum") = "" _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'               Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("DepositDateEdit").Enabled = True'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("DepositDateGridCol").Enabled = True'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("DepositDateEdit").Enabled = False'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("DepositDateGridCol").Enabled = False'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("DepositDateEdit").Text = ""'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("DepositDateGridCol").Text = ""'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub ReappDateChanged()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strReceiptDate As String = ThisForm.Variables("strReceiptDate").GetValueOfString("")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If strReceiptDate = "" Then strReceiptDate = CStr(Now.Date)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.Components("RecptDateEdit").Text = "" Then Exit Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.Variables("ReapVar").Value = "1" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                If CDate(strReceiptDate) <> CDate(ThisForm.Components("RecptDateEdit").Text) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.CallGlobalScript("MsgApp", _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        "Clear", "Ok", "SuccessFailure", _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        "mI=Msg", "STRINGS(sReceiptDateChangedWarningMsgForReapp)", "", _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        "", "", "", "", "", "", "", "", "", "", "", "", "", "")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Variables("strReceiptDate").SetValue(strReceiptDate)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub LaunchPaymentPostingForm()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("Type") = "A" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.GenerateEvent("LoadARAdjustmentPosting")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                If ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("Type") = "D" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.GenerateEvent("LoadARDraftPosting")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    If ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("Type") = "C" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ThisForm.GenerateEvent("LoadARPaymentPosting")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        If ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("Type") = "W" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                            ThisForm.GenerateEvent("LoadARWirePosting")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Sub RunRV()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim LastVendInvoice As Long'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim NewValue As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim oRs As LoadCollectionResponseData'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim filter As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim ReturnValue As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            '' Dim WNDNO As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim response As New InvokeResponseData'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.Components("CheckNumEdit").Text = "0" And ThisForm.Components("CustNumEdit").Text <> "" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                filter = "TypeName = ''PPCCGenRV''"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                oRs = Me.IDOClient.LoadCollection("UserDefinedTypeValues", "Value,Description ", filter, "", -1)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                If oRs.Items.Count <> 0 Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    LastVendInvoice = CInt(oRs(0, "Description").Value) + 1'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    NewValue = CStr(LastVendInvoice)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.Variables("CannedMsg").Value = Application.GetStringValue("Update Last Number of RE No. = " & _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                                    "''" & NewValue & "''" & "  ?  ")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ReturnValue = ThisForm.CallGlobalScript("Ask", "CannedMsg" _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    , "Yes|No-Q", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    If ReturnValue = CStr(0) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ThisForm.Components("CheckNumEdit").Text = NewValue'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ThisForm.Components("RefEdit").Text = "RV" & NewValue & "#" & ThisForm.Components("CheckNoEdit").Text'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ThisForm.Components("DescriptionEdit").Text = "AR Payment-RV" & NewValue'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        '' update'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        response = Me.IDOClient.Invoke("PPCC_RunRv", "PPCC_UpdateRVNoSp", NewValue)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ThisForm.Components("GLRefEdit").Text = ThisForm.Components("RefEdit").Text'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        ThisForm.Components("DescriptionEdit").Text = "AR Payment-" & ThisForm.Components("RefEdit").Text'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        Call ChangeCheckNum()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub ChangeCheckNum()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim iLen As Integer'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.Components("CheckNoEdit").Text <> "" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                iLen = Len(ThisForm.Components("CheckNoEdit").Text)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                If Right(ThisForm.Components("GLRefEdit").Text, iLen) <> ThisForm.Components("CheckNoEdit").Text Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.Components("GLRefEdit").Text = "RV" + ThisForm.Components("CheckNumEdit").Text + "#" + ThisForm.Components("CheckNoEdit").Text'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ''ThisForm.Components("GLRefEdit").Text + ThisForm.Components("CheckNoEdit").Text'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.Components("RefEdit").Text = "RV" + ThisForm.Components("CheckNumEdit").Text + "#" + ThisForm.Components("CheckNoEdit").Text'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ''ThisForm.Components("RefEdit").Text(+ThisForm.Components("CheckNoEdit").Text)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.Components("DescriptionEdit").Text = "AR Payment-RV" + ThisForm.Components("CheckNumEdit").Text + "#" + ThisForm.Components("CheckNoEdit").Text'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ''ThisForm.Components("DescriptionEdit").Text + ThisForm.Components("CheckNoEdit").Text'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            '   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub EnableDisableCheckInfor()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim bEnable As Boolean'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            bEnable = (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("BankCode") = "PDR") _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                        And (ThisForm.PrimaryIDOCollection.GetCurrentObjectProperty("Type") <> "A")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("CheckNoEdit").Enabled = bEnable'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("BankEdit").Enabled = bEnable'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("Due").Enabled = bEnable'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("AmtPaidEdit").Enabled = bEnable'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("GLRefEdit").Enabled = bEnable'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''ThisForm.Components("StatusEdit").Enabled = bEnable'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("CustomerEdit").Enabled = bEnable'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("CheckNoEdit").Required = bEnable'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("AmtPaidEdit").Required = bEnable'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("GLRefEdit").Required = bEnable'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("BankEdit").Required = bEnable'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("Due").Required = bEnable'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ''   ThisForm.Components("StatusEdit").Required = bEnable'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("StatusEdit").Text = "O"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If bEnable = False Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                If ThisForm.Components("TypeEdit").Text = "A" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.Components("StatusEdit").Text = "R"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.Components("StatusEdit").Text = "P"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.Components("AmtPaidEdit").Text = ""'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                If ThisForm.Components("AmtPaidEdit").Text = "" Then ThisForm.Components("AmtPaidEdit").Text = "0"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                If ThisForm.Components("CustomerEdit").Text = "" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.Components("CustomerEdit").Text = ThisForm.Components("CadNameEdit").Text'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("TypeEdit").Text = "C"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.Components("BankCodeEdit").Text = "PDP" Then ThisForm.Components("BankCodeEdit").Text = "PDR"'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N' Sub ChangeCheckAmt()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.Components("ForCheckAmtEdit").Text <> "" _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            And ThisForm.Components("ForCheckAmtEdit").Text <> "0" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("AmtPaidEdit").Text = ThisForm.Components("ForCheckAmtEdit").Text'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'    End Class'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_ARPayments',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'End Namespace'   -- [CodeLine]
)
