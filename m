Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0BCB81C86
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 22:35:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DE6310E0CF;
	Wed, 17 Sep 2025 20:35:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AyAR6DUO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F3E010E593;
 Wed, 17 Sep 2025 20:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758141303; x=1789677303;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sCFCl6HYMtf3Kii1DLTrOLQeagFpivGIkpU7MlTi97U=;
 b=AyAR6DUOGvLlLdvj+af39vfh0ijM0XTmmM1IJqnlal8mIR32Jh3WJfTO
 C4M4psw2hz5zIbOqmBInBNhzgLRVd31LiETbePGbhpV06E67Vd27YqiMG
 C50PfzFkZPEc9Vy41dcUFO6lW+/AalOqE4g6E1cIm34otmpuPUIGAH7h3
 rfN2tp0kHobQk3+HJ2jcdNsdhF8RFa+GNCTc0umfrkTt+AP58pAEgCAbY
 3uMsf80y50thiY3ihwjgo4yNVTQk06el7bs6A7eVCOVQJbY7aha8uIvJV
 9bbZPuKDnOiRHDPRnhh0RY7c103HO+wjVtGSwc9CxEKrBji2qeDZRacXz g==;
X-CSE-ConnectionGUID: 7ijjJdnjRVCzLzdQoSA8vw==
X-CSE-MsgGUID: bPQRBVw0TJWxmNZHk9mvjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="60570012"
X-IronPort-AV: E=Sophos;i="6.18,273,1751266800"; d="scan'208";a="60570012"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 13:35:03 -0700
X-CSE-ConnectionGUID: 7ZEwr1BZTAKjUkLDznQtAQ==
X-CSE-MsgGUID: beNpe3FdR3KJJPVUtU7VbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,273,1751266800"; d="scan'208";a="174465046"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.83])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 13:35:02 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/5] drm/i915/vrr: Store guardband in crtc state even for
 icl/tgl
Date: Wed, 17 Sep 2025 23:34:44 +0300
Message-ID: <20250917203446.14374-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
References: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

While ICL/TGL VRR hardware doesn't have a register for the guardband
value, our lives will be simpler if we pretend that it does. Start
by computing the guardband the same as on ADL+ and storing it in
the state, and only then we convert it into the corresponding
pipeline_full value that the hardware can consume. During readout we
do the opposite.

I was debating whether to completely remove pipeline_full from the
crtc state, but decided to keep it for now. Mainly because we check
it in vrr_params_changed() and simply checking the guardband instead
isn't 100% equivalent; Theoretically, framestart_delay may have
changed in the opposite direction to pipeline_full, keeping the
derived guardband value unchaged. One solution would be to also check
framestart_delay, but that feels a bit leaky abstraction wise.

Also note that we don't currently handle the maximum limit of 255
scanlines for the pipeline_full in a very nice way. The actual
position of the delayed vblank will move because of that clamping,
and so some of our code may get confused. But fixing this shall
wait a for now.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 36 +++++++++++---------
 2 files changed, 21 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c7d85fd38890..f4124c79bc83 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3891,6 +3891,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	intel_joiner_get_config(pipe_config);
 	intel_dsc_get_config(pipe_config);
 
+	/* intel_vrr_get_config() depends on .framestart_delay */
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder)) {
 		tmp = intel_de_read(display, CHICKEN_TRANS(display, pipe_config->cpu_transcoder));
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5fee85b0bc99..9cdcc2558ead 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -151,13 +151,7 @@ static int intel_vrr_pipeline_full_to_guardband(const struct intel_crtc_state *c
  */
 static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-
-	if (DISPLAY_VER(display) >= 13)
-		return crtc_state->vrr.guardband;
-	else
-		return intel_vrr_pipeline_full_to_guardband(crtc_state,
-							    crtc_state->vrr.pipeline_full);
+	return crtc_state->vrr.guardband;
 }
 
 int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
@@ -431,18 +425,22 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	int guardband;
 
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-	guardband = crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
+	crtc_state->vrr.guardband =
+		crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
+
+	if (DISPLAY_VER(display) < 13) {
+		/* FIXME handle the limit in a proper way */
+		crtc_state->vrr.guardband =
+			min(crtc_state->vrr.guardband,
+			    intel_vrr_pipeline_full_to_guardband(crtc_state, 255));
 
-	if (DISPLAY_VER(display) >= 13) {
-		crtc_state->vrr.guardband = guardband;
-	} else {
 		crtc_state->vrr.pipeline_full =
-			min(255, intel_vrr_guardband_to_pipeline_full(crtc_state, guardband));
+			intel_vrr_guardband_to_pipeline_full(crtc_state,
+							     crtc_state->vrr.guardband);
 
 		/*
 		 * vmin/vmax/flipline also need to be adjusted by
@@ -734,14 +732,20 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 					     TRANS_CMRR_M_HI(display, cpu_transcoder));
 	}
 
-	if (DISPLAY_VER(display) >= 13)
+	if (DISPLAY_VER(display) >= 13) {
 		crtc_state->vrr.guardband =
 			REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, trans_vrr_ctl);
-	else
-		if (trans_vrr_ctl & VRR_CTL_PIPELINE_FULL_OVERRIDE)
+	} else {
+		if (trans_vrr_ctl & VRR_CTL_PIPELINE_FULL_OVERRIDE) {
 			crtc_state->vrr.pipeline_full =
 				REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
 
+			crtc_state->vrr.guardband =
+				intel_vrr_pipeline_full_to_guardband(crtc_state,
+								     crtc_state->vrr.pipeline_full);
+		}
+	}
+
 	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
 		crtc_state->vrr.flipline = intel_de_read(display,
 							 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
-- 
2.49.1

