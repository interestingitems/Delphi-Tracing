﻿// Eduardo - 19/10/2024
unit Logger.Test;

{$DEFINE LOG}

interface

type
  TTeste = record
    procedure Teste;
  end;

procedure Teste;

implementation

uses
  System.SysUtils;

procedure Teste;
begin
  // teste
  Sleep(100);
{$IFDEF LOG} finally TLogger.Exit(1); end; {$ENDIF}

{ TTeste }

procedure TTeste.Teste;
begin
  // teste
  Sleep(100);
{$IFDEF LOG} finally TLogger.Exit(2); end; {$ENDIF}

end.