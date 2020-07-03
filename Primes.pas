Program Primes;
Uses Crt;

Var
    n : Integer;
    i : Integer;

    Function IsPrime(n : Integer) : Boolean;
    Var
       Count : Integer;
       i     : Integer;
    Begin
      If n <= 1 Then
        Begin
          IsPrime := False;
          Exit;
        End
      Else If n = 2 Then
        Begin
          IsPrime := True;
          Exit;
        End;

      Count := 0;
      For i := 2 To Round(Sqrt(n)) Do
      Begin
        If (n Mod i) = 0 Then
        Begin
          Count := Count + 1;
        End;
      End;

      If Count > 0 Then
        Begin
          IsPrime := False;
        End
      Else
        Begin
          IsPrime := True;
        End;
    End;

Begin
    ClrScr;
    WriteLn('Kiem tra 1 so co phai la so nguyen to hay khong.');

    Write('Nhap vao 1 so nguyen: ');
    // n = 1000: 2 3 5 7 .... <= 1000
    ReadLn(n);

    For i := 2 To n Do
    Begin
      If IsPrime(i) Then
        Begin
          Write(i, ' ');
        End
    End;
    WriteLn();

    ReadKey;
End.
