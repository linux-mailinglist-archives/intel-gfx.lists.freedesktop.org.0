Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF410150A81
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 17:07:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 246746E3C6;
	Mon,  3 Feb 2020 16:07:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 23A306E3C6;
 Mon,  3 Feb 2020 16:07:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13345A0096;
 Mon,  3 Feb 2020 16:07:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Mon, 03 Feb 2020 16:07:27 -0000
Message-ID: <158074604704.3017.6777241292903831724@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200203124735.365-1-vandita.kulkarni@intel.com>
In-Reply-To: <20200203124735.365-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_mipi_dsi_cmd_mode_=28rev6=29?=
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

Series: Add support for mipi dsi cmd mode (rev6)
URL   : https://patchwork.freedesktop.org/series/69290/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ea615cb735b1 drm/i915/dsi: Configure transcoder operation for command mode.
385e5a8e53ff drm/i915/dsi: Add vblank calculation for command mode
-:48: WARNING:LONG_LINE: line over 100 characters
#48: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:874:
+		line_time_us = (htotal * (bpp / 8) * byte_clk_period_ns) / (1000 * intel_dsi->lane_count);

total: 0 errors, 1 warnings, 0 checks, 101 lines checked
772ce3c4e0f8 drm/i915/dsi: Add cmd mode flags in display mode private flags
-:30: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#30: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:645:
+#define I915_MODE_FLAG_DSI_USE_TE0 (1<<3)
                                      ^

-:32: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#32: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:647:
+#define I915_MODE_FLAG_DSI_USE_TE1 (1<<4)
                                      ^

-:34: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#34: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:649:
+#define I915_MODE_FLAG_DSI_PERIODIC_CMD_MODE (1<<5)
                                                ^

total: 0 errors, 0 warnings, 3 checks, 16 lines checked
1ef376297866 drm/i915/dsi: Add check for periodic command mode
b941069992a4 drm/i915/dsi: Use private flags to indicate TE in cmd mode
e067d4de5cf6 drm/i915/dsi: Configure TE interrupt for cmd mode
60e2f1c03550 drm/i915/dsi: Add TE handler for dsi cmd mode.
-:50: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val != CMD_MODE_NO_GATE'
#50: FILE: drivers/gpu/drm/i915/i915_irq.c:2269:
+	if ((val != CMD_MODE_NO_GATE) && (val != CMD_MODE_TE_GATE)) {

-:50: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val != CMD_MODE_TE_GATE'
#50: FILE: drivers/gpu/drm/i915/i915_irq.c:2269:
+	if ((val != CMD_MODE_NO_GATE) && (val != CMD_MODE_TE_GATE)) {

total: 0 errors, 0 warnings, 2 checks, 76 lines checked
e78b1c235dfc drm/i915/dsi: Initiate fame request in cmd mode
fbc38b833279 drm/i915/dsi: Clear the DSI IIR

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
