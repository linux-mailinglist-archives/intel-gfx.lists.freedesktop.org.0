Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEsSFzgzA2qX1gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 16:03:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C308521E64
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 16:03:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C5FF10EB11;
	Tue, 12 May 2026 14:03:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K6AG6jzl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92B2588E45;
 Tue, 12 May 2026 14:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778594612; x=1810130612;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LuOr0oUrJQD86Wg9TMQxOIiy+BrfMDuo2JfPlD96hZw=;
 b=K6AG6jzlYpnEqexcD8rhC8RNiSzniUlXeW6edAl00uVU+wkAwAWnAKxP
 89zry9AVywlZ4T7R6L3GCm1eyXZ9pf/v6KfJ+JzPjTvFmXjj321d6fyuf
 w9LpEHRSbDkyNyrC7HMbX5aEGsdt9d34Cf+ub+nb3gEdz23mI7GXJpEGe
 q526wWPv3A8Hvsk527k7peM8HwHIED1WNihf3EMngRRXGoVYYZTyh49Dq
 eP9+fQ50lSNlQmnFei4XAl0qI3tdhVoSITuf0JhjbxfxManjHiUp21CCx
 8Elyh1PeOGutJncOyGjZmVTeK+T3j5Iq7vPBW15w6EnhidZAcKVxiNxZp w==;
X-CSE-ConnectionGUID: H/j/QQWbRx2VfM7oO7RZjw==
X-CSE-MsgGUID: 7sKyf0vGTECn0ZM+Q/pckw==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="89806341"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="89806341"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 07:03:27 -0700
X-CSE-ConnectionGUID: wPCU1xAzQG+lkt78Hvk7hQ==
X-CSE-MsgGUID: YVbHrKpcRMCfAvRiObk7iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="233311233"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa006.fm.intel.com with ESMTP; 12 May 2026 07:03:24 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v5 04/15] drm/i915/cmtg: Set timings for CMTG
Date: Tue, 12 May 2026 19:01:57 +0530
Message-Id: <20260512133208.1363116-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260512133208.1363116-1-animesh.manna@intel.com>
References: <20260512133208.1363116-1-animesh.manna@intel.com>
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
X-Rspamd-Queue-Id: 0C308521E64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

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

v5:
- Modify register definition approach and match existing
transcoder definition. [Ville]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c    | 72 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h    |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  4 ++
 3 files changed, 77 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 0a2b2bfee1e2..e8a5429c888f 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -220,3 +220,75 @@ void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)
 	if (clk_sel_set)
 		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
 }
+
+static inline enum transcoder to_cmtg_transcoder(enum transcoder cpu_transcoder)
+{
+	switch (cpu_transcoder) {
+	case TRANSCODER_A:
+		return TRANSCODER_CMTG0;
+	case TRANSCODER_B:
+		return TRANSCODER_CMTG1;
+	default:
+		return INVALID_TRANSCODER;
+	}
+}
+
+void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	enum transcoder cmtg_transcoder = to_cmtg_transcoder(crtc_state->cpu_transcoder);
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
+		intel_de_write(display, TRANS_VTOTAL(display, cmtg_transcoder),
+			       VACTIVE(crtc_vdisplay - 1) |
+			       VTOTAL(crtc_vtotal - 1));
+		intel_de_write(display, TRANS_VBLANK(display, cmtg_transcoder),
+			       VBLANK_START(crtc_vblank_start - 1) |
+			       VBLANK_END(crtc_vblank_end - 1));
+		return;
+	}
+
+	intel_de_write(display, TRANS_HTOTAL(display, cmtg_transcoder),
+		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
+		       HTOTAL(adjusted_mode->crtc_htotal - 1));
+	intel_de_write(display, TRANS_HBLANK(display, cmtg_transcoder),
+		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
+		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
+	intel_de_write(display, TRANS_HSYNC(display, cmtg_transcoder),
+		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
+		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
+	intel_de_write(display, TRANS_VTOTAL(display, cmtg_transcoder),
+		       VACTIVE(crtc_vdisplay - 1) |
+		       VTOTAL(crtc_vtotal - 1));
+	intel_de_write(display, TRANS_VBLANK(display, cmtg_transcoder),
+		       VBLANK_START(crtc_vblank_start - 1) |
+		       VBLANK_END(crtc_vblank_end - 1));
+	intel_de_write(display, TRANS_VSYNC(display, cmtg_transcoder),
+		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
+		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
+	intel_de_write(display, TRANS_SET_CONTEXT_LATENCY(display, cmtg_transcoder),
+		       crtc_state->set_context_latency);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index 87092ce6d67b..53a44f505dd2 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -11,6 +11,7 @@
 struct intel_display;
 struct intel_crtc_state;
 
+void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr);
 void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_sanitize(struct intel_display *display);
 bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d5cf1476c7b9..701cb4f9d70d 100644
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

