{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JvBandsReg.PAS, released on 2002-05-26.

The Initial Developer of the Original Code is John Doe
Portions created by John Doe are Copyright (C) 2003 John Doe.
All Rights Reserved.

Contributor(s):

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.delphi-jedi.org

Known Issues:
-----------------------------------------------------------------------------}
// $Id: JvBDEMemTableEditor.pas 26 2011-03-09 20:31:34Z uschuster $

unit JvBDEMemTableEditor;

{$I jvcl.inc}

interface

uses
  Classes, DB, SysUtils,
  RTLConsts, DesignIntf, DesignEditors, VCLEditors,
  JvDBMemDatasetEditor, JvBDEMemTable;

type
  TJvBDEMemoryTableEditor = class(TJvAbstractMemDataSetEditor)
  protected
    function CopyStructure(Source, Dest: TDataSet): Boolean; override;
  end;

implementation

function TJvBDEMemoryTableEditor.CopyStructure(Source, Dest: TDataSet): Boolean;
begin
  Result := Dest is TJvBDEMemoryTable;
  if Result then
    TJvBDEMemoryTable(Dest).CopyStructure(Source);
end;

end.