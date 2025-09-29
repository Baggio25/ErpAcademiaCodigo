unit acerp.services.utils;

interface

uses
  FMX.Objects;

type
  TUtils = class
    private

    public
      class procedure ResourceImage(Resource: String; Image: TImage);
  end;

implementation

uses
  System.Classes, System.Types;

{ TUtils }

class procedure TUtils.ResourceImage(Resource: String; Image: TImage);
var
  lResource : TResourceStream;
begin

  lResource := TResourceStream.Create(HInstance, Resource, RT_RCDATA);
  try
    Image.Bitmap.LoadFromStream(lResource);
  finally
    lResource.Free;
  end;

end;

end.
