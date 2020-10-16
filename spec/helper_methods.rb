module HelperMethods
  def set_configurations!
    SimpleSaml::AdminCredential.configure do |config|
      config.provider = :beddoes
      config.login_url = "https://auth.beddoes.com.au/login_url"
      config.cert_fingerprint = "AB:23:CH:54..."
      config.name_identifier_format = "urn:oasis:names..."
    end
  end

  def invalid_params
    %w(
      PHNhbWxwOlJlc3BvbnNlIElEPSJfZTNjMTdhNTAtZjBkOC0wMTM4LWQ4ZTUtN2NhYTE0MmE1YTNjIiBWZXJzaW9uPSIyLjAiIElzc3VlSW5zdGF
      udD0iMjAyMC0xMC0xNVQwNTo1NTowMloiIERlc3RpbmF0aW9uPSJodHRwczovL2x2aC5tZTozMDAwL2F1dGgvc2FtbC9hZG1pbi9jYWxsYmFjay
      IgQ29uc2VudD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmNvbnNlbnQ6dW5zcGVjaWZpZWQiIEluUmVzcG9uc2VUbz0iXzgyZTVjYWI4L
      WZlNGYtNDQwYS05NTFhLTRiNTk2MTNlZjQxNCIgeG1sbnM6c2FtbHA9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpwcm90b2NvbCI+PElz
      c3VlciB4bWxucz0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmFzc2VydGlvbiI+aHR0cHM6Ly9sb2NhbGhvc3Q6MzEwMC9hdXRoL3NhbWw
      vY2FsbGJhY2s8L0lzc3Vlcj48c2FtbHA6U3RhdHVzPjxzYW1scDpTdGF0dXNDb2RlIFZhbHVlPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLj
      A6c3RhdHVzOlN1Y2Nlc3MiLz48L3NhbWxwOlN0YXR1cz48QXNzZXJ0aW9uIHhtbG5zPSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YXNzZ
      XJ0aW9uIiBJRD0iX2UzYzE3YzAwLWYwZDgtMDEzOC1kOGU1LTdjYWExNDJhNWEzYyIgSXNzdWVJbnN0YW50PSIyMDIwLTEwLTE1VDA1OjU1OjAy
      WiIgVmVyc2lvbj0iMi4wIj48SXNzdWVyPmh0dHBzOi8vbG9jYWxob3N0OjMxMDAvYXV0aC9zYW1sL2NhbGxiYWNrPC9Jc3N1ZXI+PGRzOlNpZ25
      hdHVyZSB4bWxuczpkcz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS94bWxkc2lnIyI+PGRzOlNpZ25lZEluZm8geG1sbnM6ZHM9Imh0dHA6Ly
      93d3cudzMub3JnLzIwMDAvMDkveG1sZHNpZyMiPjxkczpDYW5vbmljYWxpemF0aW9uTWV0aG9kIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vc
      mcvMjAwMS8xMC94bWwtZXhjLWMxNG4jIj48L2RzOkNhbm9uaWNhbGl6YXRpb25NZXRob2Q+PGRzOlNpZ25hdHVyZU1ldGhvZCBBbGdvcml0aG09
      Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMDQveG1sZHNpZy1tb3JlI3JzYS1zaGEyNTYiPjwvZHM6U2lnbmF0dXJlTWV0aG9kPjxkczpSZWZlcmV
      uY2UgVVJJPSIjX2UzYzE3YzAwLWYwZDgtMDEzOC1kOGU1LTdjYWExNDJhNWEzYyI+PGRzOlRyYW5zZm9ybXM+PGRzOlRyYW5zZm9ybSBBbGdvcm
      l0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvMDkveG1sZHNpZyNlbnZlbG9wZWQtc2lnbmF0dXJlIj48L2RzOlRyYW5zZm9ybT48ZHM6VHJhb
      nNmb3JtIEFsZ29yaXRobT0iaHR0cDovL3d3dy53My5vcmcvMjAwMS8xMC94bWwtZXhjLWMxNG4jIj48L2RzOlRyYW5zZm9ybT48L2RzOlRyYW5z
      Zm9ybXM+PGRzOkRpZ2VzdE1ldGhvZCBBbGdvcml0aG09Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvMDQveG1sZW5jI3NoYTI1NiI+PC9kczpEaWd
      lc3RNZXRob2Q+PGRzOkRpZ2VzdFZhbHVlPkczazQwVlBYSC9WZW5veUZWeU5NN0JXN00wVEVZSFVuU0YvTERFRlM4NTA9PC9kczpEaWdlc3RWYW
      x1ZT48L2RzOlJlZmVyZW5jZT48L2RzOlNpZ25lZEluZm8+PGRzOlNpZ25hdHVyZVZhbHVlPk9HK2RicXZPcHJqWnV6SXNxcTBZMmRoVnBSc09Qc
      nc0V0tUc0dCanZwWTdmZU02V2VNUTBrbHBLWmdBQ1pSTUhZMUd6c0IwWm5tcHJDcjB6anMwb1JpdTlBMDk3R1E1R3hHK3piOHdUSVh6SndhZGFY
      d1B1RW5HMTVmRE9EZytVU1hHQWFDb241SS9YZlpESWVkc0d2NDFDc1dvTXJsUWRPNnlkOTUyN25tWUZtUFprcFBXMXhtNU1Zdjhna0diL2dpNm4
      4V00zTWRnTHA5dXJXdUZyTWtlalVJUDIvWmRQcGhMNkxtY0NsZlkya1Q1MFNKR2IwRzczTERQTmxRcVNnM2swQU5OUXlCczhjUG5TWkQ5c2g3dk
      pLYjlmT25PT2NKK0ZiNWpVUWVIajRQV1FNQVoxRTBzckY1Tm9IcUd6QmVhSFRVSkxOVUJHZnJBK1AzR1lxdz09PC9kczpTaWduYXR1cmVWYWx1Z
      T48S2V5SW5mbyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC8wOS94bWxkc2lnIyI+PGRzOlg1MDlEYXRhPjxkczpYNTA5Q2VydGlmaWNh
      dGU+TUlJRGt6Q0NBbnVnQXdJQkFnSVVjdGpTdmxhOWszOHJGWCtVMDFGa05mR3NTVVV3RFFZSktvWklodmNOQVFFTEJRQXdXVEVMTUFrR0ExVUV
      CaE1DUVZVeEV6QVJCZ05WQkFnTUNsTnZiV1V0VTNSaGRHVXhJVEFmQmdOVkJBb01HRWx1ZEdWeWJtVjBJRmRwWkdkcGRITWdVSFI1SUV4MFpERV
      NNQkFHQTFVRUF3d0piRzlqWVd4b2IzTjBNQjRYRFRJd01UQXhNakl4TkRVeU4xb1hEVE13TVRBeE1ESXhORFV5TjFvd1dURUxNQWtHQTFVRUJoT
      UNRVlV4RXpBUkJnTlZCQWdNQ2xOdmJXVXRVM1JoZEdVeElUQWZCZ05WQkFvTUdFbHVkR1Z5Ym1WMElGZHBaR2RwZEhNZ1VIUjVJRXgwWkRFU01C
      QUdBMVVFQXd3SmJHOWpZV3hvYjNOME1JSUJJakFOQmdrcWhraUc5dzBCQVFFRkFBT0NBUThBTUlJQkNnS0NBUUVBdmNzVWErakFDZEJnUENUcCs
      0U2FScDZkVHlVSkdhZWd0SndUK2pCbmZHVTdhQjBla0luSUovOFBkcVRCaWFqMFBVUGJITDNUZGRXVlBUNk4zaHhLL1hSN1BpUWduYXRSd3RKTW
      ppL1hEQ3l5dGNLQ2tCci9jRk5xMFZTOTB1ekZ4QVNJMUxWRm1XL2lCRmlDa2JUYzNkVmV3ZU1rUytmRG1yUXNvR0NXOE5Sa1pWZlRCWXkzNXNmN
      lJTRUYrdklpMUVZWWEyZ1p6aUlOR1Y0THkyUmc1RWxLVzhGdWZEVSt5bGtRdUVnOU1GMEx6VStPOFZEZ05NNm8yUkFycXZvNFYySFAzTy9uVXdu
      UjRPdXFiNTNRZjJyNTNMcVdWOUxKQWczZWpUVjBIa0RXWEpacWVYZHZqdGZaVDJvY014MEo2NkVIVzROb2pNalhIUlp6ejJuWEd3SURBUUFCbzF
      Nd1VUQWRCZ05WSFE0RUZnUVVTNXgzNWlicHlLZVBqL080NytZcCtjNC9RdUl3SHdZRFZSMGpCQmd3Rm9BVVM1eDM1aWJweUtlUGovTzQ3K1lwK2
      M0L1F1SXdEd1lEVlIwVEFRSC9CQVV3QXdFQi96QU5CZ2txaGtpRzl3MEJBUXNGQUFPQ0FRRUFmQTZRQmdWZzdJMU5rTTdWVjRNajMrdlRhQS9NQ
      0I0TUpZeDFKNFVtakYzbzE0TFdDTi9PS3lXR3BxWnU4RXpwNmtSbzdtdUNZSTc5VUd4NFp0S21QRVUyemMwT1NwdFlacnhrcUpOejhjM3NEMWZ2
      d1B6UnlQeC9PREowZjl1bmRHT2lZblk3YWxPSWNSMDRLOUtkSDNIeHNYWk42TjlyZUdrZVNDYXZKd0h5RVVkblduTVZpYWl4K1ZWU1h0SVdMVHV
      kUk9naVM3cVRrZ1V5eUY4akl6TkI1blUwNXhScGN6VVVFQ1lpTjJEWCsyWkl6cTFWcmt6TTRvVFBxbkN2dFBmYnU1Y3J5SkYxSmpCZk1RK0NqYj
      Q3OWkrcHVFRTNXa3p3RFhuY3U3bjBnT2NwckYwOEZ1REI5dmtkYUhERUppR00zZS9rMzZaYThuSzdyWS9ndFE9PTwvZHM6WDUwOUNlcnRpZmljY
      XRlPjwvZHM6WDUwOURhdGE+PC9LZXlJbmZvPjwvZHM6U2lnbmF0dXJlPjxTdWJqZWN0PjxOYW1lSUQgRm9ybWF0PSJ1cm46b2FzaXM6bmFtZXM6
      dGM6U0FNTDoyLjA6bmFtZWlkLWZvcm1hdDpwZXJzaXN0ZW50Ij5iOGYwOTc1Yy1iODNjLTQ1NDItYjNmNy1mNTE1YmUwMTI1NDc8L05hbWVJRD4
      8U3ViamVjdENvbmZpcm1hdGlvbiBNZXRob2Q9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDpjbTpiZWFyZXIiPjxTdWJqZWN0Q29uZmlybW
      F0aW9uRGF0YSBJblJlc3BvbnNlVG89Il84MmU1Y2FiOC1mZTRmLTQ0MGEtOTUxYS00YjU5NjEzZWY0MTQiIE5vdE9uT3JBZnRlcj0iMjAyMC0xM
      C0xNVQwNTo1ODowMloiIFJlY2lwaWVudD0iaHR0cHM6Ly9sdmgubWU6MzAwMC9hdXRoL3NhbWwvYWRtaW4vY2FsbGJhY2siPjwvU3ViamVjdENv
      bmZpcm1hdGlvbkRhdGE+PC9TdWJqZWN0Q29uZmlybWF0aW9uPjwvU3ViamVjdD48Q29uZGl0aW9ucyBOb3RCZWZvcmU9IjIwMjAtMTAtMTVUMDU
      6NTQ6NTdaIiBOb3RPbk9yQWZ0ZXI9IjIwMjAtMTAtMTVUMDY6NTU6MDJaIj48QXVkaWVuY2VSZXN0cmljdGlvbj48QXVkaWVuY2U+aHR0cHM6Ly
      9sdmgubWU6MzAwMDwvQXVkaWVuY2U+PC9BdWRpZW5jZVJlc3RyaWN0aW9uPjwvQ29uZGl0aW9ucz48QXV0aG5TdGF0ZW1lbnQgQXV0aG5JbnN0Y
      W50PSIyMDIwLTEwLTE1VDA1OjU1OjAyWiIgU2Vzc2lvbkluZGV4PSJfZTNjMTdjMDAtZjBkOC0wMTM4LWQ4ZTUtN2NhYTE0MmE1YTNjIj48QXV0
      aG5Db250ZXh0PjxBdXRobkNvbnRleHRDbGFzc1JlZj51cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YWM6Y2xhc3NlczpQYXNzd29yZDwvQXV
      0aG5Db250ZXh0Q2xhc3NSZWY+PC9BdXRobkNvbnRleHQ+PC9BdXRoblN0YXRlbWVudD48QXR0cmlidXRlU3RhdGVtZW50PjxBdHRyaWJ1dGUgTm
      FtZT0iZW1haWwiIE5hbWVGb3JtYXQ9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphdHRybmFtZS1mb3JtYXQ6YmFzaWMiIEZyaWVuZGx5T
      mFtZT0iRW1haWwgYWRkcmVzcyI+PEF0dHJpYnV0ZVZhbHVlPmRhbmllbEBiZWRkb2VzLmNvbS5hdTwvQXR0cmlidXRlVmFsdWU+PC9BdHRyaWJ1
      dGU+PEF0dHJpYnV0ZSBOYW1lPSJuYW1lIiBOYW1lRm9ybWF0PSJ1cm46b2FzaXM6bmFtZXM6dGM6U0FNTDoyLjA6YXR0cm5hbWUtZm9ybWF0OmJ
      hc2ljIiBGcmllbmRseU5hbWU9IkZ1bGwgbmFtZSI+PEF0dHJpYnV0ZVZhbHVlPkRhbmllbCBXYWNodGVsPC9BdHRyaWJ1dGVWYWx1ZT48L0F0dH
      JpYnV0ZT48QXR0cmlidXRlIE5hbWU9ImZpcnN0X25hbWUiIE5hbWVGb3JtYXQ9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphdHRybmFtZ
      S1mb3JtYXQ6YmFzaWMiIEZyaWVuZGx5TmFtZT0iR2l2ZW4gbmFtZSI+PEF0dHJpYnV0ZVZhbHVlPkRhbmllbDwvQXR0cmlidXRlVmFsdWU+PC9B
      dHRyaWJ1dGU+PEF0dHJpYnV0ZSBOYW1lPSJsYXN0X25hbWUiIE5hbWVGb3JtYXQ9InVybjpvYXNpczpuYW1lczp0YzpTQU1MOjIuMDphdHRybmF
      tZS1mb3JtYXQ6YmFzaWMiIEZyaWVuZGx5TmFtZT0iRmFtaWx5IG5hbWUiPjxBdHRyaWJ1dGVWYWx1ZT5XYWNodGVsPC9BdHRyaWJ1dGVWYWx1ZT
      48L0F0dHJpYnV0ZT48QXR0cmlidXRlIE5hbWU9InVpZCIgTmFtZUZvcm1hdD0idXJuOm9hc2lzOm5hbWVzOnRjOlNBTUw6Mi4wOmF0dHJuYW1lL
      WZvcm1hdDpiYXNpYyIgRnJpZW5kbHlOYW1lPSJVbmlxdWUgSUQiPjxBdHRyaWJ1dGVWYWx1ZT5iOGYwOTc1Yy1iODNjLTQ1NDItYjNmNy1mNTE1
      YmUwMTI1NDc8L0F0dHJpYnV0ZVZhbHVlPjwvQXR0cmlidXRlPjxBdHRyaWJ1dGUgTmFtZT0idGVuYW50X2lkIiBOYW1lRm9ybWF0PSJ1cm46b2F
      zaXM6bmFtZXM6dGM6U0FNTDoyLjA6YXR0cm5hbWUtZm9ybWF0OmJhc2ljIiBGcmllbmRseU5hbWU9IlRlbmFudCBJRCI+PEF0dHJpYnV0ZVZhbH
      VlPjZlM2ZiZTAxLTY4NGMtNDJlZi04MTUxLWY0Yjc5YWE3MjQ4NTwvQXR0cmlidXRlVmFsdWU+PC9BdHRyaWJ1dGU+PC9BdHRyaWJ1dGVTdGF0Z
      W1lbnQ+PC9Bc3NlcnRpb24+PC9zYW1scDpSZXNwb25zZT4=
    ).join
  end
end