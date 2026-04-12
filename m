Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OF3bFgp922mCCgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 13:07:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F2D3E3796
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 13:07:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DD1910E2A7;
	Sun, 12 Apr 2026 11:07:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PTwrSA/J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78BBC10E2A7;
 Sun, 12 Apr 2026 11:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775992071; x=1807528071;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yPBfJzOfU1RXvgXPj5YJT+oJncGmZ2XLkOCa+I7W128=;
 b=PTwrSA/JQ6QGmvOfHoRJIXNfGsIs5h1wqIQGK4HbU1H2XE0ltAxoGuK2
 xE1pKl8CpANsEw5gwHrFT7RgEiTClbiQaW53IrGXuynaP436L8UhYukKX
 jAGyA0FUyY3n6FwYBm0PlaVmFcY4+A6wlYI9c1UWMZtUddX63T+ybV/FU
 EEF0G3jZRSPk/bu1X7BRNtUIDtGDXJIHUPcT9b+zO8TRQ8/WuvhizF83X
 H72GNtQv/SbPbFLPN4tYCDHhAFGxY5teUIpaYXT7HnpcVazJLILHKIer4
 bg63yKwCEcSHApUe9MIoSrdiQBb9xjos2FLUTGXvUaAK4BFMYHL0kccgi A==;
X-CSE-ConnectionGUID: 9BU3v0MBQZSrkR1TMNqYsQ==
X-CSE-MsgGUID: +wawJpF7SbGmYTVGAexqig==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76115116"
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="76115116"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 04:07:50 -0700
X-CSE-ConnectionGUID: UXuIgjEJQuKElCIGs3dC8Q==
X-CSE-MsgGUID: Gz4nY66iRyyeKiZ9ASfzGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="267507719"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa001.jf.intel.com with ESMTP; 12 Apr 2026 04:07:48 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 jani.nikula@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
Date: Sun, 12 Apr 2026 16:07:02 +0530
Message-Id: <20260412103712.4021213-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260412103712.4021213-1-animesh.manna@intel.com>
References: <20260412103712.4021213-1-animesh.manna@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 09F2D3E3796
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Timing registers are separate for CMTG, read transcoder register
and program cmtg transcoder with those values.

v2:
- Use sw state instead of reading directly from hardware. [Jani]
- Move set_timing later after encoder enable. [Dibin]

v3:
- Replace id with trans. [Jani]
- Program cmtg set_timing() along with primary transcoder timing.

v4:
- Use _MMIO_TRANS() for cmtg registers instead of direct
multiplication. [Jani]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 61 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  3 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    | 31 ++++++++++
 drivers/gpu/drm/i915/display/intel_display.c  |  4 ++
 4 files changed, 98 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 403f9e10a8dc..a3db1368bd83 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -4,7 +4,6 @@
  */
 
 #include <linux/string_choices.h>
-#include <linux/types.h>
 
 #include <drm/drm_device.h>
 #include <drm/drm_print.h>
@@ -222,3 +221,63 @@ void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)
 	if (clk_sel_set)
 		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
 }
+
+void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
+
+	if (!intel_cmtg_is_allowed(crtc_state))
+		return;
+
+	crtc_vdisplay = adjusted_mode->crtc_vdisplay;
+
+	/*
+	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
+	 * bits are not required. Since the support for these bits is going to
+	 * be deprecated in upcoming platforms, avoid writing these bits for the
+	 * platforms that do not use legacy Timing Generator.
+	 */
+	crtc_vtotal = 1;
+
+	/*
+	 * VBLANK_START not used by hw, just clear it
+	 * to make it stand out in register dumps.
+	 */
+	crtc_vblank_start = 1;
+
+	crtc_vblank_end = adjusted_mode->crtc_vblank_end;
+
+	if (lrr) {
+		intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder),
+			       VACTIVE(crtc_vdisplay - 1) |
+			       VTOTAL(crtc_vtotal - 1));
+		intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder),
+			       VBLANK_START(crtc_vblank_start - 1) |
+			       VBLANK_END(crtc_vblank_end - 1));
+		return;
+	}
+
+	intel_de_write(display, TRANS_HTOTAL_CMTG(cpu_transcoder),
+		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
+		       HTOTAL(adjusted_mode->crtc_htotal - 1));
+	intel_de_write(display, TRANS_HBLANK_CMTG(cpu_transcoder),
+		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
+		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
+	intel_de_write(display, TRANS_HSYNC_CMTG(cpu_transcoder),
+		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
+		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
+	intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder),
+		       VACTIVE(crtc_vdisplay - 1) |
+		       VTOTAL(crtc_vtotal - 1));
+	intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder),
+		       VBLANK_START(crtc_vblank_start - 1) |
+		       VBLANK_END(crtc_vblank_end - 1));
+	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder),
+		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
+		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
+	intel_de_write(display, TRANS_SET_CTX_LATENCY_CMTG(cpu_transcoder),
+		       crtc_state->set_context_latency);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index 660ec513626e..53a44f505dd2 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -6,9 +6,12 @@
 #ifndef __INTEL_CMTG_H__
 #define __INTEL_CMTG_H__
 
