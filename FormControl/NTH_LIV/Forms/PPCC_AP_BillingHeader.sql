DECLARE @FormID INT
DECLARE @DeletedFormID INT
DECLARE @Sequence INT
SET @Sequence = 0
SELECT @FormID = ID FROM Forms WHERE Name = N'PPCC_AP_BillingHeader' AND ScopeType = 1
SET    @DeletedFormID = @FormID
DELETE FROM Forms WHERE ID = @FormID AND ScopeType = 1
DELETE FROM FormComponents WHERE FormID = @FormID
DELETE FROM ActiveXComponentProperties WHERE FormID = @FormID
DELETE FROM FormEventHandlers WHERE FormID = @FormID
DELETE FROM Variables WHERE FormID = @FormID
DELETE FROM ActiveXScriptLines WHERE ScriptName = N'PPCC_AP_BillingHeader' AND ScopeType = 1
DELETE FROM ActiveXScripts WHERE Name = N'PPCC_AP_BillingHeader' AND ScopeType = 1
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
  N'PPCC_AP_BillingHeader',   -- [Name]
  NULL,   -- [SubComponent]
  3,   -- [Type]
  N'PPCC_AP_Billing Header',   -- [Caption]
  N'PPCC_APBills( ORDERBY(BillNum DESC) )',   -- [PrimaryDataSource]
  1019,   -- [StandardOperations]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('28.733333333333334' AS float),   -- [Height]
  CAST('109.85714285714286' AS float),   -- [Width]
  NULL,   -- [IconFileName]
  NULL,   -- [HelpFileName]
  -1,   -- [HelpContextID]
  202,   -- [Flags]
  NULL,   -- [LockedBy]
  NULL,   -- [FilterFormSpec]
  N'30',   -- [PaneZeroSize]
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
  CAST('28.466666666666701' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('29.714285714285701' AS float),   -- [Width]
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
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
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
  N'Bill_NumGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('6' AS float),   -- [LeftPos]
  CAST('13' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  N'Billing No.',   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.BillNum',   -- [DataSource]
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
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  N'StdFind',   -- [MenuName]
  NULL,   -- [Format]
  N'Bill_NumGridCol.',   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Billing No.',   -- [EffectiveCaption]
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
  N'Vend_NumGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('19' AS float),   -- [LeftPos]
  CAST('13' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.285714285714286' AS float),   -- [Width]
  N'Vendor',   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.VendNum',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'VendNumChg',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  8192,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  N'StdDetailsAddFind',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  N'Vendors( PROPERTY(VendNum) )',   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'VendNum(VendDesc)',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'VendNum',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Vendor',   -- [EffectiveCaption]
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
  N'Vend_DescGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('29.285714285714299' AS float),   -- [LeftPos]
  CAST('13' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('31' AS float),   -- [Width]
  N'Vendor Name',   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.VendDesc',   -- [DataSource]
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
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  N'StdFind',   -- [MenuName]
  NULL,   -- [Format]
  N'Vend_DescGridCol.',   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'VendorNameVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Name',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Vendor Name',   -- [EffectiveCaption]
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
  N'Bill_DateGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('60.285714285714299' AS float),   -- [LeftPos]
  CAST('13' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12' AS float),   -- [Width]
  N'Billing Date',   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.BillDate',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'VendNumChg',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  512,   -- [Flags]
  N'CURDATE()',   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  N'StdFind',   -- [MenuName]
  NULL,   -- [Format]
  N'Bill_DateGridCol.',   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'Date()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  N'DEFAULTVALUE(CURDATE())',   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Billing Date',   -- [EffectiveCaption]
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
  N'Due_DateGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('72.285714285714306' AS float),   -- [LeftPos]
  CAST('13' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('11.571428571428571' AS float),   -- [Width]
  N'Due Pay',   -- [Caption]
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
  512,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  N'StdFind',   -- [MenuName]
  NULL,   -- [Format]
  N'Due_DateGridCol.',   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'Date()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Due Pay',   -- [EffectiveCaption]
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
  N'Ref_BillNumGridCol',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  15,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('83.857142857142804' AS float),   -- [LeftPos]
  CAST('13' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('37' AS float),   -- [Width]
  N'Ref. Vendor Billing No.',   -- [Caption]
  NULL,   -- [Validators]
  N'FormCollectionGrid',   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.RefBillNum',   -- [DataSource]
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
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  N'StdFind',   -- [MenuName]
  NULL,   -- [Format]
  N'Ref_BillNumGridCol.',   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Ref. Vendor Billing No.',   -- [EffectiveCaption]
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
  N'groupBox1',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  6,   -- [Type]
  CAST('-0.066666670143604306' AS float),   -- [TopPos]
  CAST('0.85714286565780595' AS float),   -- [LeftPos]
  CAST('9.3333330154418892' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('55' AS float),   -- [Width]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
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
  N'Bill_NumStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('1.29999995231628' AS float),   -- [TopPos]
  CAST('2.1428570747375502' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10' AS float),   -- [Width]
  N'Billing No.',   -- [Caption]
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
  3,   -- [Flags]
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
  N'Billing No.',   -- [EffectiveCaption]
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
  N'Bill_NumEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('1' AS float),   -- [TopPos]
  CAST('12.714285850524901' AS float),   -- [LeftPos]
  CAST('1.29999995231628' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('14' AS float),   -- [Width]
  N'C(Bill_NumStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.BillNum',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  8193,   -- [Flags]
  NULL,   -- [DefaultData]
  1,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  N'StdDefault',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(Bill_NumStatic)',   -- [EffectiveCaption]
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
  N'GenBillPB',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  8,   -- [Type]
  CAST('0.79999995231628396' AS float),   -- [TopPos]
  CAST('39.285713195800803' AS float),   -- [LeftPos]
  CAST('1.5' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('14' AS float),   -- [Width]
  N'Gen Bill No.',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'GenBillNum',   -- [EventToGenerate]
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
  N'AUTOIME(NoControl) ENABLEDWHEN(Enabled:#C(GenBillPB), #P(BillNum) = "", "True")',   -- [Post301Format]
  NULL,   -- [Description]
  N'Gen Bill No.',   -- [EffectiveCaption]
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
  N'Bill_DateStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('2.8333332538604701' AS float),   -- [TopPos]
  CAST('2.1428570747375502' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10' AS float),   -- [Width]
  N'Billing Date',   -- [Caption]
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
  3,   -- [Flags]
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
  N'Billing Date',   -- [EffectiveCaption]
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
  N'Bill_DateEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  26,   -- [Type]
  CAST('2.5333333015441899' AS float),   -- [TopPos]
  CAST('12.714285850524901' AS float),   -- [LeftPos]
  CAST('1.29999995231628' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('14' AS float),   -- [Width]
  N'C(Bill_DateStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.BillDate',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'VendNumChg',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  513,   -- [Flags]
  N'CURDATE()',   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  N'StdDefault',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'Date()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  N'DEFAULTVALUE(CURDATE())',   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(Bill_DateStatic)',   -- [EffectiveCaption]
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
  N'Vend_NumStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('4.3666667938232404' AS float),   -- [TopPos]
  CAST('2.1428570747375502' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10' AS float),   -- [Width]
  N'Vendor',   -- [Caption]
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
  3,   -- [Flags]
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
  N'Vendor',   -- [EffectiveCaption]
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
  N'Vend_NumEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('4.0666666030883798' AS float),   -- [TopPos]
  CAST('12.714285850524901' AS float),   -- [LeftPos]
  CAST('1.29999995231628' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10' AS float),   -- [Width]
  N'C(Vend_NumStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.VendNum',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'VendNumChg',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  8705,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  N'StdDetailsAddFind',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  N'Vendors( PROPERTY(VendNum) )',   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'VendNum(VendDesc)',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'VendNum',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(Vend_NumStatic)',   -- [EffectiveCaption]
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
  N'Vend_DescEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('4.0666666030883798' AS float),   -- [TopPos]
  CAST('23.2857151031494' AS float),   -- [LeftPos]
  CAST('1.29999995231628' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('30' AS float),   -- [Width]
  N'C(Vend_DescStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.VendDesc',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
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
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  N'StdDefault',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  N'Name',   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(Vend_DescStatic)',   -- [EffectiveCaption]
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
  N'Ref_BillNumStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('5.8999996185302699' AS float),   -- [TopPos]
  CAST('2.1428570747375502' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('17' AS float),   -- [Width]
  N'Ref. Vendor Billing No.',   -- [Caption]
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
  3,   -- [Flags]
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
  N'Ref. Vendor Billing No.',   -- [EffectiveCaption]
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
  N'Ref_BillNumEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('5.5999999046325701' AS float),   -- [TopPos]
  CAST('19.571428298950199' AS float),   -- [LeftPos]
  CAST('1.29999995231628' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('33.714286804199197' AS float),   -- [Width]
  N'C(Ref_BillNumStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.RefBillNum',   -- [DataSource]
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
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  N'StdDefault',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  NULL,   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(Ref_BillNumStatic)',   -- [EffectiveCaption]
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
  N'Due_DateStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('2.8333332538604701' AS float),   -- [TopPos]
  CAST('30.857143402099599' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('7.7142858505248997' AS float),   -- [Width]
  N'Due Pay',   -- [Caption]
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
  3,   -- [Flags]
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
  N'Due Pay',   -- [EffectiveCaption]
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
  N'Due_DateEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  26,   -- [Type]
  CAST('2.5333333015441899' AS float),   -- [TopPos]
  CAST('39.285713195800803' AS float),   -- [LeftPos]
  CAST('1.29999995231628' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('14' AS float),   -- [Width]
  N'C(Due_DateStatic)',   -- [Caption]
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
  513,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  0,   -- [HelpContextID]
  N'StdDefault',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'Date()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(Due_DateStatic)',   -- [EffectiveCaption]
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
  N'BillNumEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('11.3999996185303' AS float),   -- [TopPos]
  CAST('3.7142856121063201' AS float),   -- [LeftPos]
  CAST('1.29999995231628' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('15' AS float),   -- [Width]
  N'C(Bill_NumStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'object.BillNum',   -- [DataSource]
  1,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  513,   -- [Flags]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(Bill_NumStatic)',   -- [EffectiveCaption]
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
  N'LinePB',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  8,   -- [Type]
  CAST('7' AS float),   -- [TopPos]
  CAST('39.285713195800803' AS float),   -- [LeftPos]
  CAST('1.5' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('14' AS float),   -- [Width]
  N'Billing Line',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'LineLink',   -- [EventToGenerate]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Billing Line',   -- [EffectiveCaption]
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
  N'PreviewBilling',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  8,   -- [Type]
  CAST('0.79999995231628396' AS float),   -- [TopPos]
  CAST('57.142856597900398' AS float),   -- [LeftPos]
  CAST('1.5' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('19' AS float),   -- [Width]
  N'Preview Billing Form',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'Preview',   -- [EventToGenerate]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Preview Billing Form',   -- [EffectiveCaption]
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
  N'BillStatReport',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  8,   -- [Type]
  CAST('2.5333333015441899' AS float),   -- [TopPos]
  CAST('57.142856597900398' AS float),   -- [LeftPos]
  CAST('1.5' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('19' AS float),   -- [Width]
  N'AP Billing Status Report',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'LinkAPBillingStatusReport',   -- [EventToGenerate]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'AP Billing Status Report',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

DECLARE @EventSequence INT
SET @EventSequence = 0

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GenBillNum',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'GenBillNum()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GetLstBillNum',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'PPCC_APBills.PPCC_ApBillGetBillNumSp( PARMS(VAR V(TypeName), RVAR V(LPrefix), RVAR V(LRunNum)) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'LineLink',   -- [EventName]
  @EventSequence,   -- [Sequence]
  6,   -- [ResponseType]
  N'PPCC_AP_BillingLine( LINKBY(BillNum=BillNum,VendNum=VendNum) RLACS() )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'LinkAPBillingStatusReport',   -- [EventName]
  @EventSequence,   -- [Sequence]
  7,   -- [ResponseType]
  N'PPCC_AP_BillingStatusReport( )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'Preview',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'AssignValue()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'Preview',   -- [EventName]
  @EventSequence,   -- [Sequence]
  40,   -- [ResponseType]
  N'TASKNAME(V(BGTaskName))TASKPARMS(V(BGTaskParms))',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdFormInitCompleted',   -- [EventName]
  @EventSequence,   -- [Sequence]
  21,   -- [ResponseType]
  N'StdFormRefresh(  )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdFormSaveCompleted',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'UpdateLastBillNum()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'VendNumChg',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'PPCC_APBills.PPCC_ApBillGetDueDateSp( PARMS(VAR P(VendNum), VAR P(BillDate), RVAR P(DueDate)) ERRORMESSAGE(mBackEndMessage) SUCCESSMESSAGE(mBackEndMessage) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)


INSERT INTO Variables ( [FormID], [Name], [ScopeType], [ScopeName], [Value], [Value2], [Value3], [LockedBy], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'BGTaskName',   -- [Name]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  N'PPCC_APBilling',   -- [Value]
  NULL,   -- [Value2]
  NULL,   -- [Value3]
  NULL,   -- [LockedBy]
  NULL   -- [Description]
)

INSERT INTO Variables ( [FormID], [Name], [ScopeType], [ScopeName], [Value], [Value2], [Value3], [LockedBy], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'BGTaskParms',   -- [Name]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  N'V(Billnum),V(Vendnum)',   -- [Value]
  NULL,   -- [Value2]
  NULL,   -- [Value3]
  NULL,   -- [LockedBy]
  NULL   -- [Description]
)

INSERT INTO Variables ( [FormID], [Name], [ScopeType], [ScopeName], [Value], [Value2], [Value3], [LockedBy], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'TypeName',   -- [Name]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  N'LastApBill',   -- [Value]
  NULL,   -- [Value2]
  NULL,   -- [Value3]
  NULL,   -- [LockedBy]
  NULL   -- [Description]
)

INSERT INTO ActiveXScripts ( [Name], [ScopeType], [ScopeName], [LockedBy], [Language] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [Name]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  NULL,   -- [LockedBy]
  N'Visual Basic'   -- [Language]
)

INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Option Explicit On'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Option Strict On'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Imports System'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Imports Microsoft.VisualBasic'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Imports Mongoose.IDO.Protocol'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Imports Mongoose.Scripting'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Namespace Mongoose.FormScripts'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Public class PPCC_AP_BillingHeader'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Inherits FormScript'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub GenBillNum()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim BillNum As String = ""'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim FLen As Integer = 0'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim LLen As Integer = 0'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim ALen As Integer = 12'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.GenerateEvent("GetLstBillNum")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.Variables("LPrefix").Value = "" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                MsgBox("Must Create User Defined Type Name ''LastApBill'' Before !!", _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                           CType(MsgBoxStyle.OkOnly + MsgBoxStyle.Information, MsgBoxStyle), "SyteLine")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Exit Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.Variables("LPre").Value = "" Or ThisForm.Variables("LNum").Value = "" Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Variables("LPre").Value = ThisForm.Variables("LPrefix").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Variables("LNum").Value = ThisForm.Variables("LRunNum").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                If ThisForm.Variables("LRunNum").Value >= ThisForm.Variables("LNum").Value Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    ThisForm.Variables("LNum").Value = ThisForm.Variables("LRunNum").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Variables("LNum").Value = CStr(CDbl(ThisForm.Variables("LNum").Value) + 1)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            FLen = Len(ThisForm.Variables("LPre").Value)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            LLen = Len(ThisForm.Variables("LNum").Value)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Select Case ALen - FLen - LLen'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Case 0'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    BillNum = ThisForm.Variables("LPre").Value & "" & ThisForm.Variables("LNum").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Case 1'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    BillNum = ThisForm.Variables("LPre").Value & "0" & ThisForm.Variables("LNum").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Case 2'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    BillNum = ThisForm.Variables("LPre").Value & "00" & ThisForm.Variables("LNum").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Case 3'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    BillNum = ThisForm.Variables("LPre").Value & "000" & ThisForm.Variables("LNum").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Case 4'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    BillNum = ThisForm.Variables("LPre").Value & "0000" & ThisForm.Variables("LNum").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Case 5'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    BillNum = ThisForm.Variables("LPre").Value & "00000" & ThisForm.Variables("LNum").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Case 6'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    BillNum = ThisForm.Variables("LPre").Value & "000000" & ThisForm.Variables("LNum").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Case 7'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    BillNum = ThisForm.Variables("LPre").Value & "0000000" & ThisForm.Variables("LNum").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Case 8'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    BillNum = ThisForm.Variables("LPre").Value & "00000000" & ThisForm.Variables("LNum").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Case 9'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    BillNum = ThisForm.Variables("LPre").Value & "000000000" & ThisForm.Variables("LNum").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Case 10'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    BillNum = ThisForm.Variables("LPre").Value & "0000000000" & ThisForm.Variables("LNum").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                Case 11'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                    BillNum = ThisForm.Variables("LPre").Value & "00000000000" & ThisForm.Variables("LNum").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End Select'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.PrimaryIDOCollection.SetCurrentObjectPropertyPlusModifyRefresh("BillNum", BillNum)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub UpdateLastBillNum()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim Rs As InvokeResponseData'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Rs = Me.IDOClient.Invoke("PPCC_APBills", "PPCC_SetUserDefinedTypeValuesSp", "LastApBill", ThisForm.Variables("LPre").Value)'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub AssignValue()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Variables("Vendnum").Value = ThisForm.Components("Vend_NumEdit").Text'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Variables("Billnum").Value = ThisForm.Components("Bill_NumEdit").Text'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'End Class'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AP_BillingHeader',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'End Namespace'   -- [CodeLine]
)
