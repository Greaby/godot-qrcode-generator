# QR code generator - Godot Engine 3.4+

<p>
    <a href="https://github.com/Greaby/godot-qrcode-generator/issues">
      <img alt="Issues" src="https://img.shields.io/github/issues/greaby/godot-qrcode-generator?color=D94D4C" />
    </a>
    <a href="https://github.com/Greaby/godot-qrcode-generator/pulls">
      <img alt="Pull requests" src="https://img.shields.io/github/issues-pr/greaby/godot-qrcode-generator?color=ECA539" />
    </a>
</p>


[Version for Godot Engine 4.1+](https://github.com/Greaby/godot-qrcode-generator/)

QR code generator written in GDScript.

A QR code is a type of two-dimensional barcode made up of black square modules arranged in a square with a white background. These dots define the information contained in the code.

This generator creates textures of a QR code from a string.

## How to use

Create a new QR code instance and pass it your text.
The class returns an `ImageTexture` that you can add in an Image

```gdscript
var qr_code: QrCode = QrCode.new()

# choose the level of error correction (LOW, MEDIUM, QUARTILE, HIGH)
qr_code.error_correct_level = QrCode.ErrorCorrectionLevel.LOW

var texture: ImageTexture = qr_code.get_texture("Godot") # Add your text here

var qr_code_image := $Path/To/QrCodeImage
qr_code_image.texture = texture
```

![Godot QR code](icon.png)

## Dependencies

This project require Godot Engine 3.4+

## Licenses

- The source code is available under the MIT license.