+#include <linux/types.h>
+
 struct intel_display;
 struct intel_crtc_state;
 
+void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr);
 void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_sanitize(struct intel_display *display);
 bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 4a80b88d88fd..f7fc812d8ef0 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -20,4 +20,35 @@
 #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
 #define  CMTG_ENABLE			REG_BIT(31)
 
+#define _TRANS_HTOTAL_CMTG_A		0x6F000
+#define _TRANS_HTOTAL_CMTG_B		0x6F100
+#define TRANS_HTOTAL_CMTG(trans)	_MMIO_TRANS((trans), \
+						    _TRANS_HTOTAL_CMTG_A, _TRANS_HTOTAL_CMTG_B)
+#define _TRANS_HBLANK_CMTG_A		0x6F004
+#define _TRANS_HBLANK_CMTG_B		0x6F104
+#define TRANS_HBLANK_CMTG(trans)	_MMIO_TRANS((trans), \
+						    _TRANS_HBLANK_CMTG_A, _TRANS_HBLANK_CMTG_B)
+#define _TRANS_HSYNC_CMTG_A		0x6F008
+#define _TRANS_HSYNC_CMTG_B		0x6F108
+#define TRANS_HSYNC_CMTG(trans)		_MMIO_TRANS((trans), \
+						    _TRANS_HSYNC_CMTG_A, _TRANS_HSYNC_CMTG_B)
+#define _TRANS_VTOTAL_CMTG_A		0x6F00C
+#define _TRANS_VTOTAL_CMTG_B		0x6F10C
+#define TRANS_VTOTAL_CMTG(trans)	_MMIO_TRANS((trans), \
+						    _TRANS_VTOTAL_CMTG_A, _TRANS_VTOTAL_CMTG_B)
+#define _TRANS_VBLANK_CMTG_A		0x6F010
+#define _TRANS_VBLANK_CMTG_B		0x6F110
+#define TRANS_VBLANK_CMTG(trans)	_MMIO_TRANS((trans), \
+						    _TRANS_VBLANK_CMTG_A, _TRANS_VBLANK_CMTG_B)
+#define _TRANS_VSYNC_CMTG_A		0x6F014
+#define _TRANS_VSYNC_CMTG_B		0x6F114
+#define TRANS_VSYNC_CMTG(trans)		_MMIO_TRANS((trans), \
+						    _TRANS_VSYNC_CMTG_A, _TRANS_VSYNC_CMTG_B)
+
+#define _TRANS_SET_CTX_LATENCY_CMTG_A	0x6F07C
+#define _TRANS_SET_CTX_LATENCY_CMTG_B	0x6F17C
+#define TRANS_SET_CTX_LATENCY_CMTG(trans)	_MMIO_TRANS((trans), \
+							    _TRANS_SET_CTX_LATENCY_CMTG_A, \
+							    _TRANS_SET_CTX_LATENCY_CMTG_B)
+
 #endif /* __INTEL_CMTG_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 58a654ca0d20..bf58ae5d3535 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -60,6 +60,7 @@
 #include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
+#include "intel_cmtg.h"
 #include "intel_color.h"
 #include "intel_crt.h"
 #include "intel_crtc.h"
@@ -2753,6 +2754,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		intel_de_write(display, DP_MIN_HBLANK_CTL(cpu_transcoder),
 			       crtc_state->min_hblank);
 	}
+
+	intel_cmtg_set_timings(crtc_state, false);
 }
 
 static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state)
@@ -2814,6 +2817,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
 
+	intel_cmtg_set_timings(crtc_state, true);
 	intel_vrr_set_fixed_rr_timings(crtc_state);
 	intel_vrr_transcoder_enable(crtc_state);
 }
-- 
2.29.0

