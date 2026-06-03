Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zfIVCvCNIGoC5AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 22:26:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AF063B188
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 22:26:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="R/z5vcx/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3525D112346;
	Wed,  3 Jun 2026 20:26:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54D3E112349;
 Wed,  3 Jun 2026 20:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780518381; x=1812054381;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ax0L75yEHP6ycm2QSvjqr3IeCeFEQdDVIVrnnlr2oXk=;
 b=R/z5vcx/gyMRkBbx+YQisK1bm+9dhJPVGzahDwbZGFAQ5vOg8d/lr9W0
 aMrlAOdMgQVZAyR/orEvT6xT01xXggQCaRQSUz/4lssnKpXo1Xm+3p0Dh
 sF5MxR7nWrzI+3SS2fX43jfPfy63FdENyKmeeIyzda580s9kqZMaFoYxk
 b/I3n5h0XyIwQVju8F1LDHR10zlYdcbLwlzALRxols9eHX7tT4YZ21ZZg
 ItpjVNyrnTDipvpepGnLDeXQ9M6kNlmD/FFOMYgWaQLA31XGTO0EzopnO
 S8jQo4ib6jWdEesBR06lBr2G8h1NoJpXuUXwmxD3rA3raF7dN49QUzzmL A==;
X-CSE-ConnectionGUID: wLwjesWwRnO94f1Fi9Ooag==
X-CSE-MsgGUID: n7oIT6zUSBypOldSJPORPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="81337391"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="81337391"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 13:26:21 -0700
X-CSE-ConnectionGUID: gd08m/kmTWKT+A452LecCA==
X-CSE-MsgGUID: MA5Ku+Q9QuaQObmaxXJ3Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="244424779"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa009.jf.intel.com with ESMTP; 03 Jun 2026 13:26:19 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 04/20] drm/i915/display: Pass target transcoder to
 intel_set_transcoder_timings()
Date: Thu,  4 Jun 2026 01:24:00 +0530
Message-Id: <20260603195416.91639-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260603195416.91639-1-animesh.manna@intel.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A6AF063B188

Let intel_set_transcoder_timings() take the target transcoder as an
explicit argument instead of always using crtc_state->cpu_transcoder.
This makes the helper reusable for callers that need to program timings
for a transcoder other than the CRTC's CPU transcoder.

Update all existing callers to pass crtc_state->cpu_transcoder so there
is no functional change.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 35 ++++++++++----------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8e269b71f18e..9031264a34fc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -132,7 +132,8 @@
 #include "vlv_dsi_pll.h"
 #include "vlv_dsi_regs.h"
 
-static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
+static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state,
+					 enum transcoder transcoder);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
 static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
 static void bdw_set_pipe_misc(struct intel_dsb *dsb,
@@ -1504,7 +1505,7 @@ static void ilk_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 					       &crtc_state->dp_m2_n2);
 	}
 
-	intel_set_transcoder_timings(crtc_state);
+	intel_set_transcoder_timings(crtc_state, crtc_state->cpu_transcoder);
 
 	ilk_set_pipeconf(crtc_state);
 }
@@ -1635,7 +1636,7 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 					       &crtc_state->dp_m2_n2);
 	}
 
-	intel_set_transcoder_timings(crtc_state);
+	intel_set_transcoder_timings(crtc_state, crtc_state->cpu_transcoder);
 
 	if (cpu_transcoder != TRANSCODER_EDP)
 		intel_de_write(display, TRANS_MULT(display, cpu_transcoder),
@@ -2048,7 +2049,7 @@ static void i9xx_configure_cpu_transcoder(const struct intel_crtc_state *crtc_st
 					       &crtc_state->dp_m2_n2);
 	}
 
-	intel_set_transcoder_timings(crtc_state);
+	intel_set_transcoder_timings(crtc_state, crtc_state->cpu_transcoder);
 
 	i9xx_set_pipeconf(crtc_state);
 }
@@ -2664,17 +2665,17 @@ transcoder_has_vrr(const struct intel_crtc_state *crtc_state)
 	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
 }
 
-static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
+static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state,
+					 enum transcoder transcoder)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
 	int vsyncshift = 0;
 
-	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
+	drm_WARN_ON(display->drm, transcoder_is_dsi(transcoder));
 
 	/* We need to be careful not to changed the adjusted mode, for otherwise
 	 * the hw state checker will get angry at the mismatch. */
@@ -2703,7 +2704,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	 */
 	if (DISPLAY_VER(display) >= 13) {
 		intel_de_write(display,
-			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
+			       TRANS_SET_CONTEXT_LATENCY(display, transcoder),
 			       crtc_state->set_context_latency);
 
 		/*
@@ -2718,16 +2719,16 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 
 	if (DISPLAY_VER(display) >= 4 && DISPLAY_VER(display) < 35)
 		intel_de_write(display,
-			       TRANS_VSYNCSHIFT(display, cpu_transcoder),
+			       TRANS_VSYNCSHIFT(display, transcoder),
 			       vsyncshift);
 
-	intel_de_write(display, TRANS_HTOTAL(display, cpu_transcoder),
+	intel_de_write(display, TRANS_HTOTAL(display, transcoder),
 		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
 		       HTOTAL(adjusted_mode->crtc_htotal - 1));
-	intel_de_write(display, TRANS_HBLANK(display, cpu_transcoder),
+	intel_de_write(display, TRANS_HBLANK(display, transcoder),
 		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
 		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
-	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
+	intel_de_write(display, TRANS_HSYNC(display, transcoder),
 		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
 		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
 
@@ -2740,13 +2741,13 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	if (intel_vrr_always_use_vrr_tg(display))
 		crtc_vtotal = 1;
 
-	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
+	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
-	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
+	intel_de_write(display, TRANS_VBLANK(display, transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
-	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
+	intel_de_write(display, TRANS_VSYNC(display, transcoder),
 		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
 		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
 
@@ -2754,7 +2755,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	 * programmed with the VTOTAL_EDP value. Same for VTOTAL_C. This is
 	 * documented on the DDI_FUNC_CTL register description, EDP Input Select
 	 * bits. */
-	if (display->platform.haswell && cpu_transcoder == TRANSCODER_EDP &&
+	if (display->platform.haswell && transcoder == TRANSCODER_EDP &&
 	    (pipe == PIPE_B || pipe == PIPE_C))
 		intel_de_write(display, TRANS_VTOTAL(display, pipe),
 			       VACTIVE(crtc_vdisplay - 1) |
@@ -2769,7 +2770,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		 * followed by BE which DPRX devices are unable to handle.
 		 * https://groups.vesa.org/wg/DP/document/20494
 		 */
-		intel_de_write(display, DP_MIN_HBLANK_CTL(cpu_transcoder),
+		intel_de_write(display, DP_MIN_HBLANK_CTL(transcoder),
 			       crtc_state->min_hblank);
 	}
 }
-- 
2.29.0

