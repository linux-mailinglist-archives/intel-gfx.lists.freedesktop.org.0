Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2ECFA963EF
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 11:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D490210E29F;
	Tue, 22 Apr 2025 09:18:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TdI5lMP3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30DC810E19D;
 Tue, 22 Apr 2025 09:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745313480; x=1776849480;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f/XU4rUDGCMoscNQC6pPQ7up0S0Cm6tmeMr3FoVnftU=;
 b=TdI5lMP3oMtFIeg86FcQvXYtbC4wp+Y6DKwmPJWlgen3xvCIzLexjxvl
 ZUMKtz4tczrl4IuUwBOFi50OPAzjj//ZP5yCtVluhSL+uVYrm4t1W0sYk
 bzSd9aWvHTpVJ8Xkt+NMWZp6PfSPZKdahfzYLQy2n6fKAzYf99YzfDaz+
 fp2/0Jzpy9zBhxIe5FBAh6WAHWTNB1gfj/HgCh8YhCOelUXWcS2dIut+N
 ZdPEJyxjtOz4OQNrapLxx9r3mAOBAkpcFur9topjHdotoT7wZ4K5enmyg
 uKyRbNy8jtsGSRBDZl7O2E1so95B3wQPBsBvVHCYbRE6TMaVOyXKSef2t A==;
X-CSE-ConnectionGUID: GXRfVfoaRIuIFPs7DEjyIA==
X-CSE-MsgGUID: doAZxGjNT5qF9KMfp7OYIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="69357740"
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="69357740"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 02:18:00 -0700
X-CSE-ConnectionGUID: U51dv9JTQxyJy4+tm88c9Q==
X-CSE-MsgGUID: vdyo+0vYTNq0iNRU+0a0fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="136040828"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.85])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 02:17:59 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2] drm/i915/display: Ensure enough lines between delayed
 VBlank and VBlank
Date: Tue, 22 Apr 2025 12:17:46 +0300
Message-ID: <20250422091746.529878-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

To deterministically capture the transition of the state machine going from
SRDOFFACK to IDLE, the delayed V. Blank should be at least one line after
the non-delayed V. Blank.

Ensure this by following instructions from Bspec.

v2: apply limits only when needed (VRR TG vs. Legacy TG)

Bspec: 69897
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 23 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vrr.c     | 22 +++++++++++++++++--
 2 files changed, 41 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 33c09999c42e0..eed34d634b104 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2631,6 +2631,23 @@ transcoder_has_vrr(const struct intel_crtc_state *crtc_state)
 	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
 }
 
+static u32 min_context_latency(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	/*
+	 * Comment on SRD_STATUS register in Bspec:
+	 *
+	 * To deterministically capture the transition of the state machine
+	 * going from SRDOFFACK to IDLE, the delayed V. Blank should be at least
+	 * one line after the non-delayed V. Blank.
+	 *
+	 * Legacy TG: TRANS_SET_CONTEXT_LATENCY > 0
+	 */
+	return intel_vrr_always_use_vrr_tg(display) ||
+		crtc_state->vrr.enable ? 0 : 1;
+}
+
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -2671,7 +2688,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	if (DISPLAY_VER(display) >= 13) {
 		intel_de_write(display,
 			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
-			       crtc_vblank_start - crtc_vdisplay);
+			       max(crtc_vblank_start - crtc_vdisplay,
+				   min_context_latency(crtc_state)));
 
 		/*
 		 * VBLANK_START not used by hw, just clear it
@@ -2748,7 +2766,8 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	if (DISPLAY_VER(display) >= 13) {
 		intel_de_write(display,
 			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
-			       crtc_vblank_start - crtc_vdisplay);
+			       max(crtc_vblank_start - crtc_vdisplay,
+				   min_context_latency(crtc_state)));
 
 		/*
 		 * VBLANK_START not used by hw, just clear it
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c6565baf815a1..10446f4a74d08 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -422,8 +422,26 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 		return;
 
 	if (DISPLAY_VER(display) >= 13) {
-		crtc_state->vrr.guardband =
-			crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
+		/*
+		 * Comment on SRD_STATUS register in Bspec:
+		 *
+		 * To deterministically capture the transition of the state
+		 * machine going from SRDOFFACK to IDLE, the delayed V. Blank
+		 * should be at least one line after the non-delayed V. Blank.
+		 * This can be done by ensuring the VRR Guardband programming is
+		 * less than the non-delayed V. Blank.
+		 *
+		 * TRANS_VRR_CTL[ VRR Guardband ] < (TRANS_VRR_VMAX[ VRR Vmax ]
+		 * - TRANS_VTOTAL[ Vertical Active ])
+		 */
+		if (intel_vrr_always_use_vrr_tg(display) || crtc_state->vrr.enable)
+			crtc_state->vrr.guardband = min(crtc_state->vrr.vmin -
+							adjusted_mode->crtc_vblank_start,
+							crtc_state->vrr.vmax -
+							adjusted_mode->vdisplay - 1);
+		else
+			crtc_state->vrr.guardband = crtc_state->vrr.vmin -
+				adjusted_mode->crtc_vblank_start;
 	} else {
 		/* hardware imposes one extra scanline somewhere */
 		crtc_state->vrr.pipeline_full =
-- 
2.43.0

