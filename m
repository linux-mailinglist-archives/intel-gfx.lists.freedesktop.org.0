Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AC737C77E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 18:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 089416E3C1;
	Wed, 12 May 2021 16:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F33E6E3C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 16:31:43 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 7201A12F9
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 12:31:40 -0400 (EDT)
Received: from imap22 ([10.202.2.72])
 by compute3.internal (MEProxy); Wed, 12 May 2021 12:31:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chasen.name; h=
 mime-version:message-id:date:from:to:subject:content-type; s=
 fm2; bh=kAOa0m3p1LgcYb91oqom3cbmzE2uQkgFMsah9MGNXfM=; b=dayGt5TC
 KwCgWGRfj5FdH5HhxfA/AD4xA9+B3C4VssQ37hK8qYEoQaiXyOahTcuezB/BJfVx
 XiOIejWbQIHo++kpL0O9annB6KwqS7xUUNVuPLXEO08YCcI9MikilVNgIzBclPrd
 18IM5w2MfqLk0xngrrWwoVHPuPMagb9aSe/vN0vTC7YMxnd/Wvs4lW+VKhg5tz3L
 dGwfbtTKwrVU9wge2LLbbmQ1RUpdfNGhY6o8aYWV3xoF/1P+YUefYp4iAx3XlZVZ
 ED/iOot+nZkVk94Kkqql1FrFHli021Td7QpCDh+nFRNNAkaEOE8xxZw8xQPZE6jV
 GcRuY7hqEQp85w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; bh=kAOa0m3p1LgcYb91oqom3cbmzE2uQ
 kgFMsah9MGNXfM=; b=tUO7RWf8JA51yMEY5OBeXZLIXX6pTRTcz1NfXwql2BxQb
 WkRAIhuzGCN9g8WaaU+1Yl2LL5i3PjKBpz5L5s9oYZvx5K/V5zfo+g5QbMf60kVE
 vdrcHQ4naa05TWlAbh5iL8+y2rDXQoVbvRuRY8EytqPq1PXclgwaNoCsBOA0oePD
 /T9PebFdHxQ/4QBBI0nrvFn2Ei7q1bAbZAU25+T1vO2MDjJRrnI35vhrC4PB7hcC
 VP4BM08vOskbLQTK27VI6tgGBllnn9epLzSYC5tSlUgd6OQcF7yvKB/FjIMvgiyN
 gQ+YgYS2uKm8A0HZB6sOMTFw4wq1RGEfPp+JESDpQ==
X-ME-Sender: <xms:6wKcYAXzb0doPzaqmX8hmDDOW20R-OvrnyvkB8HboL3Bz2BNqJOWCw>
 <xme:6wKcYEkTk6Xp9BheVxToOTF2LcUn1Ymy1laD71KlSKFwCgE4AAytK_UWidEys94jo
 PZamcJQcA70W8p_1VY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdehvddgleekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
 erredtnecuhfhrohhmpedftegurghmucevhhgrshgvnhdfuceorggurghmsegthhgrshgv
 nhdrnhgrmhgvqeenucggtffrrghtthgvrhhnpeejieduveeiudduveduteektdfhtdettd
 etgeehffeuheeltdejveelueeghfejhfenucffohhmrghinhepghhithhhuhgsrdgtohhm
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprggurg
 hmsegthhgrshgvnhdrnhgrmhgv
X-ME-Proxy: <xmx:6wKcYEYkn6_v0Plxtm_gXQx8jnKUqrfhd78Hptpd6VVo64Y1SoIj9w>
 <xmx:6wKcYPXBxCpLlVPUNM19N06bhCD0Vvc8BtgRv-adKkH24pcCjmzGwQ>
 <xmx:6wKcYKl3KHwMTYaKBK6h6hIc6zac_xphNTE7wJJJmeemLFAQ8ru8yA>
 <xmx:7AKcYPxwwSJdCa7cxpToQI3aDJuEajrAddtHlkCApT1nfzBxK7QGyQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id A7C2062C0064; Wed, 12 May 2021 12:31:39 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-448-gae190416c7-fm-20210505.004-gae190416
