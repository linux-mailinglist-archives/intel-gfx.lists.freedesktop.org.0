Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 108D0B81C8C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 22:35:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92A3210E596;
	Wed, 17 Sep 2025 20:35:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UUqrWXwr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A402810E595;
 Wed, 17 Sep 2025 20:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758141311; x=1789677311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2qEX72fhDhv49l7yZAvwFOKDkRVQA2JQ7lhhJcBU3vM=;
 b=UUqrWXwr/3R8JkJs4X8x4kvaBObkqJlaFk9v/+LlaYycoapGLmBddq54
 wYF5a+pHmuv3vT51kT7KWePe7aUpNdouHSQCSelQNTCllM6fD8IV3+F+b
 khBhwNHA0YWZj5VMofs6XtDUdDiMoAXLCS6Zqvt5TzKuPNvKV2rM4yVNH
 7SeDS1a6rVKFiUrKSpGMpMABBXVrPbqyLM9ZIBUEZ6Gj977VR3fJVFOM/
 u0aVEHHwQIVgCFlE+Lp+D/97gr3GlFgpTcKkC8AIwFL9trBklROyXfjUL
 jagldkAnKT46hWyTs4T/mM/tbiIz8eCMdn7jDufzSUNF0zWq1dhMAruBw A==;
X-CSE-ConnectionGUID: o68fguAcTq62g7WJ2Sy5vg==
X-CSE-MsgGUID: pOpY4H6pRvizT2EMHot1pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="60570016"
X-IronPort-AV: E=Sophos;i="6.18,273,1751266800"; d="scan'208";a="60570016"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 13:35:11 -0700
X-CSE-ConnectionGUID: yaOVyAZwRgaONKXWv23gPA==
X-CSE-MsgGUID: UtMmT4DGTr++A436eDe4vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,273,1751266800"; d="scan'208";a="174465076"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.83])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 13:35:10 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/5] drm/i915/vrr: Move the TGL SCL manging of
 vmin/vmax/flipline deeper
Date: Wed, 17 Sep 2025 23:34:46 +0300
Message-ID: <20250917203446.14374-6-ville.syrjala@linux.intel.com>
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

Currently our crtc_state->vrr.{vmin.vmax,flipline} are mangled on
TGL to account for the SCL delay (the hardware requires this mangling
or the actual vtotals will become incorrect). Unfortunately this
means that one can't simply use these values directly in many places,
and instead we always have to go through functions that undo the
damage first. This is all rather fragile.

Simplify our lives a bit by hiding this mangling deeper inside
the low level VRR code, leaving the number stored in the crtc
state actually something that humans can use.

This does introduce a dependdency as intel_vrr_get_config()
will now need to know the SCL value, which is read out in
intel_get_transcoder_timings(). I suppose we could simply
duplicate the SCL readout in both places should this become
a real hinderance. For now just leave a note around the
intel_get_transcoder_timings() call to remind us.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  4 ++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 76 +++++++++++---------
 2 files changed, 47 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f4124c79bc83..18b9baa96241 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3901,6 +3901,10 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		pipe_config->framestart_delay = 1;
 	}
 
+	/*
+	 * intel_vrr_get_config() depends on TRANS_SET_CONTEXT_LATENCY
+	 * readout done by intel_get_transcoder_timings().
+	 */
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
 	    DISPLAY_VER(display) >= 11)
 		intel_get_transcoder_timings(crtc, pipe_config);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 71fb64c92165..71a985d00604 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -156,25 +156,13 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
 
 int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-
 	/* Min vblank actually determined by flipline */
-	if (DISPLAY_VER(display) >= 13)
-		return intel_vrr_vmin_flipline(crtc_state);
-	else
-		return intel_vrr_vmin_flipline(crtc_state) +
-			intel_vrr_real_vblank_delay(crtc_state);
+	return intel_vrr_vmin_flipline(crtc_state);
 }
 
 int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-
-	if (DISPLAY_VER(display) >= 13)
-		return crtc_state->vrr.vmax;
-	else
-		return crtc_state->vrr.vmax +
-			intel_vrr_real_vblank_delay(crtc_state);
+	return crtc_state->vrr.vmax;
 }
 
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
@@ -258,6 +246,21 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
+static int intel_vrr_hw_value(const struct intel_crtc_state *crtc_state,
+			      int value)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	/*
+	 * On TGL vmin/vmax/flipline also need to be
+	 * adjusted by the SCL to maintain correct vtotals.
+	 */
+	if (DISPLAY_VER(display) >= 13)
+		return value;
+	else
+		return value - intel_vrr_real_vblank_delay(crtc_state);
+}
+
 /*
  * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
  * Vtotal value.
@@ -265,14 +268,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 static
 int intel_vrr_fixed_rr_hw_vtotal(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
-
-	if (DISPLAY_VER(display) >= 13)
-		return crtc_vtotal;
-	else
-		return crtc_vtotal -
-			intel_vrr_real_vblank_delay(crtc_state);
+	return intel_vrr_hw_value(crtc_state, crtc_state->hw.adjusted_mode.crtc_vtotal);
 }
 
 static
@@ -441,14 +437,6 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 		crtc_state->vrr.pipeline_full =
 			intel_vrr_guardband_to_pipeline_full(crtc_state,
 							     crtc_state->vrr.guardband);
-
-		/*
-		 * vmin/vmax/flipline also need to be adjusted by
-		 * the vblank delay to maintain correct vtotals.
-		 */
-		crtc_state->vrr.vmin -= intel_vrr_real_vblank_delay(crtc_state);
-		crtc_state->vrr.vmax -= intel_vrr_real_vblank_delay(crtc_state);
-		crtc_state->vrr.flipline -= intel_vrr_real_vblank_delay(crtc_state);
 	}
 }
 
@@ -607,6 +595,21 @@ void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state
 			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
 }
 
+static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.vmin);
+}
+
+static int intel_vrr_hw_vmax(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.vmax);
+}
+
+static int intel_vrr_hw_flipline(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.flipline);
+}
+
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -616,11 +619,11 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		return;
 
 	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
-		       crtc_state->vrr.vmin - 1);
+		       intel_vrr_hw_vmin(crtc_state) - 1);
 	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
-		       crtc_state->vrr.vmax - 1);
+		       intel_vrr_hw_vmax(crtc_state) - 1);
 	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
-		       crtc_state->vrr.flipline - 1);
+		       intel_vrr_hw_flipline(crtc_state) - 1);
 
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN);
@@ -754,6 +757,13 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		crtc_state->vrr.vmin = intel_de_read(display,
 						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
 
+		if (DISPLAY_VER(display) < 13) {
+			/* undo what intel_vrr_hw_value() does when writing the values */
+			crtc_state->vrr.flipline += intel_vrr_real_vblank_delay(crtc_state);
+			crtc_state->vrr.vmax += intel_vrr_real_vblank_delay(crtc_state);
+			crtc_state->vrr.vmin += intel_vrr_real_vblank_delay(crtc_state);
+		}
+
 		/*
 		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
 		 * bits are not filled. Since for these platforms TRAN_VMIN is always
-- 
2.49.1

