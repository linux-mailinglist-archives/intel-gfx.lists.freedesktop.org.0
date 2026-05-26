Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gK8YJrGpFWqJXAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 16:09:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6395D71E1
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 16:09:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCDA410E510;
	Tue, 26 May 2026 14:09:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eUoRsryX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B72F10E4B8;
 Tue, 26 May 2026 14:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779804589; x=1811340589;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hipGnKiFqUmUkUHIRWA9/rZ3sNGLNKtocCLe/8+aQZ8=;
 b=eUoRsryXum+xuaiwQjj+dLekse1IobF5HGbc2Omp+PWSTPwYIzEH3arn
 AesZ3Ms7yl1VHH4pFh4XPO9WRKRpKQwVh1TULpSyXcpCMkHpNA4uVnyjY
 Ef5zw1bdt3+7ZQ21Z/oktVaegS1O1HDjdmOI61CZvZmeIWiRPzAwvZdyb
 Fr/jAhwOa52QJEgYNEX9PWXSloB3w3nQIDJ5UPTxRZ+fapmoNEpy6gYWG
 TbHVtw6ZrgKkQGOwpAnbwxbKkqiuzsmt52lpznbCpRpugDfWVCE+YkpDd
 vdqf1kO1CaYLfIFpiRiZocuNUnriVO7VCAHBmeffY8D+HNNZZA/b8IS2E w==;
X-CSE-ConnectionGUID: aokWtDhhR+WJObkMZUNIaQ==
X-CSE-MsgGUID: wCkewjwNTvmvuMZAGi0rQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="98041731"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="98041731"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 07:09:45 -0700
X-CSE-ConnectionGUID: YL7b1wRkTBauAioNL5gbGQ==
X-CSE-MsgGUID: 1pEyBtRmTba+RVK1zTxpRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="235578140"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 26 May 2026 07:09:42 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 04/15] drm/i915/cmtg: Set timings for CMTG
Date: Tue, 26 May 2026 19:08:00 +0530
Message-Id: <20260526133811.2621675-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260526133811.2621675-1-animesh.manna@intel.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 4C6395D71E1
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

v5:
- Modify register definition approach and match existing
transcoder definition. [Ville]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c    | 74 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h    |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  4 ++
 3 files changed, 79 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index fbc8a4f2b9cb..0e730afbb4ab 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -219,3 +219,77 @@ void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state)
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
+		intel_de_write(display, TRANS_SET_CONTEXT_LATENCY(display, cmtg_transcoder),
+			       crtc_state->set_context_latency);
+		intel_de_write(display, TRANS_VBLANK(display, cmtg_transcoder),
+			       VBLANK_START(crtc_vblank_start - 1) |
+			       VBLANK_END(crtc_vblank_end - 1));
+		intel_de_write(display, TRANS_VTOTAL(display, cmtg_transcoder),
+			       VACTIVE(crtc_vdisplay - 1) |
+			       VTOTAL(crtc_vtotal - 1));
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
index 6c8935f69db1..f8bcd1fcddca 100644
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

