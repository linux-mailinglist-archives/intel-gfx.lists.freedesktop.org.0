Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCMRO4oCgmmYNgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:13:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AE4DA6BC
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:13:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C04F210E68B;
	Tue,  3 Feb 2026 14:13:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ArYoPxFB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FBED10E688;
 Tue,  3 Feb 2026 14:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770128005; x=1801664005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JLLhZW4qy2VUa1VnAhrg0nkVWTVLckN0SvUjDmqFYH8=;
 b=ArYoPxFB5W6TLYKQJ+Bzp0/oqi+N3IBuEfW+Brthkesp3QZezTSmb76I
 qsq+tmNR8R50SF+DMt+6GD9pqmVtirAoQ5ctyHefKwn1MQmjw7pJYF4Zf
 01GLhM+A9ehdxzGzqiOfINxObS2D+3FbUi6juY8cJ/CjbUkA1BJzXCpFh
 dYugYmYZyvKQTdgu126y9kj6aTShpKKcphqoOhO5eiTjtEOvPfV7P/IFO
 D2BfOHwM//GJFSDbjhL5LuHkcLTbRGG9hLqUu+wQKGFbgHBVnMnWkIEeA
 MyS3Yq7A9ENzPa0eajTWKFJMYPYHCo1WfFaOu1oU4u5tYwFdJFFcTGKGd g==;
X-CSE-ConnectionGUID: GSqRRCErTMOtKJw++FBikw==
X-CSE-MsgGUID: CrDgB7EKS/OiKOPr9kucBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="75156440"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="75156440"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 06:13:24 -0800
X-CSE-ConnectionGUID: l3FdCabwQ76iJUD3hWRi2w==
X-CSE-MsgGUID: ISlcTKEtTk6wrBmsCftLqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="208956298"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa006.jf.intel.com with ESMTP; 03 Feb 2026 06:13:22 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dibin.moolakadan.subrahmanian@intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 03/10] drm/i915/cmtg: set timings for cmtg
Date: Tue,  3 Feb 2026 19:14:00 +0530
Message-Id: <20260203134407.2823406-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260203134407.2823406-1-animesh.manna@intel.com>
References: <20260203134407.2823406-1-animesh.manna@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 85AE4DA6BC
X-Rspamd-Action: no action

Timing registers are separate for CMTG, read transcoder register
and program cmtg transcoder with those values.

v2:
- Use sw state instead of reading directly from hardware. [Jani]
- Move set_timing later after encoder enable. [Dibin]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c     | 24 +++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  7 +++
 drivers/gpu/drm/i915/display/intel_display.c  | 51 ++++++++++++-------
 .../drm/i915/display/intel_display_types.h    |  2 +
 5 files changed, 67 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index f5364f5a848f..4220eeece07f 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -207,3 +207,27 @@ void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)
 	if (clk_sel_set)
 		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
 }
+
+static void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	intel_de_write(display, TRANS_HTOTAL_CMTG(cpu_transcoder), crtc->cmtg.htotal);
+	intel_de_write(display, TRANS_HBLANK_CMTG(cpu_transcoder), crtc->cmtg.hblank);
+	intel_de_write(display, TRANS_HSYNC_CMTG(cpu_transcoder), crtc->cmtg.hsync);
+	intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder), crtc->cmtg.vtotal);
+	intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder), crtc->cmtg.vblank);
+	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder), crtc->cmtg.vsync);
+}
+
+void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
+{
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (cpu_transcoder != TRANSCODER_A && cpu_transcoder != TRANSCODER_B)
+		return;
+
+	intel_cmtg_set_timings(crtc_state);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index bef2426b2787..b2bb60d160fa 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -9,6 +9,7 @@
 struct intel_display;
 struct intel_crtc_state;
 
+void intel_cmtg_enable(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_sanitize(struct intel_display *display);
 
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 8a767b659a23..eb24827d22f5 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -20,4 +20,11 @@
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
index 564d11925af3..976af9eb3c3a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -62,6 +62,7 @@
 #include "intel_casf.h"
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
+#include "intel_cmtg.h"
 #include "intel_color.h"
 #include "intel_crt.h"
 #include "intel_crtc.h"
@@ -1722,6 +1723,9 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 			intel_crtc_wait_for_next_vblank(wa_crtc);
 		}
 	}
