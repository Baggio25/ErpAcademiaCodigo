unit acerp.view.components.buttonmenu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Controls.Presentation, FMX.Objects;

type
  TComponentButtonMenu = class(TFrame)
    lytContainer: TLayout;
    lytTop: TLayout;
    lytMenu: TLayout;
    lytImageMenu: TLayout;
    lytImageInfo: TLayout;
    ImageInfo: TImage;
    ImageMenu: TImage;
    lytDescricao: TLayout;
    lblDescricao: TLabel;
    lytSubmenu: TLayout;
    lytButton: TLayout;
    procedure lytButtonClick(Sender: TObject);
  private
    FHeight: Single;
    procedure RedimensionaSubmenu;
  public
    constructor Create(AOwner: TComponent); override;
    class function New(AOwner: TComponent): TComponentButtonMenu;
    function Component: TFmxObject;
    function Submenu(Value: TFmxObject): TComponentButtonMenu;
  end;

implementation

{$R *.fmx}

uses acerp.services.utils;

{ TComponentButtonMenu }

function TComponentButtonMenu.Component: TFmxObject;
begin
  Result := lytContainer;
end;

constructor TComponentButtonMenu.Create(AOwner: TComponent);
begin
  inherited;
  lytContainer.Height := 60;
  TUtils.ResourceImage('setabaixo', ImageMenu);
end;

procedure TComponentButtonMenu.lytButtonClick(Sender: TObject);
begin
  lytContainer.Height := FHeight;
end;

class function TComponentButtonMenu.New(AOwner: TComponent): TComponentButtonMenu;
begin
  Result := Self.Create(AOwner);
end;

procedure TComponentButtonMenu.RedimensionaSubmenu;
var
  I: Integer;
begin
  for I := 0 to Pred(lytSubmenu.ComponentCount) do begin
    if lytSubmenu.Components[I] is TLayout then begin
      FHeight := FHeight + TLayout(lytSubmenu.Components[I]).Height;
    end;
  end;
end;

function TComponentButtonMenu.Submenu(Value: TFmxObject): TComponentButtonMenu;
begin
  Result := Self;
  lytSubmenu.AddObject(Value);
end;

end.
