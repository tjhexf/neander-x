unit uAjuda;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileUtil ;

type
  TformAjuda = class(TForm)
    memoAjuda: TMemo;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formAjuda: TformAjuda;

implementation

{$R *.lfm}

procedure TformAjuda.FormActivate(Sender: TObject);
begin
    {$IFDEF Win32}
     if FileExists('.\neanderwin.txt') then
        begin
         memoAjuda.Lines.LoadFromFile ('.\neanderwin.txt');
    {$ELSE}
//     if FileExists('/usr/share/neanderlin/neanderlin.txt') { *Converted from FileExists*  } then
        if FileExists('./neanderlin.txt') { *Converted from FileExists*  } then
        begin
        memoAjuda.Lines.Text := AnsiToUtf8(ReadFileToString('./neanderlin.txt'));
        {$ENDIF}
        end
    else
        begin
            memoAjuda.Clear;
            memoAjuda.lines.add ('Arquivo de ajuda não foi encontrado.');
            memoAjuda.lines.add ('Ajuda não está disponível.');
        end;
end;

end.
