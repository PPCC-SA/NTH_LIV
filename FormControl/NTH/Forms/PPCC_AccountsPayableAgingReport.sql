DECLARE @FormID INT
DECLARE @DeletedFormID INT
DECLARE @Sequence INT
SET @Sequence = 0
SELECT @FormID = ID FROM Forms WHERE Name = N'PPCC_AccountsPayableAgingReport' AND ScopeType = 1
SET    @DeletedFormID = @FormID
DELETE FROM Forms WHERE ID = @FormID AND ScopeType = 1
DELETE FROM FormComponents WHERE FormID = @FormID
DELETE FROM ActiveXComponentProperties WHERE FormID = @FormID
DELETE FROM FormEventHandlers WHERE FormID = @FormID
DELETE FROM Variables WHERE FormID = @FormID
DELETE FROM ActiveXScriptLines WHERE ScriptName = N'PPCC_AccountsPayableAgingReport' AND ScopeType = 1
DELETE FROM ActiveXScripts WHERE Name = N'PPCC_AccountsPayableAgingReport' AND ScopeType = 1
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
  N'PPCC_AccountsPayableAgingReport',   -- [Name]
  NULL,   -- [SubComponent]
  3,   -- [Type]
  N'PPCC AccountsPayableAgingReport',   -- [Caption]
  NULL,   -- [PrimaryDataSource]
  0,   -- [StandardOperations]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('35.06666666666667' AS float),   -- [Height]
  CAST('139.42857142857142' AS float),   -- [Width]
  NULL,   -- [IconFileName]
  N'sl_goto.htm#Forms\aptopics/accounts_payable_aging_report.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  968,   -- [Flags]
  NULL,   -- [LockedBy]
  NULL,   -- [FilterFormSpec]
  N'0',   -- [PaneZeroSize]
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
  N'CategoryStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('8.4666666666666668' AS float),   -- [TopPos]
  CAST('6' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('9' AS float),   -- [Width]
  N'Category',   -- [Caption]
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
  0,   -- [Flags]
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
  N'BTF() AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Category',   -- [EffectiveCaption]
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
  N'DisplayHeader1',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('1.0666666666666667' AS float),   -- [TopPos]
  CAST('77.857142857142861' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('24' AS float),   -- [Width]
  N'Show Detail',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.DisplayHeader(INITIALVALUE(V(Parm_DisplayReportHeaders)))',   -- [DataSource]
  6,   -- [Binding]
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
  N'syteline.chm',   -- [HelpFileName]
  900032800,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'DisplayHeaderVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'BTF() AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'Show Detail',   -- [EffectiveCaption]
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
  N'PaymentHoldStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('4.2999999999999998' AS float),   -- [TopPos]
  CAST('53.461904761904776' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.142857142857142' AS float),   -- [Width]
  N'sPaymentHold',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sPaymentHold',   -- [EffectiveCaption]
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
  N'SourceBox1',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  6,   -- [Type]
  CAST('0.13' AS float),   -- [TopPos]
  CAST('1.092857' AS float),   -- [LeftPos]
  CAST('5.8499999999999996' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('49.142856999999999' AS float),   -- [Width]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
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
  N'xCategory',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('8.2666666666666675' AS float),   -- [TopPos]
  CAST('16' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10' AS float),   -- [Width]
  N'C(CategoryStatic)',   -- [Caption]
  N'Category(VCDescription,PurAcct,PurAcctUnit1,PurAcctUnit2,PurAcctUnit3,PurAcctUnit4)',   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.xCategory',   -- [DataSource]
  6,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'VendCatChg',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  N'STDOLE SL.SLVendCats(  PROPERTIES(Category, Description, PurAcct, PurAcctUnit1, PurAcctUnit2, PurAcctUnit3, PurAcctUnit4) DISPLAY(1,2,3,4,5,6,7) )',   -- [ComboListSource]
  32,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'vendor.chm',   -- [HelpFileName]
  900031770,   -- [HelpContextID]
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
  N'BTF() AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(CategoryStatic)',   -- [EffectiveCaption]
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
  N'yCategory',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('8.2666666666666675' AS float),   -- [TopPos]
  CAST('62' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10' AS float),   -- [Width]
  N'C(CategoryStatic)',   -- [Caption]
  N'Category(VCDescription,PurAcct,PurAcctUnit1,PurAcctUnit2,PurAcctUnit3,PurAcctUnit4)',   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.yCategory',   -- [DataSource]
  6,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'VendCatChg',   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  N'STDOLE SL.SLVendCats(  PROPERTIES(Category, Description, PurAcct, PurAcctUnit1, PurAcctUnit2, PurAcctUnit3, PurAcctUnit4) DISPLAY(1,2,3,4,5,6,7) )',   -- [ComboListSource]
  32,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'vendor.chm',   -- [HelpFileName]
  900031770,   -- [HelpContextID]
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
  N'BTF() AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(CategoryStatic)',   -- [EffectiveCaption]
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
  N'AgingBasisEdit',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('1.1299999999999999' AS float),   -- [TopPos]
  CAST('16.142856999999999' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  N'C(AgingBasisStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.AgingBasis(INITIALVALUE(V(ApparmInvDue)))',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\a/aging_basis_accounts_payable_parameters.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'AgingBasis2Var()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(AgingBasisStatic)',   -- [EffectiveCaption]
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
  N'AgingDate',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  26,   -- [Type]
  CAST('2.5666669999999998' AS float),   -- [TopPos]
  CAST('16.142856999999999' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  N'C(AgingDateStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.AgingDate(INITIALVALUE(CURDATE()))',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\a/aging_date_report_option.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(AgingDateStatic)',   -- [EffectiveCaption]
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
  N'AgingDateIncrement',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('2.5666669999999998' AS float),   -- [TopPos]
  CAST('29.714286000000001' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13.428571' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.AgingDateIncrement(INITIALVALUE(0))',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\I/increment_date.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'DateIncrementVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sIncrementDate',   -- [EffectiveCaption]
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
  N'CutoffDate',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  26,   -- [Type]
  CAST('4' AS float),   -- [TopPos]
  CAST('16.142856999999999' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  N'C(CutoffDateStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.CutoffDate(INITIALVALUE(CURDATE()))',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\c/cutoff_date_range_field.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(CutoffDateStatic)',   -- [EffectiveCaption]
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
  N'CutoffDateIncrement',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('4' AS float),   -- [TopPos]
  CAST('29.714286000000001' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13.428571' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.CutoffDateIncrement(INITIALVALUE(0))',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\I/increment_date.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'DateIncrementVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sIncrementDate',   -- [EffectiveCaption]
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
  N'SiteGroupStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('1.3966666666666701' AS float),   -- [TopPos]
  CAST('51.461904761904769' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12' AS float),   -- [Width]
  N'sSiteGroup',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sSiteGroup',   -- [EffectiveCaption]
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
  N'Box',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  6,   -- [Type]
  CAST('0.13' AS float),   -- [TopPos]
  CAST('50.678570999999998' AS float),   -- [LeftPos]
  CAST('5.8499999999999996' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('57.571429000000002' AS float),   -- [Width]
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
  0,   -- [Flags]
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
  N'SiteGroup',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('1.1299999999999999' AS float),   -- [TopPos]
  CAST('64.000000000000014' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('11' AS float),   -- [Width]
  N'C(SiteGroupStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.SiteGroup(INITIALVALUE(V(Parm_SiteGroup)))',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\m/multi_site_group_id_report_option.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'SiteGroupVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl) JUSTIFY(L)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(SiteGroupStatic)',   -- [EffectiveCaption]
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
  N'SortbyStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('2.8666666666666663' AS float),   -- [TopPos]
  CAST('53.461904761904776' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.142857142857142' AS float),   -- [Width]
  N'sSortby',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sSortby',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = 10
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
  N'SortByCurrency',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('2.5666669999999998' AS float),   -- [TopPos]
  CAST('78.142857000000006' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('24' AS float),   -- [Width]
  N'sSortByCurrency',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.SortByCurrency(INITIALVALUE(0))',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\s/sort_by_currency_report_option.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'BooleanVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  N'BOOLTRUE(1) BOOLFALSE(0)',   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sSortByCurrency',   -- [EffectiveCaption]
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
  N'ConsolidateVendors',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('4' AS float),   -- [TopPos]
  CAST('78.142857000000006' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('24' AS float),   -- [Width]
  N'sConsolidateVendors',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.ConsolidateVendors(INITIALVALUE(0))',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\c/consolidate_vendor_ap_aging_report.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'BooleanVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  N'BOOLTRUE(1) BOOLFALSE(0)',   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sConsolidateVendors',   -- [EffectiveCaption]
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
  N'AgingDateStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('2.8666670000000001' AS float),   -- [TopPos]
  CAST('4.604762' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.857143000000001' AS float),   -- [Width]
  N'sAgingDate',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sAgingDate',   -- [EffectiveCaption]
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
  N'RangeBox',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  6,   -- [Type]
  CAST('5.7300000000000004' AS float),   -- [TopPos]
  CAST('1' AS float),   -- [LeftPos]
  CAST('9' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('107.14285714285714' AS float),   -- [Width]
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
  0,   -- [Flags]
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
  N'VendorStarting',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('10' AS float),   -- [TopPos]
  CAST('16' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10' AS float),   -- [Width]
  N'C(VendorStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.VendorStarting',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\v/vendor_range_field.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'VendNumRangeVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(VendorStatic)',   -- [EffectiveCaption]
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
  N'AgingDateOffset',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('2.5666669999999998' AS float),   -- [TopPos]
  CAST('43.928570999999998' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('5' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.AgingDateOffset',   -- [DataSource]
  6,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
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
  N'DateOffsetVar()',   -- [DefaultFrom]
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
  N'VendorEnding',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('10' AS float),   -- [TopPos]
  CAST('62' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10' AS float),   -- [Width]
  N'C(VendorStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.VendorEnding',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\v/vendor_range_field.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'VendNumRangeVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(VendorStatic)',   -- [EffectiveCaption]
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
  N'CutoffDateStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('4.2999999999999998' AS float),   -- [TopPos]
  CAST('4.604762' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.857143000000001' AS float),   -- [Width]
  N'sCutoffDate',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sCutoffDate',   -- [EffectiveCaption]
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
  N'NameStarting',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('11.466666666666667' AS float),   -- [TopPos]
  CAST('16' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('45' AS float),   -- [Width]
  N'C(NameStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.NameStarting',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\n/name_report_range.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'VendorNameVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(NameStatic)',   -- [EffectiveCaption]
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
  N'NameEnding',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('11.466666666666667' AS float),   -- [TopPos]
  CAST('62' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('45' AS float),   -- [Width]
  N'C(NameStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.NameEnding',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\n/name_report_range.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'VendorNameVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(NameStatic)',   -- [EffectiveCaption]
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
  N'CurrencyCodeStarting',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('12.933333333333334' AS float),   -- [TopPos]
  CAST('16' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('7' AS float),   -- [Width]
  N'C(CurrencyCodeStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.CurrencyCodeStarting',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\c/currency_code_reportutility_range.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'CurrCodeVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(CurrencyCodeStatic)',   -- [EffectiveCaption]
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
  N'CurrencyCodeEnding',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('12.933333333333334' AS float),   -- [TopPos]
  CAST('62' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('7' AS float),   -- [Width]
  N'C(CurrencyCodeStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.CurrencyCodeEnding',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\c/currency_code_reportutility_range.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'CurrCodeVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(CurrencyCodeStatic)',   -- [EffectiveCaption]
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
  N'CutoffDateOffset',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('4' AS float),   -- [TopPos]
  CAST('43.928570999999998' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('5' AS float),   -- [Width]
  NULL,   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.CutoffDateOffset',   -- [DataSource]
  6,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
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
  N'DateOffsetVar()',   -- [DefaultFrom]
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
  N'Box1',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  6,   -- [Type]
  CAST('14.800000000000001' AS float),   -- [TopPos]
  CAST('1' AS float),   -- [LeftPos]
  CAST('11.4' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('53.5' AS float),   -- [Width]
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
  0,   -- [Flags]
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
  N'StartingStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('6.5999999999999996' AS float),   -- [TopPos]
  CAST('16' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10' AS float),   -- [Width]
  N'sStarting',   -- [Caption]
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
  16,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(L)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sStarting',   -- [EffectiveCaption]
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
  N'Suppress',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('15.800000000000001' AS float),   -- [TopPos]
  CAST('8.5714290000000002' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('31' AS float),   -- [Width]
  N'sSuppressZeroBalanceVouchers',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.Suppress(INITIALVALUE(1))',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\s/suppress_zero_balance_vouchers.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'BooleanVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  N'BOOLTRUE(1) BOOLFALSE(0)',   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sSuppressZeroBalanceVouchers',   -- [EffectiveCaption]
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
  N'Translate',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('17.266666666666666' AS float),   -- [TopPos]
  CAST('8.5714290000000002' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('31' AS float),   -- [Width]
  N'sTranslateToDomesticCurrency',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.Translate(INITIALVALUE(1))',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\t/translate_to_domestic_currency_report_range.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'BooleanVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  N'BOOLTRUE(1) BOOLFALSE(0)',   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sTranslateToDomesticCurrency',   -- [EffectiveCaption]
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
  N'UseHist',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('18.666666666666668' AS float),   -- [TopPos]
  CAST('8.5714290000000002' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('31' AS float),   -- [Width]
  N'sUseHistoricalCurrencyRate',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.UseHist(INITIALVALUE(1))',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\u/use_historical_currency_rate_report_option.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'BooleanVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  N'BOOLTRUE(1) BOOLFALSE(0)',   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sUseHistoricalCurrencyRate',   -- [EffectiveCaption]
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
  N'VendorStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('10.266666666666668' AS float),   -- [TopPos]
  CAST('2.4619049999999998' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  N'sVendor',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sVendor',   -- [EffectiveCaption]
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
  N'ShowAct',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('20.133333333333333' AS float),   -- [TopPos]
  CAST('8.5714290000000002' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('31' AS float),   -- [Width]
  N'sShowActiveTransactionsOnly',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.ShowAct(INITIALVALUE(1))',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\s/show_active_trx_only_reportutility_option.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'BooleanVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  N'BOOLTRUE(1) BOOLFALSE(0)',   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sShowActiveTransactionsOnly',   -- [EffectiveCaption]
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
  N'PrintAll',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('21.600000000000001' AS float),   -- [TopPos]
  CAST('8.5714290000000002' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('31' AS float),   -- [Width]
  N'sPrintAllPostedTransactions',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.PrintAll(INITIALVALUE(0))',   -- [DataSource]
  6,   -- [Binding]
  NULL,   -- [EventToGenerate]
  N'PrintAllPostedChanged',   -- [SelectionEventToGenerate]
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
  N'sl_goto.htm#Fields\p/print_all_posted_transactions_ap_aging_report.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'BooleanVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  N'BOOLTRUE(1) BOOLFALSE(0)',   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sPrintAllPostedTransactions',   -- [EffectiveCaption]
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
  N'NameStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('11.733333333333333' AS float),   -- [TopPos]
  CAST('2.4619049999999998' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  N'sName',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sName',   -- [EffectiveCaption]
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
  N'PrintOpenPaymentsCheck',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  5,   -- [Type]
  CAST('23.066666666666666' AS float),   -- [TopPos]
  CAST('8.5714290000000002' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('31' AS float),   -- [Width]
  N'sPrintOpenPayments',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.PrintOpenPayments(INITIALVALUE(0))',   -- [DataSource]
  6,   -- [Binding]
  NULL,   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  0,   -- [Flags]
  N'1',   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  NULL,   -- [BitmapFileName]
  NULL,   -- [HelpString]
  N'sl_goto.htm#Fields\p/print_open_payments_customer_statements.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'BooleanVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  N'BOOLTRUE(1) DEFAULTVALUE(1)',   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sPrintOpenPayments',   -- [EffectiveCaption]
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
  N'PaymentHold',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('4' AS float),   -- [TopPos]
  CAST('64.000000000000014' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10' AS float),   -- [Width]
  N'sPaymentHold',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.PaymentHold(INITIALVALUE(B))',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\p/payment_hold_report_option.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'Sortby3Var(Y,sYes,N,sNo,B,sBoth)',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  N'LENGTH(6)',   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sPaymentHold',   -- [EffectiveCaption]
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
  N'SourceBox',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  6,   -- [Type]
  CAST('14.800000000000001' AS float),   -- [TopPos]
  CAST('54.93' AS float),   -- [LeftPos]
  CAST('11.4' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('53.5' AS float),   -- [Width]
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
  0,   -- [Flags]
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
  N'CurrencyCodeStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('13.199999999999999' AS float),   -- [TopPos]
  CAST('2.4619049999999998' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('13' AS float),   -- [Width]
  N'sCurrencyCode',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sCurrencyCode',   -- [EffectiveCaption]
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
  N'Days0',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('17.199999999999999' AS float),   -- [TopPos]
  CAST('69.857142999999994' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('8' AS float),   -- [Width]
  N'C(LTEStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.Days0',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\l/less_than_equal_report_option.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'DaysVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl) MASK(->>>>)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(LTEStatic)',   -- [EffectiveCaption]
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
  N'Days0Description',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('17.199999999999999' AS float),   -- [TopPos]
  CAST('86.857142999999994' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12' AS float),   -- [Width]
  N'C(DaysStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.Days0Description',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\d/days_report_range.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'DaysRangeVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(DaysStatic)',   -- [EffectiveCaption]
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
  N'Days1',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('18.733333333333334' AS float),   -- [TopPos]
  CAST('69.857142999999994' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('8' AS float),   -- [Width]
  N'C(LTEStatic1)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.Days1',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\l/less_than_equal_report_option.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'DaysVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl) MASK(->>>>)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(LTEStatic1)',   -- [EffectiveCaption]
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
  N'Days1Description',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('18.733333333333334' AS float),   -- [TopPos]
  CAST('86.857142999999994' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12' AS float),   -- [Width]
  N'C(Days1Static)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.Days1Description',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\d/days_report_range.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'DaysRangeVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(Days1Static)',   -- [EffectiveCaption]
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
  N'Days2',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('20.199999999999999' AS float),   -- [TopPos]
  CAST('69.857142999999994' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('8' AS float),   -- [Width]
  N'C(LTEStatic2)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.Days2',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\l/less_than_equal_report_option.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'DaysVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl) MASK(->>>>)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(LTEStatic2)',   -- [EffectiveCaption]
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
  N'Days2Description',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('20.199999999999999' AS float),   -- [TopPos]
  CAST('86.857142999999994' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12' AS float),   -- [Width]
  N'C(Days2Static)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.Days2Description',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\d/days_report_range.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'DaysRangeVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(Days2Static)',   -- [EffectiveCaption]
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
  N'Days3',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('21.666666666666668' AS float),   -- [TopPos]
  CAST('69.857142999999994' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('8' AS float),   -- [Width]
  N'C(LTEStatic3)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.Days3',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\l/less_than_equal_report_option.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'DaysVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl) MASK(->>>>)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(LTEStatic3)',   -- [EffectiveCaption]
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
  N'Days3Description',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('21.666666666666668' AS float),   -- [TopPos]
  CAST('86.857142999999994' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12' AS float),   -- [Width]
  N'C(Days3Static)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.Days3Description',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\d/days_report_range.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'DaysRangeVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(Days3Static)',   -- [EffectiveCaption]
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
  N'Days4',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('23.133333333333333' AS float),   -- [TopPos]
  CAST('69.857142999999994' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('8' AS float),   -- [Width]
  N'C(LTEStatic4)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.Days4',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\l/less_than_equal_report_option.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'DaysVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl) MASK(->>>>)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(LTEStatic4)',   -- [EffectiveCaption]
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
  N'Days4Description',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  1,   -- [Type]
  CAST('23.133333333333333' AS float),   -- [TopPos]
  CAST('86.857142999999994' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12' AS float),   -- [Width]
  N'C(Days4Static)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.Days4Description',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\d/days_report_range.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  NULL,   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'DaysRangeVar()',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  NULL,   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(Days4Static)',   -- [EffectiveCaption]
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
  N'AgingBucketStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('16.066666666666666' AS float),   -- [TopPos]
  CAST('57.319048000000002' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12.142856999999999' AS float),   -- [Width]
  N'sAgingBucket',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sAgingBucket',   -- [EffectiveCaption]
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
  N'PreviewButton',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  8,   -- [Type]
  CAST('26.600000000000001' AS float),   -- [TopPos]
  CAST('39.119999999999997' AS float),   -- [LeftPos]
  CAST('1.3999999999999999' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('15' AS float),   -- [Width]
  N'sPrev&iew',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'PreviewReport',   -- [EventToGenerate]
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
  N'sl_goto.htm#Buttons\p/preview_button.htm',   -- [HelpFileName]
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
  N'AUTOIME(NoControl) JUSTIFY(C)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sPrev&iew',   -- [EffectiveCaption]
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
  N'PrintButton',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  8,   -- [Type]
  CAST('26.600000000000001' AS float),   -- [TopPos]
  CAST('54.880000000000003' AS float),   -- [LeftPos]
  CAST('1.3999999999999999' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('15' AS float),   -- [Width]
  N'sP&rint',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'GenerateReport',   -- [EventToGenerate]
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
  N'sl_goto.htm#Buttons\p/print_button.htm',   -- [HelpFileName]
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
  N'AUTOIME(NoControl) JUSTIFY(C)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sP&rint',   -- [EffectiveCaption]
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
  N'LTEStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('17.533333333333335' AS float),   -- [TopPos]
  CAST('57.319048000000002' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12.142856999999999' AS float),   -- [Width]
  N's<=',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N's<=',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = 43
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
  N'DaysStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('17.533333333333335' AS float),   -- [TopPos]
  CAST('79.857142999999994' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('6.4285709999999998' AS float),   -- [Width]
  N'sDays',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sDays',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = 45
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
  N'LTEStatic1',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('19' AS float),   -- [TopPos]
  CAST('57.319048000000002' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12.142856999999999' AS float),   -- [Width]
  N's<=',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N's<=',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = 47
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
  N'Days1Static',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('19' AS float),   -- [TopPos]
  CAST('79.857142999999994' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('6.4285709999999998' AS float),   -- [Width]
  N'sDays',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sDays',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = 49
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
  N'LTEStatic2',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('20.466666666666665' AS float),   -- [TopPos]
  CAST('57.319048000000002' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12.142856999999999' AS float),   -- [Width]
  N's<=',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N's<=',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = 51
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
  N'Days2Static',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('20.466666666666665' AS float),   -- [TopPos]
  CAST('79.857142999999994' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('6.4285709999999998' AS float),   -- [Width]
  N'sDays',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sDays',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = 53
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
  N'LTEStatic3',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('21.933333333333334' AS float),   -- [TopPos]
  CAST('57.319048000000002' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12.142856999999999' AS float),   -- [Width]
  N's<=',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N's<=',   -- [EffectiveCaption]
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
  N'BackgroundQueue',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  10,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('0' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('0' AS float),   -- [Width]
  N's&Background',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'RunBackgroundQueue',   -- [EventToGenerate]
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
  N'sl_goto.htm#Menus\Actions/background_actions_menu.htm',   -- [HelpFileName]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N's&Background',   -- [EffectiveCaption]
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
  N'Days3Static',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('21.933333333333334' AS float),   -- [TopPos]
  CAST('79.857142999999994' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('6.4285709999999998' AS float),   -- [Width]
  N'sDays',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sDays',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = 57
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
  N'LTEStatic4',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('23.399999999999999' AS float),   -- [TopPos]
  CAST('57.319048000000002' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('12.142856999999999' AS float),   -- [Width]
  N's<=',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N's<=',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = 59
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
  N'Days4Static',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('23.399999999999999' AS float),   -- [TopPos]
  CAST('79.857142999999994' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('6.4285709999999998' AS float),   -- [Width]
  N'sDays',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sDays',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = 71
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
  N'AgingBasisStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('1.3966670000000001' AS float),   -- [TopPos]
  CAST('4.604762' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10.857143000000001' AS float),   -- [Width]
  N'sAgingBasis',   -- [Caption]
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
  0,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(R)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sAgingBasis',   -- [EffectiveCaption]
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
  N'sl_goto.htm#Buttons\g/GotoActivitiesFolderToolbarButton.htm',   -- [HelpFileName]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sGoToActivitiesFolder',   -- [EffectiveCaption]
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
  N'sl_goto.htm#Buttons\g/GotoUtilitiesFolderToolbarButton.htm',   -- [HelpFileName]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
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
  N'sl_goto.htm#Buttons\g/GotoMaintenanceFolderToolbarButton.htm',   -- [HelpFileName]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
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
  N'sl_goto.htm#Buttons\g/GotoFilesFolderToolbarButton.htm',   -- [HelpFileName]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
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
  N'sl_goto.htm#Buttons\g/GotoReportsFolderToolbarButton.htm',   -- [HelpFileName]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
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
  N'sl_goto.htm#Buttons\g/GotoQueriesFolderToolbarButton.htm',   -- [HelpFileName]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sGoToQueriesFolder',   -- [EffectiveCaption]
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
  N'SelectPrinterToolbarButton',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  11,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('0' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('0' AS float),   -- [Width]
  N'sSelectPrinter',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'SelectPrinter',   -- [EventToGenerate]
  NULL,   -- [SelectionEventToGenerate]
  NULL,   -- [LoseFocusEventToGenerate]
  NULL,   -- [GainFocusEventToGenerate]
  NULL,   -- [RadioButtonSelectedValue]
  NULL,   -- [ComboListSource]
  38617376,   -- [Flags]
  NULL,   -- [DefaultData]
  0,   -- [ReadOnly]
  0,   -- [Hidden]
  N'SelectPrinter.png',   -- [BitmapFileName]
  NULL,   -- [HelpString]
  NULL,   -- [HelpFileName]
  1246576928,   -- [HelpContextID]
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
  N'sSelectPrinter',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence + 1
SET @TabOrder = 21
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
  N'EndingStatic',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  0,   -- [Type]
  CAST('6.5999999999999996' AS float),   -- [TopPos]
  CAST('62' AS float),   -- [LeftPos]
  CAST('1' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('10' AS float),   -- [Width]
  N'sEnding',   -- [Caption]
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
  16,   -- [Flags]
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
  N'AUTOIME(NoControl) JUSTIFY(L)',   -- [Post301Format]
  NULL,   -- [Description]
  N'sEnding',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = 47
SET @TabOrder = 8
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
  N'SortBy',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('2.5666666666666664' AS float),   -- [TopPos]
  CAST('64.000000000000014' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('10' AS float),   -- [ListHeight]
  CAST('10' AS float),   -- [Width]
  N'C(SortbyStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.SortBy(INITIALVALUE(1))',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\s/sort_by_customervendor_report.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  N'StdDefault',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'SortBy2Var(1,sNumber,0,sName)',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  N'LENGTH(6)',   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(SortbyStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = @ContainerSequence
SET @TabOrder = 28
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
  N'AgingBucket',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  27,   -- [Type]
  CAST('15.800000000000001' AS float),   -- [TopPos]
  CAST('69.857142999999994' AS float),   -- [LeftPos]
  CAST('1.3' AS float),   -- [Height]
  CAST('10' AS float),   -- [ListHeight]
  CAST('5' AS float),   -- [Width]
  N'C(AgingBucketStatic)',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  N'variables.AgingBucket(INITIALVALUE(0))',   -- [DataSource]
  6,   -- [Binding]
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
  N'sl_goto.htm#Fields\a/aging_bucket_report_range.htm',   -- [HelpFileName]
  -1,   -- [HelpContextID]
  N'StdDefault',   -- [MenuName]
  NULL,   -- [Format]
  NULL,   -- [FindFromSpec]
  NULL,   -- [MaintainFromSpec]
  N'0',   -- [MaxCharacters]
  N'Sortby6Var(0,0,1,1,2,2,3,3,4,4,5,5)',   -- [DefaultFrom]
  NULL,   -- [DataType]
  NULL,   -- [ActiveXControlName]
  NULL,   -- [PropertyClassName]
  N'LENGTH(1)',   -- [Post301DataType]
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N'C(AgingBucketStatic)',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

SET @ContainerSequence = 32484
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
  N'GetOptionsMenuItem',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  10,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('0' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('0' AS float),   -- [Width]
  N's&GetOptions',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'RunGetOptions',   -- [EventToGenerate]
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
  N'sl_goto.htm#Menus\Actions/get_options_actions_menu.htm',   -- [HelpFileName]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N's&GetOptions',   -- [EffectiveCaption]
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
  N'StoreOptionsMenuItem',   -- [Name]
  -1,   -- [DeviceID]
  @TabOrder,   -- [TabOrder]
  10,   -- [Type]
  CAST('0' AS float),   -- [TopPos]
  CAST('0' AS float),   -- [LeftPos]
  CAST('0' AS float),   -- [Height]
  CAST('0' AS float),   -- [ListHeight]
  CAST('0' AS float),   -- [Width]
  N's&StoreOptions',   -- [Caption]
  NULL,   -- [Validators]
  NULL,   -- [ContainerName]
  @ContainerSequence,   -- [ContainerSequence]
  NULL,   -- [DataSource]
  0,   -- [Binding]
  N'RunStoreOptions',   -- [EventToGenerate]
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
  N'sl_goto.htm#Menus\Actions/store_options_actions_menu.htm',   -- [HelpFileName]
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
  N'AUTOIME(NoControl)',   -- [Post301Format]
  NULL,   -- [Description]
  N's&StoreOptions',   -- [EffectiveCaption]
  NULL  -- [LayoutAttributes]
)

DECLARE @EventSequence INT
SET @EventSequence = 0

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GenerateReport',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ValidateSiteGroup()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GenerateReport',   -- [EventName]
  @EventSequence,   -- [Sequence]
  8,   -- [ResponseType]
  N'SetDateOffset(AgingDate,AgingDateOffset,AgingDateIncrement,CutoffDate,CutoffDateOffset,CutoffDateIncrement)',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GenerateReport',   -- [EventName]
  @EventSequence,   -- [Sequence]
  19,   -- [ResponseType]
  N'TASKNAME(V(BGTaskName))TASKPARMS(V(BGTaskParms))TASKSTATUS(V(BGTaskStatus))TASKNUMBER(BGTaskNumber) ERRORMESSAGE(mBackEndMessage)',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GenerateReport',   -- [EventName]
  @EventSequence,   -- [Sequence]
  8,   -- [ResponseType]
  N'ReportSubmitted()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'GoToActivitiesFolder',   -- [EventName]
  @EventSequence,   -- [Sequence]
  41,   -- [ResponseType]
  N'MASTER/xFinance/xAccountsPayable/xActivities',   -- [Response]
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
  N'MASTER/xFinance/xAccountsPayable/xFiles',   -- [Response]
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
  N'MASTER/xFinance/xAccountsPayable',   -- [Response]
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
  N'MASTER/xFinance/xAccountsPayable/xQueries',   -- [Response]
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
  N'MASTER/xFinance/xAccountsPayable/xReports',   -- [Response]
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
  N'MASTER/xFinance/xAccountsPayable/xUtilities',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'PreviewReport',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'ValidateSiteGroup()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'PreviewReport',   -- [EventName]
  @EventSequence,   -- [Sequence]
  8,   -- [ResponseType]
  N'SetDateOffset(AgingDate,AgingDateOffset,AgingDateIncrement,CutoffDate,CutoffDateOffset,CutoffDateIncrement)',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'PreviewReport',   -- [EventName]
  @EventSequence,   -- [Sequence]
  40,   -- [ResponseType]
  N'TASKNAME(V(BGTaskName))TASKPARMS(V(BGTaskParms)) ERRORMESSAGE(mPrintPreviewError)',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = 0
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'PrintAllPostedChanged',   -- [EventName]
  @EventSequence,   -- [Sequence]
  35,   -- [ResponseType]
  N'PrintAllPostedTransactionChanged()',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'RunBackgroundQueue',   -- [EventName]
  @EventSequence,   -- [Sequence]
  3,   -- [ResponseType]
  N'BackgroundQueue( OKCANCELOPTIONAL() SETVARVALUES(BGTaskName=V(BGTaskName), RunTaskEvent=GenerateReport) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'RunGetOptions',   -- [EventName]
  @EventSequence,   -- [Sequence]
  3,   -- [ResponseType]
  N'GetOptions(OKCANCELOPTIONAL())',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'RunStoreOptions',   -- [EventName]
  @EventSequence,   -- [Sequence]
  3,   -- [ResponseType]
  N'StoreOptions(OKCANCELOPTIONAL())',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'SelectPrinter',   -- [EventName]
  @EventSequence,   -- [Sequence]
  3,   -- [ResponseType]
  N'ReportOptions( OKCANCELOPTIONAL() )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdFormPredisplay',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'SL.SLParms.GetAPAgeDaysSP( PARMS(RVAR V(Days0), RVAR V(Days0Description), RVAR V(Days1), RVAR V(Days1Description), RVAR V(Days2), RVAR V(Days2Description), RVAR V(Days3), RVAR V(Days3Description), RVAR V(Days4), RVAR V(Days4Description)) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdFormPredisplay',   -- [EventName]
  @EventSequence,   -- [Sequence]
  0,   -- [ResponseType]
  N'SL.SLParms.GetAgingBasisSp( PARMS(RVAR V(ArparmInvDue), RVAR V(ApparmInvDue)) )',   -- [Response]
  NULL,   -- [Response2]
  NULL,   -- [Response3]
  NULL   -- [Description]
)

SET @EventSequence = @EventSequence + 1
INSERT INTO FormEventHandlers ( [FormID], [EventName], [Sequence], [ResponseType], [Response], [Response2], [Response3], [Description] )
VALUES (
  @FormID,   -- [FormID]
  N'StdFormPredisplay',   -- [EventName]
  @EventSequence,   -- [Sequence]
  22,   -- [ResponseType]
  N' SETVARVALUES(AgingBasis=V(ApparmInvDue))',   -- [Response]
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
  N'PPCC_AccountsPayableAgingReport',   -- [Value]
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
  N'V(VendorStarting),V(VendorEnding),V(NameStarting),V(NameEnding),V(CurrencyCodeStarting),V(CurrencyCodeEnding),V(SiteGroup),V(AgingDateOffset),V(CutoffDateOffset),V(PrintAll),V(PrintOpenPayments),V(Suppress),V(Translate),V(UseHist),V(AgingBucket),V(AgingBasis),V(PaymentHold),V(ShowAct),V(SortByCurrency),V(SortBy),V(Days0),V(Days1),V(Days2),V(Days3),V(Days4),V(Days0Description),V(Days1Description),V(Days2Description),V(Days3Description),V(Days4Description),V(DateNullVar),V(DateNullVar),V(DisplayHe',   -- [Value]
  N'ader),V(ConsolidateVendors),BG~TASKID~,V(xCategory),V(yCategory)',   -- [Value2]
  NULL,   -- [Value3]
  NULL,   -- [LockedBy]
  NULL   -- [Description]
)

INSERT INTO ActiveXScripts ( [Name], [ScopeType], [ScopeName], [LockedBy], [Language] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [Name]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  NULL,   -- [LockedBy]
  NULL   -- [Language]
)

INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Option Explicit On'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Option Strict On'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Imports System'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Imports Microsoft.VisualBasic'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Imports Mongoose.IDO.Protocol'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Imports Mongoose.Scripting'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'Namespace Mongoose.FormScripts'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'    Public Class PPCC_AccountsPayableAgingReport'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Inherits FormScript'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub APPaymentDistReturned()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Dim strInvoiceNum As String'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ((ThisForm.LastModalChildEndedOk) And _'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'              (ThisForm.LastModalChildName = "APPaymentDistribution")) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                strInvoiceNum = ThisForm.ModalChildForm.PrimaryIDOCollection.GetCurrentObjectProperty("InvoiceNum")'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ThisForm.Components("StartingInvoiceNum").Text = strInvoiceNum'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Function ValidateSiteGroup() As Integer'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            If ThisForm.Components("SiteGroup").ValidateData(True) Then'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ValidateSiteGroup = 0'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            Else'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'                ValidateSiteGroup = 1'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            End If'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Function'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  NULL   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        Sub PrintAllPostedTransactionChanged()'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Components("PrintOpenPaymentsCheck").Enabled = CBool(IIf(ThisForm.Components("PrintAll").Text = "0", False, True))'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'            ThisForm.Variables("PrintOpenPayments").Value = ThisForm.Variables("PrintAll").Value'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'        End Sub'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'    End Class'   -- [CodeLine]
)

SET @Sequence = @Sequence + 1
INSERT INTO ActiveXScriptLines ( [ScriptName], [ScopeType], [ScopeName], [Sequence], [CodeLine] )
VALUES (
  N'PPCC_AccountsPayableAgingReport',   -- [ScriptName]
  1,   -- [ScopeType]
  N'[NULL]',   -- [ScopeName]
  @Sequence,   -- [Sequence]
  N'End Namespace'   -- [CodeLine]
)
