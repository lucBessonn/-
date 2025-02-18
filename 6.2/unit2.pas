unit Unit2;

{$mode delphi}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs;
type
    tFigure=
      class
           x,y: integer;
           procedure show();
           procedure hide();
           procedure moveTo(x,y:Integer);
           constructor create(x,y:Integer);
           destructor destroy(); override;
      end;

implementation
             procedure tfigure.show();
           begin
           showMessage('figure show');
           end;

           procedure tfigure.hide();
           begin
           showMessage('figure hide');
           end;

           procedure tfigure.moveTo(x,y:Integer);
           begin
           self.x:=x;
           self.y:=y;
           showMessage('move to newx newy');
           end;

           constructor tfigure.create(x,y:Integer);
           begin
              inherited create();
              self.x:=x;
              self.y:=y;
           end;

           destructor tfigure.destroy();
           begin
              inherited;
           end;

end.

