Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 869EB136011
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 19:20:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 042456E942;
	Thu,  9 Jan 2020 18:20:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CA56C6E942;
 Thu,  9 Jan 2020 18:20:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8968A00E9;
 Thu,  9 Jan 2020 18:20:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Thu, 09 Jan 2020 18:20:08 -0000
Message-ID: <157859400872.4564.10558316385113972970@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109110835.29764-1-vandita.kulkarni@intel.com>
In-Reply-To: <20200109110835.29764-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_mipi_dsi_cmd_mode_=28rev5=29?=
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

Series: Add support for mipi dsi cmd mode (rev5)
URL   : https://patchwork.freedesktop.org/series/69290/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9ee67cfb4bda drm/i915/dsi: Configure transcoder operation for command mode.
9d1777f786fa drm/i915/dsi: Add vblank calculation for command mode
-:39: WARNING:LONG_LINE: line over 100 characters
#39: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:837:
+		line_time_us = (cal_htotal * (bpp / 8) * byte_clk_period_ns) / (1000 * intel_dsi->lane_count);

total: 0 errors, 1 warnings, 0 checks, 100 lines checked
0e9b605c70f0 drm/i915/dsi: Add cmd mode flags in display mode private flags
-:30: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#30: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:664:
+#define I915_MODE_FLAG_DSI_USE_TE0 (1<<3)
                                      ^

-:32: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#32: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:666:
+#define I915_MODE_FLAG_DSI_USE_TE1 (1<<4)
                                      ^

-:34: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#34: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:668:
+#define I915_MODE_FLAG_DSI_PERIODIC_CMD_MODE (1<<5)
                                                ^

total: 0 errors, 0 warnings, 3 checks, 16 lines checked
e1487b9829a6 drm/i915/dsi: Add check for periodic command mode
6030ddd5f802 drm/i915/dsi: Use private flags to indicate TE in cmd mode
825cd0f599e9 drm/i915/dsi: Configure TE interrupt for cmd mode
58fc15b1ccc8 drm/i915/dsi: Add TE handler for dsi cmd mode.
-:50: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val != CMD_MODE_NO_GATE'
#50: FILE: drivers/gpu/drm/i915/i915_irq.c:2260:
+	if ((val != CMD_MODE_NO_GATE) && (val != CMD_MODE_TE_GATE)) {

-:50: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val != CMD_MODE_TE_GATE'
#50: FILE: drivers/gpu/drm/i915/i915_irq.c:2260:
+	if ((val != CMD_MODE_NO_GATE) && (val != CMD_MODE_TE_GATE)) {

total: 0 errors, 0 warnings, 2 checks, 76 lines checked
a53fa85f2e20 drm/i915/dsi: Initiate fame request in cmd mode
12bd8cefd44e drm/i915/dsi: Clear the DSI IIR

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