Mime-Version: 1.0
Message-Id: <904b8186-4d49-4292-bc6e-04726c571138@beta.fastmail.com>
Date: Wed, 12 May 2021 12:31:14 -0400
From: "Adam Chasen" <adam@chasen.name>
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] Tracing a "drm_mode_prune_invalid"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hoping I can (help) craft a patch to address what appears to be an issue with overaggressive mode pruning. I am having trouble with rejection of a Dual-DVI compatible mode out of the DisplayPort  specific to i915 in Fedora 33. It seems that drm_mode_validate_pipeline is the wall I hit when digging for why this mode is pruned. Requesting additional troubleshooting guidance.

```
kernel: [drm:drm_mode_debug_printmodeline [drm]] Modeline "2560x1600": 60 268000 2560 2608 2640 2720 1600 1603 1609 1646 0x48 0x9
kernel: [drm:drm_mode_prune_invalid [drm]] Not using 2560x1600 mode: CLOCK_HIGH
```

This is an HP LP3065 Dual-DVI monitor connected via DisplayPort with a BizLink "active" adapter (recommended by HP and DELL for their Dual-DVI monitors).

The adapter appears to be "transparent" to the system (unlike some adapters reporting similar issues). I2C probes and EDIDs all appear to be direct from the monitor. Though, there is a mention of a m2DVIa "branch device" in the `i915_display_info` output.

The pruned mode works with X-Org with manually setting the mode via `xrandr` on Xorg (my current fallback setup): 
`xrandr --newmode "2560x1600R" 268.50 2560 2608 2640 2720 1600 1603 1609 1646 +hsync -vsync`

