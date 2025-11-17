Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3488C63FE9
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 13:09:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DA9310E376;
	Mon, 17 Nov 2025 12:09:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lg9HNDRe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22BF310E36D;
 Mon, 17 Nov 2025 12:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763381389; x=1794917389;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XYmSyQhanyDdeLs7lFkdgKDgaPolbD8w6aRQlWN+q3k=;
 b=lg9HNDReqYRAm5gXs91Kr8f3n7ipUaOcQCMxc3RZMB/tGPq9XZTkn9hy
 VGplWoeznCtOcR0qKMfABnUo/sJo8uL0wX6cxZVPczHkM6kpMS7dM1WW6
 kbJi/y13NXApgPvBYdEam/PTN+jAUAGoN8BPh07ihEanGDT8TEtdsCC0N
 y+3ldW+qIHm5rC7nSjJOQ0GHfw6Y/UthivSb3v/zw4HAqwelqj4Ws1y+X
 ptEUBy3v/Q1JUMeg/LpGizQgbhPZPLGzwG+xP2mr4OC0c1iycMNrELX9J
 K4g3BzGXqgl0lRABIK421uqkTsj/EwfC6KWpIMvouiQaR0ucW56nOrlyL g==;
X-CSE-ConnectionGUID: hEdmsv3BRCeZqrMbWZf6ZA==
X-CSE-MsgGUID: 4Tz06FhuRKKnzgcrmFSrgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="52945780"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="52945780"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 04:09:49 -0800
X-CSE-ConnectionGUID: l52lBMCGSuSYoWDgRlEIZA==
X-CSE-MsgGUID: BFhGNO/8Tl6sr2KRu+ztqg==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 04:09:47 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: [RFC 3/8] drm/i915/cmtg: set timings for cmtg
Date: Mon, 17 Nov 2025 17:12:11 +0530
Message-Id: <20251117114216.1522615-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20251117114216.1522615-1-animesh.manna@intel.com>
References: <20251117114216.1522615-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Timing registers are separate for CMTG, read transcoder register
and program cmtg transcoder with those values.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 31 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    | 13 ++++++++
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +++
 4 files changed, 49 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 4640cafe8dde..5e9aaa50b38f 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -208,3 +208,34 @@ void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)
 	if (clk_sel_set)
 		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
 }
+
+static void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	intel_de_write(display, TRANS_HTOTAL_CMTG(cpu_transcoder),
+		       intel_de_read(display, TRANS_HTOTAL(display, cpu_transcoder)));
+	intel_de_write(display, TRANS_HBLANK_CMTG(cpu_transcoder),
+		       intel_de_read(display, TRANS_HBLANK(display, cpu_transcoder)));
+	intel_de_write(display, TRANS_HSYNC_CMTG(cpu_transcoder),
+		       intel_de_read(display, TRANS_HSYNC(display, cpu_transcoder)));
+	intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder),
+		       intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder)));
+	intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder),
+		       intel_de_read(display, TRANS_VBLANK(display, cpu_transcoder)));
+	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder),
+		       intel_de_read(display, TRANS_VSYNC(display, cpu_transcoder)));
+}
+
+void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
+{
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (cpu_transcoder != TRANSCODER_A && cpu_transcoder != TRANSCODER_B)
+		return;
+
+	/* Program CMTG Transcoder Timings */
+	intel_cmtg_set_timings(crtc_state);
+
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index bef2426b2787..113042e5d3a8 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -11,5 +11,6 @@ struct intel_crtc_state;
 
 void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_sanitize(struct intel_display *display);
+void intel_cmtg_enable(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_CMTG_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 9fd54f7e9d1f..47403bbcac7d 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -8,6 +8,12 @@
 
 #include "intel_display_reg_defs.h"
 
+enum cmtg {
+	CMTG_A = 0,
+	CMTG_B,
+	MAX_CMTG
+};
+
 #define CMTG_CLK_SEL			_MMIO(0x46160)
 #define CMTG_CLK_SEL_A_MASK		REG_GENMASK(31, 29)
 #define CMTG_CLK_SELECT_PHYA_ENABLE	0x4
@@ -20,4 +26,11 @@
 #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
 #define  CMTG_ENABLE			REG_BIT(31)
 
+#define TRANS_HTOTAL_CMTG(id)		_MMIO(0x6F000 + (id) * 0x100)
+#define TRANS_HBLANK_CMTG(id)		_MMIO(0x6F004 + (id) * 0x100)
+#define TRANS_HSYNC_CMTG(id)		_MMIO(0x6F008 + (id) * 0x100)
+#define TRANS_VTOTAL_CMTG(id)		_MMIO(0x6F00C + (id) * 0x100)
+#define TRANS_VBLANK_CMTG(id)		_MMIO(0x6F010 + (id) * 0x100)
+#define TRANS_VSYNC_CMTG(id)		_MMIO(0x6F014 + (id) * 0x100)
+
 #endif /* __INTEL_CMTG_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 069967114bd9..19242c12f52a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -63,6 +63,7 @@
 #include "intel_casf.h"
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
+#include "intel_cmtg.h"
 #include "intel_color.h"
 #include "intel_crt.h"
 #include "intel_crtc.h"
@@ -1669,6 +1670,9 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (!transcoder_is_dsi(cpu_transcoder))
 		hsw_configure_cpu_transcoder(new_crtc_state);
 
+	if (new_crtc_state->enable_cmtg)
+		intel_cmtg_enable(new_crtc_state);
+
 	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
-- 
2.29.0

