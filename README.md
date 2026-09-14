# TapDucky

An open-source DuckyScript runner and USB HID keystroke injector for rooted Android devices with Linux USB Gadget (ConfigFS) support.

> [!NOTE]
> **Fork Notice**: This repository is a fork of the original [iodn/tap-ducky](https://github.com/iodn/tap-ducky).
> It includes custom adaptations for devices where `/dev/hidg0` is reserved, remapping the HID keyboard to `/dev/hidg1` and mouse to `/dev/hidg2`, along with automatic node permission handling (`chmod 666`).

## Features

- **USB HID Gadget Profiles**: Emulate USB Keyboard, Mouse, or Composite HID devices without extra hardware.
- **DuckyScript Engine**: Full support for DuckyScript syntax, control flow, functions, and parameters.
- **Payload Management**: Create, edit, and organize injection payloads with live syntax validation.
- **Custom Hardware Mapping**:
  - **Composite**: Keyboard on `/dev/hidg1`, Mouse on `/dev/hidg2`
  - **Single Role**: Keyboard or Mouse on `/dev/hidg1`
  - Automatic `chmod 666 /dev/hidg*` node permission configuration.
- **Automation & Scheduling**: Run payloads on schedule, cold start, or trigger shortcuts.
- **Execution & Diagnostics**: Real-time execution logs, UDC controller state, and test injection controls.

## Requirements

- Rooted Android device (Magisk / KernelSU / APatch).
- Linux kernel with USB Gadget ConfigFS support (`/config/usb_gadget` or `/sys/kernel/config/usb_gadget`).
- Available UDC exposed in `/sys/class/udc`.
- USB data cable connected to the target host.

## Upstream & Credits

- Original upstream project: [iodn/tap-ducky](https://github.com/iodn/tap-ducky)
- Licensed under the [GPL-3.0 License](LICENSE).
