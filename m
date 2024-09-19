Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED4297C687
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 11:04:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30E0A10E6A2;
	Thu, 19 Sep 2024 09:04:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T2b5m3Xm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6073410E6A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 09:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726736674; x=1758272674;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H9bIcoA4Fx2E1kH28Epj07LUk3hUhyg0UBHh9A2l1Uo=;
 b=T2b5m3Xm4Z+9Uil6WUK3vrBmYejnx8qC3Buvd9cRjwj0IihOyRyPSqjB
 sgVUUk3hhPbG4uO6rkXGVzbIsGpU2tc16qoBgqJHa1YTrKlutSuq5kkRT
 AmoWdUpr2XcBuKSpRmUL2LMre/oD1vQdeynhsSpVeYXn8Krw+6UFKNxOD
 lKPI/5q6ZgZg5PouMn/G9QUtgL/M/mnvjDax1PV1lg/4/RJ/JWXn7df7j
 zzONan5Uwqj+TiSz/0dSKCaxg48Q0M4aZCg2myFKMQOLb8psBU+AKjPMD
 x/zv22m37RzP295nozY9PllkUd+O6ImZtHp3ycmUobpIFMXKUznGD6Yif w==;
X-CSE-ConnectionGUID: QZPVc+oIQPuRndggEOX2gA==
X-CSE-MsgGUID: kCFibJk/SbStEQZ/pBA9tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25810350"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="25810350"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 02:04:33 -0700
X-CSE-ConnectionGUID: RwPgOSiGSa+/xujTEuiAZg==
X-CSE-MsgGUID: wkCzk7c7S2Kh7qO863yzjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="74845871"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.59])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 02:04:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915/pps: split intel_pps_reset_all() to vlv and bxt
 variants
Date: Thu, 19 Sep 2024 12:04:27 +0300
Message-Id: <20240919090427.1859032-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

The intel_pps_reset_all() function does similar but not quite the same
things for VLV/CHV and BXT/GLK. Observe that it's called from platform
specific code only, and a split to two functions vlv_pps_reset_all() and
bxt_pps_reset_all() is natural.

Remove the platform checks and warnings from the functions. We don't
usually have them, unless we're unsure. To make this easier to reason
about for BXT/GLK, change the condition on caller side from "!PCH" to
"BXT || GLK".

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../i915/display/intel_display_power_well.c   | 11 +++---
 drivers/gpu/drm/i915/display/intel_pps.c      | 34 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_pps.h      |  3 +-
 3 files changed, 27 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 1898aff50ac4..adaf7cf3a33b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -879,12 +879,11 @@ void bxt_enable_dc9(struct intel_display *display)
 
 	drm_dbg_kms(display->drm, "Enabling DC9\n");
 	/*
-	 * Power sequencer reset is not needed on
-	 * platforms with South Display Engine on PCH,
-	 * because PPS registers are always on.
+	 * Power sequencer reset is needed on BXT/GLK, because the PPS registers
+	 * aren't always on, unlike with South Display Engine on PCH.
 	 */
-	if (!HAS_PCH_SPLIT(dev_priv))
-		intel_pps_reset_all(display);
+	if (IS_BROXTON(dev_priv) || IS_GEMINILAKE(dev_priv))
+		bxt_pps_reset_all(display);
 	gen9_set_dc_state(display, DC_STATE_EN_DC9);
 }
 
@@ -1270,7 +1269,7 @@ static void vlv_display_power_well_deinit(struct drm_i915_private *dev_priv)
 	/* make sure we're done processing display irqs */
 	intel_synchronize_irq(dev_priv);
 
-	intel_pps_reset_all(display);
+	vlv_pps_reset_all(display);
 
 	/* Prevent us from re-enabling polling on accident in late suspend */
 	if (!dev_priv->drm.dev->power.is_suspended)
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 819b2843946f..88abc4c7cda1 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -70,7 +70,7 @@ intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp)
 	intel_wakeref_t wakeref;
 
 	/*
-	 * See intel_pps_reset_all() why we need a power domain reference here.
+	 * See vlv_pps_reset_all() why we need a power domain reference here.
 	 */
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DISPLAY_CORE);
 	mutex_lock(&display->pps.mutex);
@@ -448,14 +448,10 @@ pps_initial_setup(struct intel_dp *intel_dp)
 	return intel_pps_is_valid(intel_dp);
 }
 
-void intel_pps_reset_all(struct intel_display *display)
+void vlv_pps_reset_all(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder;
 
-	if (drm_WARN_ON(display->drm, !IS_LP(dev_priv)))
-		return;
-
 	if (!HAS_DISPLAY(display))
 		return;
 
@@ -472,16 +468,26 @@ void intel_pps_reset_all(struct intel_display *display)
 	for_each_intel_dp(display->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-			drm_WARN_ON(display->drm,
-				    intel_dp->pps.vlv_active_pipe != INVALID_PIPE);
-
-		if (encoder->type != INTEL_OUTPUT_EDP)
-			continue;
+		drm_WARN_ON(display->drm, intel_dp->pps.vlv_active_pipe != INVALID_PIPE);
 
-		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+		if (encoder->type == INTEL_OUTPUT_EDP)
 			intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
-		else
+	}
+}
+
+void bxt_pps_reset_all(struct intel_display *display)
+{
+	struct intel_encoder *encoder;
+
+	if (!HAS_DISPLAY(display))
+		return;
+
+	/* See vlv_pps_reset_all() for why we can't grab pps_mutex here. */
+
+	for_each_intel_dp(display->drm, encoder) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		if (encoder->type == INTEL_OUTPUT_EDP)
 			intel_dp->pps.bxt_pps_reset = true;
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index a5339a65485d..bc5046d53626 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -43,7 +43,6 @@ void intel_pps_wait_power_cycle(struct intel_dp *intel_dp);
 bool intel_pps_init(struct intel_dp *intel_dp);
 void intel_pps_init_late(struct intel_dp *intel_dp);
 void intel_pps_encoder_reset(struct intel_dp *intel_dp);
-void intel_pps_reset_all(struct intel_display *display);
 
 void vlv_pps_pipe_init(struct intel_dp *intel_dp);
 void vlv_pps_pipe_reset(struct intel_dp *intel_dp);
@@ -52,6 +51,8 @@ void vlv_pps_port_enable_unlocked(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state);
 void vlv_pps_port_disable(struct intel_encoder *encoder,
 			  const struct intel_crtc_state *crtc_state);
+void vlv_pps_reset_all(struct intel_display *display);
+void bxt_pps_reset_all(struct intel_display *display);
 
 void intel_pps_unlock_regs_wa(struct intel_display *display);
 void intel_pps_setup(struct intel_display *display);
-- 
2.39.2

