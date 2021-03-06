unit uLangEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDataModule, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TfrmLangEditor = class(TForm)
    pnlbottom: TPanel;
    btnsave: TButton;
    btncancel: TButton;
    lbledtchange: TLabeledEdit;
    lblcomponentid: TLabel;
    sedsize: TSpinEdit;
    lblsize: TLabel;
    procedure btnsaveClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sedsizeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CanSet: Boolean;
  end;

var
  frmLangEditor: TfrmLangEditor;

implementation

{$R *.dfm}

procedure TfrmLangEditor.btncancelClick(Sender: TObject);
begin
  CanSet := False;
  Close;
end;

procedure TfrmLangEditor.btnsaveClick(Sender: TObject);
begin
  CanSet := True;
  Close;
end;

procedure TfrmLangEditor.FormShow(Sender: TObject);
begin
  lbledtchange.Clear;
  lbledtchange.SetFocus;
  CanSet := False;
end;

procedure TfrmLangEditor.sedsizeChange(Sender: TObject);
begin
  lbledtchange.Font.Size := sedsize.Value;
end;

end.
