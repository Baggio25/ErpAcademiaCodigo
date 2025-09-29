unit acerp.view.components.sidebar;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects;

type
  TComponentSideBar = class(TFrame)
    lytContainer: TLayout;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Line1: TLine;
    Line2: TLine;
    Layout4: TLayout;
    lytMenu: TLayout;
    Rectangle1: TRectangle;
  private
    procedure ConstruirMenu;
  public
    class function New(AOwner: TComponent): TComponentSideBar;
    function Component: TFmxObject;
  end;

implementation

{$R *.fmx}

uses acerp.view.components.buttonmenu;

{ TComponentSideBar }

function TComponentSideBar.Component: TFmxObject;
begin
  ConstruirMenu;
  Result := lytContainer;
end;

procedure TComponentSideBar.ConstruirMenu;
begin
  lytMenu.AddObject(
    TComponentButtonMenu
    .New(Self)
    .Component
  );
end;

class function TComponentSideBar.New(AOwner: TComponent): TComponentSideBar;
begin
  Result := Self.Create(AOwner);
end;

end.
