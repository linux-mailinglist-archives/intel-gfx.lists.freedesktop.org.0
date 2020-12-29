Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 496D42E7176
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 15:41:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0569894DC;
	Tue, 29 Dec 2020 14:41:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 854EC894DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 14:41:36 +0000 (UTC)
IronPort-SDR: UuBP9C35Au1vkwvXDYh6KwQlttO6lSHVX4Fufv8J2ivltSsRoJAzXe6sv4OrUySQHMZ0BUdJZX
 7QsQwLnjuizA==
X-IronPort-AV: E=McAfee;i="6000,8403,9849"; a="156285886"
X-IronPort-AV: E=Sophos;i="5.78,458,1599548400"; d="scan'208";a="156285886"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2020 06:41:35 -0800
IronPort-SDR: YTec/Pn28kUvILDHDwz7m0Voo4T2Yv7lkWl19jMNxIio2nS3eybj0YN7OdBaeDggp7GW2moEz2
 beBUFen57wLA==
X-IronPort-AV: E=Sophos;i="5.78,458,1599548400"; d="scan'208";a="419196295"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2020 06:41:34 -0800
Date: Tue, 29 Dec 2020 16:41:31 +0200
From: Imre Deak <imre.deak@intel.com>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20201229144131.GA4029266@ideak-desk.fi.intel.com>
References: <20201221040758.GA874@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201221040758.GA874@casper.infradead.org>
Subject: Re: [Intel-gfx] Missing DPPLL case on i7-1165G7
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Mon, Dec 21, 2020 at 04:07:58AM +0000, Matthew Wilcox wrote:
> 
> At boot,
> 
> [    2.787995] [drm:lspcon_init [i915]] *ERROR* Failed to probe lspcon
> [    2.788001] i915 0000:00:02.0: [drm] *ERROR* LSPCON init failed on port E
> [    2.790752] ------------[ cut here ]------------
> [    2.790753] Missing case (clock == 539440)
> [    2.790790] WARNING: CPU: 0 PID: 159 at drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2967 icl_get_dplls+0x53a/0xa50 [i915]

the above warn looks to be due to a missing workaround fixed by

commit 0e2497e334de42dbaaee8e325241b5b5b34ede7e
Author: Imre Deak <imre.deak@intel.com>
Date:   Sat Oct 3 03:18:46 2020 +0300

    drm/i915/tgl: Fix Combo PHY DPLL fractional divider for 38.4MHz ref clock

in drm-tip. Could you give it a try?

> In drivers/gpu/drm/i915/display/intel_dpll_mgr.c, I see an entry for 540,000.
> Presumbly, this clock was supposed to be rounded up to that somewhere.
> This is an HP Spectre x360 using the internal display.  Here's the EDID
> in case that's useful:

> 
> $ edid-decode /sys/class/drm/card0-eDP-1/edid
> edid-decode (hex):
> 
> 00 ff ff ff ff ff ff 00 4c 83 49 41 00 00 00 00 
> 13 1d 01 04 b5 1d 11 78 02 38 d1 ae 51 3b b8 23 
> 0b 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01 
> 01 01 01 01 01 01 b9 d5 00 40 f1 70 20 80 30 20 
> 88 00 26 a5 10 00 00 1b b9 d5 00 40 f1 70 20 80 
> 30 20 88 00 26 a5 10 00 00 1b 00 00 00 0f 00 ff 
> 09 3c ff 09 3c 2c 80 00 00 00 00 00 00 00 00 10 
> 00 00 01 00 00 00 00 00 00 00 00 00 00 00 01 af 
> 
> 02 03 0f 00 e3 05 80 00 e6 06 05 01 73 6d 07 00 
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ab 
> 
> ----------------
> 
> EDID version: 1.4
> Manufacturer: SDC Model 16713 Serial Number 0
> Made in week 19 of 2019
> Digital display
> 10 bits per primary color channel
> DisplayPort interface
> Maximum image size: 29 cm x 17 cm
> Gamma: 2.20
> Supported color formats: RGB 4:4:4
> First detailed timing includes the native pixel format and preferred refresh rate
> Color Characteristics
>   Red:   0.6796, 0.3193
>   Green: 0.2324, 0.7187
>   Blue:  0.1396, 0.0439
>   White: 0.3125, 0.3291
> Established Timings I & II: none
> Standard Timings: none
> Detailed mode: Clock 547.130 MHz, 294 mm x 165 mm
>                3840 3888 3920 4160 ( 48  32 240)
>                2160 2168 2176 2192 (  8   8  16)
>                +hsync -vsync
>                VertFreq: 60.001 Hz, HorFreq: 131.522 kHz
> Detailed mode: Clock 547.130 MHz, 294 mm x 165 mm
>                3840 3888 3920 4160 ( 48  32 240)
>                2160 2168 2176 2192 (  8   8  16)
>                +hsync -vsync
>                VertFreq: 60.001 Hz, HorFreq: 131.522 kHz
> Manufacturer-Specified Display Descriptor (0x0f): 00 0f 00 ff 09 3c ff 09 3c 2c 80 00 00 00 00 00  .....<..<,......
> Dummy Descriptor
> Has 1 extension block
> Checksum: 0xaf
> 
> ----------------
> 
> CTA-861 Extension Block Revision 3
> 0 native detailed modes
> 11 bytes of CTA data blocks
>   Extended tag: Colorimetry Data Block
>     BT2020RGB
>   Extended tag: HDR Static Metadata Data Block
>     Electro optical transfer functions:
>       Traditional gamma - SDR luminance range
>       SMPTE ST2084
>     Supported static metadata descriptors:
>       Static metadata type 1
>     Desired content max luminance: 115 (603.666 cd/m^2)
>     Desired content max frame-average luminance: 109 (530.095 cd/m^2)
>     Desired content min luminance: 7 (0.005 cd/m^2)
> Checksum: 0xab
> 
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
