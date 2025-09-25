unit acerp.view.pages.layout;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.MultiView, Router4D.Interfaces,
  FMX.StdCtrls;

type
  TPageLayout = class(TForm, iRouter4DComponent)
    lytContainer: TLayout;
    mvwMenuLateral: TMultiView;
    lytMenuLateral: TLayout;
    Rectangle1: TRectangle;
    lytMain: TLayout;
    lytSidebar: TLayout;
    lytBody: TLayout;
    recBackground: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
    function Render: TFMXObject;
    procedure UnRender;
  end;

implementation

{$R *.fmx}

{ TPageLayout }

function TPageLayout.Render: TFMXObject;
begin
  Result := lytContainer;
end;

procedure TPageLayout.UnRender;
begin

end;

end.
