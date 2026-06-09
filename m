Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mL2eJicBKGo+7AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:03:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1320465FCB5
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:03:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="aa+/GK8v";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F9C310E2D9;
	Tue,  9 Jun 2026 12:03:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06DE010E2D4;
 Tue,  9 Jun 2026 12:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781006626; x=1812542626;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TGmv2RBhk7EOGykXKh5Og2cLJXbrq61acvHXCZFjqIU=;
 b=aa+/GK8vs+IjuPZyAqyx5/vF1N0HmHoVO6yMn3pLNFbdfYHYsFmcUCLR
 4uhxLQg9n4jdW6yCVQa0v1VJt3QEdzfv2XPR3hF4YjZLjIHZjE2YHzutz
 Fy2wMW3+GFHc+oox0aqN/goO3it830p3op68YIy4evVbUEQnru2jtF+yI
 YSUML1zcgzXSbdnfZanpz8q+252kvd1WQ4yup39Cq/Aokw4xICDto+Acr
 pIV69iihGDB0pV4QApt/4iZRyItZaQsz+XwL42I3wvksSLZSLEI0yVEdS
 iMUVHfhvEN8WPmumRc7WgkBdlSeopracRbhhnlOlSH9QiO3xx9BFNc1DR A==;
X-CSE-ConnectionGUID: R5ydwLjMTFeoLkiZbqpd1w==
X-CSE-MsgGUID: SckYjj3fRRmO3g26jwdxWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="99340311"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="99340311"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:03:45 -0700
X-CSE-ConnectionGUID: Ko6s5zQoQj+cZQ8188trXw==
X-CSE-MsgGUID: ntMyiU0cTaSp21ENhL0xmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="244988243"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:03:45 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v3 04/36] drm/i915/display: Pass target transcoder to
 intel_set_transcoder_timings()
Date: Tue,  9 Jun 2026 17:32:18 +0530
Message-ID: <20260609120250.867750-5-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,vesa.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1320465FCB5

From: Animesh Manna <animesh.manna@intel.com>

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
index bdf02b67c1d8..0c454ea0f87f 100644
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
2.43.0

