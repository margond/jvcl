{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JVCL3Install.pas, released on 2003-11-27.

The Initial Developer of the Original Code is Andreas Hausladen [Andreas dott Hausladen att gmx dott de]
Portions created by Andreas Hausladen are Copyright (C) 2003 Andreas Hausladen.
All Rights Reserved.

Contributor(s): -

Last Modified: 2003-12-01

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.sourceforge.net

Known Issues:
-----------------------------------------------------------------------------}

{$I jvcl.inc}

program JVCL3Install;

uses
  Forms,
  FrmMain in 'FrmMain.pas' {FormMain},
  dpp_PascalParser in 'JVCLConfig\dpp_PascalParser.pas',
  JVCLConfiguration in 'JVCLConfig\JVCLConfiguration.pas',
  MainConfig in 'JVCLConfig\MainConfig.pas' {FormMainConfig},
  CoreData in 'CoreData.pas',
  FrmMake in 'FrmMake.pas' {FormMake},
  BuildHelpers in 'BuildHelpers.pas',
  CapExec in 'CapExec.pas',
  JvSimpleXML in '..\..\run\JvSimpleXml.pas',
  AHCompBrowseFolderDlg in 'AHCompBrowseFolderDlg.pas',
  JvConsts in '..\..\common\JvConsts.pas',
  JvResources in '..\..\run\JvResources.pas',
  JvTypes in '..\..\run\JvTypes.pas',
  JVCLVer in '..\..\run\JVCLVer.pas',
  HtHint in 'HtHint.pas';

{$R *.res}

begin
  MainConfig.Embedded := True;

  Application.Initialize;
  Application.Title := 'JVCL Package Installer';
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormMainConfig, FormMainConfig);
  Application.CreateForm(TFormMake, FormMake);
  Application.Run;
end.
