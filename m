Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9734529293A
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 16:25:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A8D96E9A5;
	Mon, 19 Oct 2020 14:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE3946E9A5
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 14:25:03 +0000 (UTC)
IronPort-SDR: DOGecoFqyuXamH1EFAmbHxZ+VT1zXgsW5oXFYexRV7YpNy720U9WDF+VEKIlBjbd6sFp2PKk8G
 1abAMFHf6QYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9778"; a="154826452"
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="154826452"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 07:25:03 -0700
IronPort-SDR: ClLyerXjs50GvjxYDHphOXlHweLzktNRO+Emlf2yJwHD690jqMJNIKnOvFoD0Ics9l+BZlMdfr
 eCSOJuvCW2Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="422195140"
Received: from kuha.fi.intel.com ([10.237.72.162])
 by fmsmga001.fm.intel.com with SMTP; 19 Oct 2020 07:25:00 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Mon, 19 Oct 2020 17:24:59 +0300
Date: Mon, 19 Oct 2020 17:24:59 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Andrzej Kre <andrzej.kre@gmail.com>
Message-ID: <20201019142459.GM1667571@kuha.fi.intel.com>
References: <CA+Gspvj6MpJsjFWQnhrVf971EpBoSvUk1DCyPr62N9nJUMOFcw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+Gspvj6MpJsjFWQnhrVf971EpBoSvUk1DCyPr62N9nJUMOFcw@mail.gmail.com>
Subject: Re: [Intel-gfx] USB-C DP mode problem on linux
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Sat, Oct 17, 2020 at 01:34:54PM +0200, Andrzej Kre wrote:
> Hi,
> 
> I know that You were involved in working on USB-C DP drivers.
> You are my last chance to resolve my issue.
> 
> On my HP laptop I have Intel UHD Graphics 620.
> When I'm connecting my 4K monitor to Display Port. It is assigning to
> DP-2-2 socket and  I have full 3840x2160 with 60.00Hz
> But, when I'm connecting the same monitor to the USB-C port, then it is
> connecting to the DP-1 socket and the maximum that it can achieve is
> 3840x2160 with only 30.00Hz.
> But I'm making some trick: I'm connecting the same monitor through HDMI, so
> it is connecting to DP-1 socket, and simultaneously I'm connecting USB-C,
> and now USB-C is connecting to DP-2-2 socket (because DP-1 is occupied by
> HDMI) and I can have full 4K with 60Hz.
> Please, help me, how to force USB-C to connect always to DP-2-2 socket?
> Or do You know maybe where is the problem?

Unfortunately we have no control over the mux in the operating system
on Skylakes, at least in USB subsystem. It all happens in firmware.
Maybe graphics side can do something.

Adding Jani, Imre, Ville and the Intel GFX list.

