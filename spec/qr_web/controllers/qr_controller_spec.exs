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

    context "when having code query string" do
      let :response do
        build_conn |> get("/qr?code=foo")
      end

      it "also returns qr code image for input code" do
        expect(html_response(response, 200))
          .to match("<img src=\"https://chart.googleapis.com/chart?chs=150x150&cht=qr&chl=foo\"")
      end
    end
  end
end