+
+	if (crtc->cmtg.enable)
+		intel_cmtg_enable(new_crtc_state);
 }
 
 static void ilk_crtc_disable(struct intel_atomic_state *state,
@@ -2654,6 +2658,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
 	int vsyncshift = 0;
+	u32 trans_htotal_val, trans_hblank_val, trans_hsync_val;
+	u32 trans_vtotal_val, trans_vblank_val, trans_vsync_val;
 
 	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
 
@@ -2702,15 +2708,15 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 			       TRANS_VSYNCSHIFT(display, cpu_transcoder),
 			       vsyncshift);
 
-	intel_de_write(display, TRANS_HTOTAL(display, cpu_transcoder),
-		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
-		       HTOTAL(adjusted_mode->crtc_htotal - 1));
-	intel_de_write(display, TRANS_HBLANK(display, cpu_transcoder),
-		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
-		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
-	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
-		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
-		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
+	trans_htotal_val = HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
+			   HTOTAL(adjusted_mode->crtc_htotal - 1);
+	trans_hblank_val = HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
+			   HBLANK_END(adjusted_mode->crtc_hblank_end - 1);
+	trans_hsync_val = HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
+			  HSYNC_END(adjusted_mode->crtc_hsync_end - 1);
+	intel_de_write(display, TRANS_HTOTAL(display, cpu_transcoder), trans_htotal_val);
+	intel_de_write(display, TRANS_HBLANK(display, cpu_transcoder), trans_hblank_val);
+	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder), trans_hsync_val);
 
 	/*
 	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
@@ -2721,15 +2727,15 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	if (intel_vrr_always_use_vrr_tg(display))
 		crtc_vtotal = 1;
 
-	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
-		       VACTIVE(crtc_vdisplay - 1) |
-		       VTOTAL(crtc_vtotal - 1));
-	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
-		       VBLANK_START(crtc_vblank_start - 1) |
-		       VBLANK_END(crtc_vblank_end - 1));
-	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
-		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
-		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
+	trans_vtotal_val = VACTIVE(crtc_vdisplay - 1) |
+			   VTOTAL(crtc_vtotal - 1);
+	trans_vblank_val = VBLANK_START(crtc_vblank_start - 1) |
+			   VBLANK_END(crtc_vblank_end - 1);
+	trans_vsync_val = VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
+			  VSYNC_END(adjusted_mode->crtc_vsync_end - 1);
+	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder), trans_vtotal_val);
+	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder), trans_vblank_val);
+	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder), trans_vsync_val);
 
 	/* Workaround: when the EDP input selection is B, the VTOTAL_B must be
 	 * programmed with the VTOTAL_EDP value. Same for VTOTAL_C. This is
@@ -2753,6 +2759,15 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		intel_de_write(display, DP_MIN_HBLANK_CTL(cpu_transcoder),
 			       crtc_state->min_hblank);
 	}
+
+	if (crtc->cmtg.enable) {
+		crtc->cmtg.htotal = trans_htotal_val;
+		crtc->cmtg.hblank = trans_hblank_val;
+		crtc->cmtg.hsync = trans_hsync_val;
+		crtc->cmtg.vtotal = trans_vtotal_val;
+		crtc->cmtg.vblank = trans_vblank_val;
+		crtc->cmtg.vsync = trans_vsync_val;
+	}
 }
 
 static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 1081615a14fb..defb54dd0bbe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1572,6 +1572,8 @@ struct intel_crtc {
 
 	struct {
 		bool enable;
+		u32 htotal, hblank, hsync;
+		u32 vtotal, vblank, vsync;
 	} cmtg;
 };
 
-- 
2.29.0

