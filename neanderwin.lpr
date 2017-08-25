program neanderwin;

{$MODE Delphi}

uses
  Forms, Interfaces,
  uNeander in 'uNeander.pas' {formPrincipal},
  uSimula in 'uSimula.pas',
  uHex in 'uHex.pas' {formHex},
  uAbout in 'uAbout.pas' {AboutBox},
  uAutoPrg in 'uAutoPrg.pas' {formAutoMonta},
  uAjuda in 'uAjuda.pas' {formAjuda},
  uAssemb in 'uAssemb.pas' {formAssembler};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformHex, formHex);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TformAutoMonta, formAutoMonta);
  Application.CreateForm(TformAjuda, formAjuda);
  Application.CreateForm(TformAssembler, formAssembler);
  Application.Run;
end.