My setup is a bit different than some older reported "dual mode" issues (i.e. passive adapters), so I do not believe it is the "faulty dual mode detection" (i.e. https://github.com/hansmi/fake-dp-dual-mode). I was thinking it could be related by some "state" of the port detection limiting output to 165MHz clock.

Thanks,
Adam

with `echo 0x6 > /sys/module/drm/parameters/debug`

```
kernel: [drm:drm_add_display_info [drm]] Supported Monitor Refresh rate range is 0 Hz - 0 Hz
kernel: [drm:drm_add_display_info [drm]] non_desktop set to 0
kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECTOR:95:DP-1] DFP max bpc 8, max dotclock 0, TMDS clock 25000-165000
kernel: i915 0000:00:02.0: [drm:intel_dp_set_edid [i915]] [CONNECTOR:95:DP-1] YCbCr 4:2:0 allowed? no, YCbCr 4:4:4->4:2:0 conversion? no
kernel: [drm:drm_dp_get_edid_quirks [drm_kms_helper]] DP sink: EDID mfg 22-f0 prod-ID 90-26 quirks: 0x0000
kernel: [drm:drm_add_display_info [drm]] Supported Monitor Refresh rate range is 0 Hz - 0 Hz
kernel: [drm:drm_add_display_info [drm]] non_desktop set to 0
kernel: [drm:drm_add_edid_modes [drm]] ELD: no CEA Extension found
kernel: [drm:drm_add_display_info [drm]] Supported Monitor Refresh rate range is 0 Hz - 0 Hz
kernel: [drm:drm_add_display_info [drm]] non_desktop set to 0
**kernel: [drm:drm_mode_debug_printmodeline [drm]] Modeline "2560x1600": 60 268000 2560 2608 2640 2720 1600 1603 1609 1646 0x48 0x9**
**kernel: [drm:drm_mode_prune_invalid [drm]] Not using 2560x1600 mode: CLOCK_HIGH**
kernel: [drm:drm_helper_probe_single_connector_modes [drm_kms_helper]] [CONNECTOR:95:DP-1] probed modes :
kernel: [drm:drm_mode_debug_printmodeline [drm]] Modeline "1280x800": 60 71000 1280 1328 1360 1440 800 803 809 823 0x40 0x9
kernel: [drm:drm_helper_probe_single_connector_modes [drm_kms_helper]] [CONNECTOR:106:HDMI-A-1]
```

./edid-decode /sys/devices/pci0000:00/0000:00:02.0/drm/card0/card0-DP-1/edid                                   
```
edid-decode (hex):

00 ff ff ff ff ff ff 00 22 f0 90 26 01 01 01 01
16 14 01 03 80 40 28 78 2a 8f 95 ad 4f 32 b2 25
0f 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
01 01 01 01 01 01 b0 68 00 a0 a0 40 2e 60 30 20
36 00 81 90 21 00 00 1a bc 1b 00 a0 50 20 17 30
30 20 36 00 81 90 21 00 00 1a 00 00 00 fc 00 48
50 20 4c 50 33 30 36 35 0a 20 20 20 00 00 00 ff
00 43 4e 34 30 32 32 30 51 39 43 0a 20 20 00 77

----------------

Block 0, Base EDID:
...
  Detailed Timing Descriptors:
    DTD 1:  2560x1600   59.860 Hz   8:5    98.529 kHz  268.000 MHz (641 mm x 400 mm)
                 Hfront   48 Hsync  32 Hback  80 Hpol P
                 Vfront    3 Vsync   6 Vback  37 Vpol N
    DTD 2:  1280x800    59.910 Hz   8:5    49.306 kHz   71.000 MHz (641 mm x 400 mm)
                 Hfront   48 Hsync  32 Hback  80 Hpol P
                 Vfront    3 Vsync   6 Vback  14 Vpol N
    Display Product Name: 'HP LP3065'
...
```

/sys/kernel/debug/dri/0/i915_display_info
```
CRTC info
---------
[CRTC:51:pipe A]:
	uapi: enable=yes, active=yes, mode="1280x800": 60 71000 1280 1328 1360 1440 800 803 809 823 0x40 0x9
	hw: active=yes, adjusted_mode="1280x800": 60 71000 1280 1328 1360 1440 800 803 809 823 0x40 0x9
	pipe src size=1280x800, dither=no, bpp=24
	num_scalers=2, scaler_users=0 scaler_id=-1, scalers[0]: use=no, mode=0, scalers[1]: use=no, mode=0
	[ENCODER:94:DDI C/PHY C]: connectors:
		[CONNECTOR:95:DP-1]
	[PLANE:31:plane 1A]: type=PRI
		uapi: [FB:133] XR24 little-endian (0x34325258),0x100000000000001,1280x800, visible=visible, src=1280.000000x800.000000+0.000000+0.000000, dst=1280x800+0+0, rotation=0 (0x00000001)
		hw: [FB:133] XR24 little-endian (0x34325258),0x100000000000001,1280x800, visible=yes, src=1280.000000x800.000000+0.000000+0.000000, dst=1280x800+0+0, rotation=0 (0x00000001)
	[PLANE:39:plane 2A]: type=OVL
		uapi: [FB:0] n/a,0x0,0x0, visible=hidden, src=0.000000x0.000000+0.000000+0.000000, dst=0x0+0+0, rotation=0 (0x00000001)
	[PLANE:47:cursor A]: type=CUR
		uapi: [FB:0] n/a,0x0,0x0, visible=hidden, src=0.000000x0.000000+0.000000+0.000000, dst=0x0+0+0, rotation=0 (0x00000001)
	underrun reporting: cpu=yes pch=yes
...
Connector info
--------------
[CONNECTOR:95:DP-1]: status: connected
	physical dimensions: 640x400mm
	subpixel order: Unknown
	CEA rev: 0
	DPCD rev: 11
	audio support: no
	DP branch device present: yes
		Type: DVI
		ID: m2DVIa
		HW: 0.1
		SW: 2.0
	HDCP version: HDCP1.4 
	modes:
		"1280x800": 60 71000 1280 1328 1360 1440 800 803 809 823 0x40 0x9
[CONNECTOR:106:HDMI-A-1]: status: disconnected
...
```
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
