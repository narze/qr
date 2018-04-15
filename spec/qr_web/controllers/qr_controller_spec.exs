defmodule QrWeb.QrControllerSpec do
  use ESpec.Phoenix, controller: QrController

  describe "GET /qr" do
    let :response do
      build_conn |> get("/qr")
    end

    it "returns qr code input form" do
      expect(html_response(response, 200))
        .to match(~r/Code Input/)

      expect(html_response(response, 200))
        .to match(~r/QR Code/)
    end
  end
end
