Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 578682DF829
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Dec 2020 05:08:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CDDB6E452;
	Mon, 21 Dec 2020 04:08:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 633226E452
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Dec 2020 04:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=tJlFuBCxIu8JI9sTjxqxsFQ4nzfUY2KjmwLK83VQXKc=; b=gUbAmlpYBebYaVWjhVlSQdQSdD
 LUEHoDGdkK5UQuEF0I7HUlmMGENi43yjmGEdb8QLGORoVn9QB6p2NVC+9RKDBJ08dpydwg25sDrxk
 oLNASaE3uuNgK/QZPRNe1gTZjcv9a+QIVfYcmMNdZ4YJEN1PoRLKN1JmYVTpE56o2Cn5FbMMVNnzr
 PS2EpJAcx8jpkdWR3Q51rzZuAoMYEqbFpjR4NmYD/JdyyapUZT3pYiREs2EL5cpyofi8SPBEIO9y3
 0Vu0mVW/lWGdwBSyhKOWkT9OPOo6y4wsLJzF330gS8wyiUsNDSnnxE7nrGR/2Z0ibbLeAKU9Vh0m/
 Ddlai6QA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1krCUJ-0001HM-2K
 for intel-gfx@lists.freedesktop.org; Mon, 21 Dec 2020 04:07:59 +0000
Date: Mon, 21 Dec 2020 04:07:58 +0000
From: Matthew Wilcox <willy@infradead.org>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201221040758.GA874@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] Missing DPPLL case on i7-1165G7
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


At boot,

[    2.787995] [drm:lspcon_init [i915]] *ERROR* Failed to probe lspcon
[    2.788001] i915 0000:00:02.0: [drm] *ERROR* LSPCON init failed on port E
[    2.790752] ------------[ cut here ]------------
[    2.790753] Missing case (clock == 539440)
[    2.790790] WARNING: CPU: 0 PID: 159 at drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2967 icl_get_dplls+0x53a/0xa50 [i915]

In drivers/gpu/drm/i915/display/intel_dpll_mgr.c, I see an entry for 540,000.
Presumbly, this clock was supposed to be rounded up to that somewhere.
This is an HP Spectre x360 using the internal display.  Here's the EDID
in case that's useful:

$ edid-decode /sys/class/drm/card0-eDP-1/edid
edid-decode (hex):

00 ff ff ff ff ff ff 00 4c 83 49 41 00 00 00 00 
13 1d 01 04 b5 1d 11 78 02 38 d1 ae 51 3b b8 23 
0b 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01 
01 01 01 01 01 01 b9 d5 00 40 f1 70 20 80 30 20 
88 00 26 a5 10 00 00 1b b9 d5 00 40 f1 70 20 80 
30 20 88 00 26 a5 10 00 00 1b 00 00 00 0f 00 ff 
09 3c ff 09 3c 2c 80 00 00 00 00 00 00 00 00 10 
00 00 01 00 00 00 00 00 00 00 00 00 00 00 01 af 

02 03 0f 00 e3 05 80 00 e6 06 05 01 73 6d 07 00 
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ab 

----------------

EDID version: 1.4
Manufacturer: SDC Model 16713 Serial Number 0
Made in week 19 of 2019
Digital display
10 bits per primary color channel
DisplayPort interface
Maximum image size: 29 cm x 17 cm
Gamma: 2.20
Supported color formats: RGB 4:4:4
First detailed timing includes the native pixel format and preferred refresh rate
Color Characteristics
  Red:   0.6796, 0.3193
  Green: 0.2324, 0.7187
  Blue:  0.1396, 0.0439
  White: 0.3125, 0.3291
Established Timings I & II: none
Standard Timings: none
Detailed mode: Clock 547.130 MHz, 294 mm x 165 mm
               3840 3888 3920 4160 ( 48  32 240)
               2160 2168 2176 2192 (  8   8  16)
               +hsync -vsync
               VertFreq: 60.001 Hz, HorFreq: 131.522 kHz
Detailed mode: Clock 547.130 MHz, 294 mm x 165 mm
               3840 3888 3920 4160 ( 48  32 240)
               2160 2168 2176 2192 (  8   8  16)
               +hsync -vsync
               VertFreq: 60.001 Hz, HorFreq: 131.522 kHz
Manufacturer-Specified Display Descriptor (0x0f): 00 0f 00 ff 09 3c ff 09 3c 2c 80 00 00 00 00 00  .....<..<,......
Dummy Descriptor
Has 1 extension block
Checksum: 0xaf

----------------

CTA-861 Extension Block Revision 3
0 native detailed modes
11 bytes of CTA data blocks
  Extended tag: Colorimetry Data Block
    BT2020RGB
  Extended tag: HDR Static Metadata Data Block
    Electro optical transfer functions:
      Traditional gamma - SDR luminance range
      SMPTE ST2084
    Supported static metadata descriptors:
      Static metadata type 1
    Desired content max luminance: 115 (603.666 cd/m^2)
    Desired content max frame-average luminance: 109 (530.095 cd/m^2)
    Desired content min luminance: 7 (0.005 cd/m^2)
Checksum: 0xab


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
