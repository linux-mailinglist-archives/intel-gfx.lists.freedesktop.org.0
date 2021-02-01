Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E2530B079
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 20:41:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 701F56E43F;
	Mon,  1 Feb 2021 19:41:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B21316E43F;
 Mon,  1 Feb 2021 19:41:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AC9D7A9A42;
 Mon,  1 Feb 2021 19:41:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 01 Feb 2021 19:41:34 -0000
Message-ID: <161220849467.18681.10881192761001577409@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Clean_up_the_DDI_clock_routing_mess?=
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

Series: drm/i915: Clean up the DDI clock routing mess
URL   : https://patchwork.freedesktop.org/series/86544/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
83a4bb6e6220 drm/i915: Extract icl_dpclka_cfgcr0_reg()
55c608204619 drm/i915: Extract icl_dpclka_cfgcr0_clk_sel*()
896a544d3328 drm/i915: Introduce .{enable, disable}_clock() encoder vfuncs
732fae08fafa drm/i915: Extract hsw_ddi_{enable, disable}_clock()
e75c39a95d43 drm/i915: Extract skl_ddi_{enable, disable}_clock()
26c2a16ac8ae drm/i195: Extract cnl_ddi_{enable, disable}_clock()
d9f0d9ea2d01 drm/i915: Convert DG1 over to .{enable, disable}_clock()
aa859cf415e0 drm/i915: Extract icl+ .{enable, disable}_clock() vfuncs
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
   and ICL_DPCLKA_CFGCR0_TC_CLK_OFF part form icl_{map,unmap}_plls_to_ports()

total: 0 errors, 1 warnings, 0 checks, 227 lines checked
e9b82425593e drm/i915: Use intel_de_rmw() for DDI clock routing
acdaeff0d22f drm/i915: Sprinkle a few missing locks around shared DDI clock registers
fa3178994587 drm/i915: Sprinkle WARN(!pll) into icl/dg1 .clock_enable()
1f48cc5cbdb8 drm/i915: Extract _cnl_ddi_{enable, disable}_clock()
7c936097f280 drm/i915: Split alds/rkl from icl_ddi_combo_{enable, disable}_clock()
5f0caa42e34a drm/i915: Use .disable_clock() for pll sanitation
a5c9c286cd25 drm/i915: Relocate icl_sanitize_encoder_pll_mapping()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
