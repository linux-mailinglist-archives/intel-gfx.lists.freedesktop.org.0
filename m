Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FD031176B
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 00:49:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8283C6F404;
	Fri,  5 Feb 2021 23:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6B0A96F404;
 Fri,  5 Feb 2021 23:49:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 63BE2A00E6;
 Fri,  5 Feb 2021 23:49:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 05 Feb 2021 23:49:22 -0000
Message-ID: <161256896237.1863.15863875242012832202@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210205214634.19341-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210205214634.19341-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Clean_up_the_DDI_clock_routing_mess_=28rev3=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Clean up the DDI clock routing mess (rev3)
URL   : https://patchwork.freedesktop.org/series/86544/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fb756117b976 drm/i915: Use intel_ddi_clk_select() for FDI
714543e726a1 drm/i915: Introduce .{enable, disable}_clock() encoder vfuncs
9d4d81c6506a drm/i915: Extract hsw_ddi_{enable, disable}_clock()
ee8eea416db2 drm/i915: Extract skl_ddi_{enable, disable}_clock()
00e920f321c9 drm/i195: Extract cnl_ddi_{enable, disable}_clock()
77273dccc0c5 drm/i915: Convert DG1 over to .{enable, disable}_clock()
2d0451ebdcae drm/i915: Extract icl+ .{enable, disable}_clock() vfuncs
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
   and ICL_DPCLKA_CFGCR0_TC_CLK_OFF part form icl_{map,unmap}_plls_to_ports()

total: 0 errors, 1 warnings, 0 checks, 232 lines checked
37115fc6c61d drm/i915: Use intel_de_rmw() for DDI clock routing
9b04986ef8f2 drm/i915: Sprinkle a few missing locks around shared DDI clock registers
f987335252b3 drm/i915: Sprinkle WARN(!pll) into icl/dg1 .clock_enable()
89983fc4363a drm/i915: Extract _cnl_ddi_{enable, disable}_clock()
ecafbcddb924 drm/i915: Split adl-s/rkl from icl_ddi_combo_{enable, disable}_clock()
47f613addb9d drm/i915: Use .disable_clock() for pll sanitation
649993c52249 drm/i915: Relocate icl_sanitize_encoder_pll_mapping()
418fa1f5fb93 drm/i915: s/dev_priv/i915/ for the remainder of DDI clock routing


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