> Thank You in advance
> Andy
> 
> Here is some logs:
> 
> Display Port:
> 
> andy@andy-HP:~$ xrandr --current
> Screen 0: minimum 320 x 200, current 5760 x 2160, maximum 16384 x 16384
> eDP-1 connected primary 1920x1080+0+0 (normal left inverted right x axis y
> axis) 293mm x 165mm
>    1920x1080     60.05*+  60.01    59.97    59.96    59.93    40.03
>    1680x1050     59.95    59.88
>    1600x1024     60.17
>    1400x1050     59.98
>    1600x900      59.99    59.94    59.95    59.82
>    1280x1024     60.02
>    1440x900      59.89
>    1400x900      59.96    59.88
>    1280x960      60.00
>    1440x810      60.00    59.97
>    1368x768      59.88    59.85
>    1360x768      59.80    59.96
>    1280x800      59.99    59.97    59.81    59.91
>    1152x864      60.00
>    1280x720      60.00    59.99    59.86    59.74
>    1024x768      60.04    60.00
>    960x720       60.00
>    928x696       60.05
>    896x672       60.01
>    1024x576      59.95    59.96    59.90    59.82
>    960x600       59.93    60.00
>    960x540       59.96    59.99    59.63    59.82
>    800x600       60.00    60.32    56.25
>    840x525       60.01    59.88
>    864x486       59.92    59.57
>    800x512       60.17
>    700x525       59.98
>    800x450       59.95    59.82
>    640x512       60.02
>    720x450       59.89
>    700x450       59.96    59.88
>    640x480       60.00    59.94
>    720x405       59.51    58.99
>    684x384       59.88    59.85
>    680x384       59.80    59.96
>    640x400       59.88    59.98
>    576x432       60.06
>    640x360       59.86    59.83    59.84    59.32
>    512x384       60.00
>    512x288       60.00    59.92
>    480x270       59.63    59.82
>    400x300       60.32    56.34
>    432x243       59.92    59.57
>    320x240       60.05
>    360x202       59.51    59.13
>    320x180       59.84    59.32
> DP-1 disconnected (normal left inverted right x axis y axis)
> HDMI-1 disconnected (normal left inverted right x axis y axis)
> DP-2 disconnected (normal left inverted right x axis y axis)
> HDMI-2 disconnected (normal left inverted right x axis y axis)
> DP-2-1 disconnected (normal left inverted right x axis y axis)
> DP-2-2 connected 3840x2160+1920+0 (normal left inverted right x axis y
> axis) 600mm x 340mm
>    3840x2160     60.00*+  30.00
>    2560x1440     59.95
>    1920x1080     60.00    59.94
>    1600x900      60.00
>    1280x1024     60.02
>    1280x800      59.81
>    1152x864      59.97
>    1280x720      60.00    59.94
>    1024x768      60.00
>    800x600       60.32
>    720x480       60.00    59.94
>    640x480       60.00    59.94
> DP-2-3 disconnected (normal left inverted right x axis y axis)
> 
> 
> 
> USB-C:
> 
> andy@andy-HP:~$ xrandr --current
> Screen 0: minimum 320 x 200, current 5760 x 2160, maximum 16384 x 16384
> eDP-1 connected primary 1920x1080+0+0 (normal left inverted right x axis y
> axis) 293mm x 165mm
>    1920x1080     60.05*+  60.01    59.97    59.96    59.93    40.03
>    1680x1050     59.95    59.88
>    1600x1024     60.17
>    1400x1050     59.98
>    1600x900      59.99    59.94    59.95    59.82
>    1280x1024     60.02
>    1440x900      59.89
>    1400x900      59.96    59.88
>    1280x960      60.00
>    1440x810      60.00    59.97
>    1368x768      59.88    59.85
>    1360x768      59.80    59.96
>    1280x800      59.99    59.97    59.81    59.91
>    1152x864      60.00
>    1280x720      60.00    59.99    59.86    59.74
>    1024x768      60.04    60.00
>    960x720       60.00
>    928x696       60.05
>    896x672       60.01
>    1024x576      59.95    59.96    59.90    59.82
>    960x600       59.93    60.00
>    960x540       59.96    59.99    59.63    59.82
>    800x600       60.00    60.32    56.25
>    840x525       60.01    59.88
>    864x486       59.92    59.57
>    800x512       60.17
>    700x525       59.98
>    800x450       59.95    59.82
>    640x512       60.02
>    720x450       59.89
>    700x450       59.96    59.88
>    640x480       60.00    59.94
>    720x405       59.51    58.99
>    684x384       59.88    59.85
>    680x384       59.80    59.96
>    640x400       59.88    59.98
>    576x432       60.06
>    640x360       59.86    59.83    59.84    59.32
>    512x384       60.00
>    512x288       60.00    59.92
>    480x270       59.63    59.82
>    400x300       60.32    56.34
>    432x243       59.92    59.57
>    320x240       60.05
>    360x202       59.51    59.13
>    320x180       59.84    59.32
> DP-1 connected 3840x2160+1920+0 (normal left inverted right x axis y axis)
> 600mm x 340mm
>    3840x2160     60.00 +  30.00*
>    2560x1440     59.95
>    1920x1080     60.00    59.94
>    1600x900      60.00
>    1280x1024     60.02
>    1280x800      59.81
>    1152x864      59.97
>    1280x720      60.00    59.94
>    1024x768      60.00
>    800x600       60.32
>    720x480       60.00    59.94
>    640x480       60.00    59.94
> HDMI-1 disconnected (normal left inverted right x axis y axis)
> DP-2 disconnected (normal left inverted right x axis y axis)
> HDMI-2 disconnected (normal left inverted right x axis y axis)
> DP-2-1 disconnected (normal left inverted right x axis y axis)
> DP-2-2 disconnected (normal left inverted right x axis y axis)
> DP-2-3 disconnected (normal left inverted right x axis y axis)
> 
> 
> andy@andy-HP:~$ tail -f /var/log/kern.log
> Oct  9 11:20:23 andy-HP kernel: [136792.380147] cdc_acm 1-5.4:1.1: ttyACM0:
> USB ACM device
> Oct  9 11:23:35 andy-HP kernel: [136984.601264] audit: type=1326
> audit(1602235415.460:381): auid=1000 uid=1000 gid=1000 ses=83 pid=138317
> comm="MainThread" exe="/snap/firefox/432/firefox-bin" sig=0 arch=c000003e
> syscall=203 compat=0 ip=0x7f58e4fc4b9f code=0x50000
> Oct  9 11:23:35 andy-HP kernel: [136984.601267] audit: type=1326
> audit(1602235415.460:382): auid=1000 uid=1000 gid=1000 ses=83 pid=138317
> comm="MainThread" exe="/snap/firefox/432/firefox-bin" sig=0 arch=c000003e
> syscall=203 compat=0 ip=0x7f58e4fc4b9f code=0x50000
> Oct  9 11:23:35 andy-HP kernel: [136984.601285] audit: type=1326
> audit(1602235415.460:383): auid=1000 uid=1000 gid=1000 ses=83 pid=138317
> comm="MainThread" exe="/snap/firefox/432/firefox-bin" sig=0 arch=c000003e
> syscall=203 compat=0 ip=0x7f58e4fc4b9f code=0x50000
> Oct  9 11:23:35 andy-HP kernel: [136984.601349] audit: type=1326
> audit(1602235415.460:384): auid=1000 uid=1000 gid=1000 ses=83 pid=138317
> comm="MainThread" exe="/snap/firefox/432/firefox-bin" sig=0 arch=c000003e
> syscall=203 compat=0 ip=0x7f58e4fc4b9f code=0x50000
> Oct  9 11:23:35 andy-HP kernel: [136985.032014] audit: type=1326
> audit(1602235415.892:385): auid=1000 uid=1000 gid=1000 ses=83 pid=138230
> comm="MainThread" exe="/snap/firefox/432/firefox-bin" sig=0 arch=c000003e
> syscall=314 compat=0 ip=0x7f58e4199959 code=0x50000
> Oct  9 11:26:45 andy-HP kernel: [137174.451768] usb 1-5: USB disconnect,
> device number 125
> Oct  9 11:26:45 andy-HP kernel: [137174.451774] usb 1-5.4: USB disconnect,
> device number 2
> Oct  9 11:26:48 andy-HP kernel: [137177.219971] usb usb3: root hub lost
> power or was reset
> Oct  9 11:26:48 andy-HP kernel: [137177.219976] usb usb4: root hub lost
> power or was reset
> Oct  9 11:27:04 andy-HP kernel: [137193.758770] usb 1-5: new high-speed USB
> device number 4 using xhci_hcd
> Oct  9 11:27:04 andy-HP kernel: [137193.906991] usb 1-5: New USB device
> found, idVendor=0451, idProduct=8142, bcdDevice= 1.00
> Oct  9 11:27:04 andy-HP kernel: [137193.906997] usb 1-5: New USB device
> strings: Mfr=0, Product=0, SerialNumber=1
> Oct  9 11:27:04 andy-HP kernel: [137193.907001] usb 1-5: SerialNumber:
> 63010869ABD1
> Oct  9 11:27:04 andy-HP kernel: [137193.907957] hub 1-5:1.0: USB hub found
> Oct  9 11:27:04 andy-HP kernel: [137193.907994] hub 1-5:1.0: 4 ports
> detected
> Oct  9 11:27:04 andy-HP kernel: [137193.936358] hp_wmi: Unknown event_id -
> 131073 - 0x0
> Oct  9 11:27:05 andy-HP kernel: [137194.194696] usb 1-5.4: new full-speed
> USB device number 6 using xhci_hcd
> Oct  9 11:27:05 andy-HP kernel: [137194.296331] usb 1-5.4: New USB device
> found, idVendor=043e, idProduct=9a39, bcdDevice= 2.03
> Oct  9 11:27:05 andy-HP kernel: [137194.296338] usb 1-5.4: New USB device
> strings: Mfr=1, Product=2, SerialNumber=3
> Oct  9 11:27:05 andy-HP kernel: [137194.296342] usb 1-5.4: Product: USB
> Controls
> Oct  9 11:27:05 andy-HP kernel: [137194.296345] usb 1-5.4: Manufacturer: LG
> Electronics Inc.
> Oct  9 11:27:05 andy-HP kernel: [137194.296348] usb 1-5.4: SerialNumber:
> 002NTTQ2M329
> Oct  9 11:27:05 andy-HP kernel: [137194.310282] hid-generic
> 0003:043E:9A39.006D: hiddev0,hidraw1: USB HID v1.11 Device [LG Electronics
> Inc. USB Controls] on usb-0000:00:14.0-5.4/input0
> Oct  9 11:27:05 andy-HP kernel: [137194.311124] cdc_acm 1-5.4:1.1: ttyACM0:
> USB ACM device
> Oct  9 11:27:15 andy-HP kernel: [137204.858806] usb usb4-port1: Cannot
> enable. Maybe the USB cable is bad?
> Oct  9 11:27:19 andy-HP kernel: [137208.946645] usb usb4-port1: Cannot
> enable. Maybe the USB cable is bad?
> Oct  9 11:27:19 andy-HP kernel: [137208.946739] usb usb4-port1: attempt
> power cycle
> Oct  9 11:27:23 andy-HP kernel: [137212.727192] usb 1-5.4: USB disconnect,
> device number 6
> Oct  9 11:27:26 andy-HP kernel: [137215.846665] usb 1-5: reset high-speed
> USB device number 4 using xhci_hcd
> Oct  9 11:27:28 andy-HP kernel: [137217.322486] usb 1-5.4: new full-speed
> USB device number 7 using xhci_hcd
> Oct  9 11:27:28 andy-HP kernel: [137217.425651] usb 1-5.4: New USB device
> found, idVendor=043e, idProduct=9a39, bcdDevice= 2.03
> Oct  9 11:27:28 andy-HP kernel: [137217.425658] usb 1-5.4: New USB device
> strings: Mfr=1, Product=2, SerialNumber=3
> Oct  9 11:27:28 andy-HP kernel: [137217.425662] usb 1-5.4: Product: USB
> Controls
> Oct  9 11:27:28 andy-HP kernel: [137217.425666] usb 1-5.4: Manufacturer: LG
> Electronics Inc.
> Oct  9 11:27:28 andy-HP kernel: [137217.425669] usb 1-5.4: SerialNumber:
> 002NTTQ2M329
> Oct  9 11:27:28 andy-HP kernel: [137217.442005] hid-generic
> 0003:043E:9A39.006E: hiddev0,hidraw1: USB HID v1.11 Device [LG Electronics
> Inc. USB Controls] on usb-0000:00:14.0-5.4/input0
> Oct  9 11:27:28 andy-HP kernel: [137217.442773] cdc_acm 1-5.4:1.1: ttyACM0:
> USB ACM device
> Oct  9 11:27:31 andy-HP kernel: [137220.859051]
> [drm:intel_dp_link_training_clock_recovery [i915]] *ERROR* failed to enable
> link training
> Oct  9 11:27:45 andy-HP kernel: [137234.394956] usb 1-5: USB disconnect,
> device number 4
> Oct  9 11:27:45 andy-HP kernel: [137234.394963] usb 1-5.4: USB disconnect,
> device number 7
> 
> 
> 
> USB-C, but HDMI was inserted first (and disconnected)
> 
> andy@andy-HP:~$ xrandr --current
> Screen 0: minimum 320 x 200, current 5760 x 2160, maximum 16384 x 16384
> eDP-1 connected primary 1920x1080+0+0 (normal left inverted right x axis y
> axis) 293mm x 165mm
>    1920x1080     60.05*+  60.01    59.97    59.96    59.93    40.03
>    1680x1050     59.95    59.88
>    1600x1024     60.17
>    1400x1050     59.98
>    1600x900      59.99    59.94    59.95    59.82
>    1280x1024     60.02
>    1440x900      59.89
>    1400x900      59.96    59.88
>    1280x960      60.00
>    1440x810      60.00    59.97
>    1368x768      59.88    59.85
>    1360x768      59.80    59.96
>    1280x800      59.99    59.97    59.81    59.91
>    1152x864      60.00
>    1280x720      60.00    59.99    59.86    59.74
>    1024x768      60.04    60.00
>    960x720       60.00
>    928x696       60.05
>    896x672       60.01
>    1024x576      59.95    59.96    59.90    59.82
>    960x600       59.93    60.00
>    960x540       59.96    59.99    59.63    59.82
>    800x600       60.00    60.32    56.25
>    840x525       60.01    59.88
>    864x486       59.92    59.57
>    800x512       60.17
>    700x525       59.98
>    800x450       59.95    59.82
>    640x512       60.02
>    720x450       59.89
>    700x450       59.96    59.88
>    640x480       60.00    59.94
>    720x405       59.51    58.99
>    684x384       59.88    59.85
>    680x384       59.80    59.96
>    640x400       59.88    59.98
>    576x432       60.06
>    640x360       59.86    59.83    59.84    59.32
>    512x384       60.00
>    512x288       60.00    59.92
>    480x270       59.63    59.82
>    400x300       60.32    56.34
>    432x243       59.92    59.57
>    320x240       60.05
>    360x202       59.51    59.13
>    320x180       59.84    59.32
> DP-1 disconnected (normal left inverted right x axis y axis)
> HDMI-1 disconnected (normal left inverted right x axis y axis)
> DP-2 connected 3840x2160+1920+0 (normal left inverted right x axis y axis)
> 600mm x 340mm
>    3840x2160     60.00 +  30.00*
>    2560x1440     59.95
>    1920x1080     60.00    59.94
>    1600x900      60.00
>    1280x1024     60.02
>    1280x800      59.81
>    1152x864      59.97
>    1280x720      60.00    59.94
>    1024x768      60.00
>    800x600       60.32
>    720x480       60.00    59.94
>    640x480       60.00    59.94
> HDMI-2 disconnected (normal left inverted right x axis y axis)
> DP-2-1 disconnected (normal left inverted right x axis y axis)
> DP-2-2 disconnected (normal left inverted right x axis y axis)
> DP-2-3 disconnected (normal left inverted right x axis y axis)
> andy@andy-HP:~$
> 
> 
> 
> andy@andy-HP:~$ tail -f /var/log/kern.log
> Oct  9 11:27:28 andy-HP kernel: [137217.425662] usb 1-5.4: Product: USB
> Controls
> Oct  9 11:27:28 andy-HP kernel: [137217.425666] usb 1-5.4: Manufacturer: LG
> Electronics Inc.
> Oct  9 11:27:28 andy-HP kernel: [137217.425669] usb 1-5.4: SerialNumber:
> 002NTTQ2M329
> Oct  9 11:27:28 andy-HP kernel: [137217.442005] hid-generic
> 0003:043E:9A39.006E: hiddev0,hidraw1: USB HID v1.11 Device [LG Electronics
> Inc. USB Controls] on usb-0000:00:14.0-5.4/input0
> Oct  9 11:27:28 andy-HP kernel: [137217.442773] cdc_acm 1-5.4:1.1: ttyACM0:
> USB ACM device
> Oct  9 11:27:31 andy-HP kernel: [137220.859051]
> [drm:intel_dp_link_training_clock_recovery [i915]] *ERROR* failed to enable
> link training
> Oct  9 11:27:45 andy-HP kernel: [137234.394956] usb 1-5: USB disconnect,
> device number 4
> Oct  9 11:27:45 andy-HP kernel: [137234.394963] usb 1-5.4: USB disconnect,
> device number 7
> Oct  9 11:29:42 andy-HP kernel: [137351.300016] usb usb3: root hub lost
> power or was reset
> Oct  9 11:29:42 andy-HP kernel: [137351.300019] usb usb4: root hub lost
> power or was reset
> Oct  9 11:29:51 andy-HP kernel: [137360.917002] hp_wmi: Unknown event_id -
> 131073 - 0x0
> Oct  9 11:29:52 andy-HP kernel: [137361.223734] usb 1-5: new high-speed USB
> device number 8 using xhci_hcd
> Oct  9 11:29:52 andy-HP kernel: [137361.371718] usb 1-5: New USB device
> found, idVendor=0451, idProduct=8142, bcdDevice= 1.00
> Oct  9 11:29:52 andy-HP kernel: [137361.371724] usb 1-5: New USB device
> strings: Mfr=0, Product=0, SerialNumber=1
> Oct  9 11:29:52 andy-HP kernel: [137361.371728] usb 1-5: SerialNumber:
> 63010869ABD1
> Oct  9 11:29:52 andy-HP kernel: [137361.372760] hub 1-5:1.0: USB hub found
> Oct  9 11:29:52 andy-HP kernel: [137361.372806] hub 1-5:1.0: 4 ports
> detected
> Oct  9 11:29:52 andy-HP kernel: [137361.663301] usb 1-5.4: new full-speed
> USB device number 9 using xhci_hcd
> Oct  9 11:29:52 andy-HP kernel: [137361.764883] usb 1-5.4: New USB device
> found, idVendor=043e, idProduct=9a39, bcdDevice= 2.03
> Oct  9 11:29:52 andy-HP kernel: [137361.764887] usb 1-5.4: New USB device
> strings: Mfr=1, Product=2, SerialNumber=3
> Oct  9 11:29:52 andy-HP kernel: [137361.764890] usb 1-5.4: Product: USB
> Controls
> Oct  9 11:29:52 andy-HP kernel: [137361.764892] usb 1-5.4: Manufacturer: LG
> Electronics Inc.
> Oct  9 11:29:52 andy-HP kernel: [137361.764894] usb 1-5.4: SerialNumber:
> 002NTTQ2M329
> Oct  9 11:29:52 andy-HP kernel: [137361.777974] hid-generic
> 0003:043E:9A39.006F: hiddev0,hidraw1: USB HID v1.11 Device [LG Electronics
> Inc. USB Controls] on usb-0000:00:14.0-5.4/input0
> Oct  9 11:29:52 andy-HP kernel: [137361.778522] cdc_acm 1-5.4:1.1: ttyACM0:
> USB ACM device
> 
> andy@andy-HP:~$ lspci -tv
> -[0000:00]-+-00.0  Intel Corporation Xeon E3-1200 v6/7th Gen Core Processor
> Host Bridge/DRAM Registers
>            +-02.0  Intel Corporation UHD Graphics 620
>            +-04.0  Intel Corporation Xeon E3-1200 v5/E3-1500 v5/6th Gen
> Core Processor Thermal Subsystem
>            +-14.0  Intel Corporation Sunrise Point-LP USB 3.0 xHCI
> Controller
>            +-14.2  Intel Corporation Sunrise Point-LP Thermal subsystem
>            +-15.0  Intel Corporation Sunrise Point-LP Serial IO I2C
> Controller #0
>            +-15.1  Intel Corporation Sunrise Point-LP Serial IO I2C
> Controller #1
>            +-16.0  Intel Corporation Sunrise Point-LP CSME HECI #1
>            +-16.3  Intel Corporation Sunrise Point-LP Active Management
> Technology - SOL
>            +-1c.0-[01]----00.0  Intel Corporation Wireless 8265 / 8275
>            +-1c.4-[02-3a]----00.0-[03-3a]--+-00.0-[04]----00.0  Intel
> Corporation JHL6340 Thunderbolt 3 NHI (C step) [Alpine Ridge 2C 2016]
>            |                               +-01.0-[05-39]--
>            |                               \-02.0-[3a]----00.0  Intel
> Corporation JHL6340 Thunderbolt 3 USB 3.1 Controller (C step) [Alpine Ridge
> 2C 2016]
>            +-1c.6-[3b]----00.0  Intel Corporation XMM7360 LTE Advanced Modem
>            +-1d.0-[3c]----00.0  Toshiba Corporation Device 0116
>            +-1f.0  Intel Corporation Sunrise Point LPC Controller/eSPI
> Controller
>            +-1f.2  Intel Corporation Sunrise Point-LP PMC
>            +-1f.3  Intel Corporation Sunrise Point-LP HD Audio
>            +-1f.4  Intel Corporation Sunrise Point-LP SMBus
>            \-1f.6  Intel Corporation Ethernet Connection (4) I219-LM

thanks,

-- 
heikki
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
