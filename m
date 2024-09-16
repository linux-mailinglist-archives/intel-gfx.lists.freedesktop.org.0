Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E8897A554
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 17:30:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5323910E3AD;
	Mon, 16 Sep 2024 15:30:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IsPWG0AB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3353F10E3AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 15:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726500605; x=1758036605;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zEScBZCW+k+f4tI9ln5Cz9uubvyi1CQ41I64xlla2yY=;
 b=IsPWG0ABypvDTS+Sxs6g3TFvDpeTAgXH+SdjFxBx/yFC8WHm4U1cya+J
 vJecEnXQTfqK18cJulGJ2RWRK/YgohycLsnpsTzHFyNGlt3y/v3x8NpGq
 WCGpL01ZDyLqvw4YRusELFA8U8LColGeVsf0D9x27SOe28USSloiJogCT
 owxSPZR/kK08h38r3QhIH2FygIDuFTrkfDkPJXD4IF1Xx4Ej0Nlv8Azpo
 uE9UrvQNSzJxW1rVtwc1sfhPiXftzu0BAzwCGV9KgmVqKTCPN9B1Cu+kc
 TOZyfkVglML3RHgNrcNFweg5R1ELpeIavFTktDRN2HV9VPGhyWt3YQjtf g==;
X-CSE-ConnectionGUID: qxYLOsI/Rqa9ZhHjEG71gQ==
X-CSE-MsgGUID: VdTabToXTGCIG352GxDeig==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="47840547"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="47840547"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 08:30:04 -0700
X-CSE-ConnectionGUID: 77ntgCDrRQioMSp6x9EsRQ==
X-CSE-MsgGUID: iPZUsLrVTCuRt/SVO0FUnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="69009210"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Sep 2024 08:30:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Sep 2024 18:30:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915/color: Extract intel_color_modeset()
Date: Mon, 16 Sep 2024 18:29:57 +0300
Message-ID: <20240916152958.17332-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240916152958.17332-1-ville.syrjala@linux.intel.com>
References: <20240916152958.17332-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

We always perform the same steps to program color management
stuff during a full modeset. Extract that code to a helper
to avoid duplication.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 17 ++++++++++
 drivers/gpu/drm/i915/display/intel_color.h   |  1 +
 drivers/gpu/drm/i915/display/intel_display.c | 33 +++-----------------
 3 files changed, 22 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 5d701f48351b..50f41aeb3c28 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1902,6 +1902,23 @@ void intel_color_post_update(const struct intel_crtc_state *crtc_state)
 		i915->display.funcs.color->color_post_update(crtc_state);
 }
 
+void intel_color_modeset(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	intel_color_load_luts(crtc_state);
+	intel_color_commit_noarm(crtc_state);
+	intel_color_commit_arm(crtc_state);
+
+	if (DISPLAY_VER(display) < 9) {
+		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+		struct intel_plane *plane = to_intel_plane(crtc->base.primary);
+
+		/* update DSPCNTR to configure gamma/csc for pipe bottom color */
+		plane->disable_arm(plane, crtc_state);
+	}
+}
+
 void intel_color_prepare_commit(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index 79f230a1709a..ab3aaec06a2a 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -28,6 +28,7 @@ void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state);
 void intel_color_commit_arm(const struct intel_crtc_state *crtc_state);
 void intel_color_post_update(const struct intel_crtc_state *crtc_state);
 void intel_color_load_luts(const struct intel_crtc_state *crtc_state);
+void intel_color_modeset(const struct intel_crtc_state *crtc_state);
 void intel_color_get_config(struct intel_crtc_state *crtc_state);
 bool intel_color_lut_equal(const struct intel_crtc_state *crtc_state,
 			   const struct drm_property_blob *blob1,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d4a371edfcdd..591fe3b4ace8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1503,14 +1503,6 @@ static void intel_encoders_update_pipe(struct intel_atomic_state *state,
 	}
 }
 
-static void intel_disable_primary_plane(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
-
-	plane->disable_arm(plane, crtc_state);
-}
-
 static void ilk_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -1576,11 +1568,7 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	 * On ILK+ LUT must be loaded before the pipe is running but with
 	 * clocks enabled
 	 */
-	intel_color_load_luts(new_crtc_state);
-	intel_color_commit_noarm(new_crtc_state);
-	intel_color_commit_arm(new_crtc_state);
-	/* update DSPCNTR to configure gamma for pipe bottom color */
-	intel_disable_primary_plane(new_crtc_state);
+	intel_color_modeset(new_crtc_state);
 
 	intel_initial_watermarks(state, crtc);
 	intel_enable_transcoder(new_crtc_state);
@@ -1743,12 +1731,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		 * On ILK+ LUT must be loaded before the pipe is running but with
 		 * clocks enabled
 		 */
-		intel_color_load_luts(pipe_crtc_state);
-		intel_color_commit_noarm(pipe_crtc_state);
-		intel_color_commit_arm(pipe_crtc_state);
-		/* update DSPCNTR to configure gamma/csc for pipe bottom color */
-		if (DISPLAY_VER(dev_priv) < 9)
-			intel_disable_primary_plane(pipe_crtc_state);
+		intel_color_modeset(pipe_crtc_state);
 
 		hsw_set_linetime_wm(pipe_crtc_state);
 
@@ -2150,11 +2133,7 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 
 	i9xx_pfit_enable(new_crtc_state);
 
-	intel_color_load_luts(new_crtc_state);
-	intel_color_commit_noarm(new_crtc_state);
-	intel_color_commit_arm(new_crtc_state);
-	/* update DSPCNTR to configure gamma for pipe bottom color */
-	intel_disable_primary_plane(new_crtc_state);
+	intel_color_modeset(new_crtc_state);
 
 	intel_initial_watermarks(state, crtc);
 	intel_enable_transcoder(new_crtc_state);
@@ -2190,11 +2169,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 
 	i9xx_pfit_enable(new_crtc_state);
 
-	intel_color_load_luts(new_crtc_state);
-	intel_color_commit_noarm(new_crtc_state);
-	intel_color_commit_arm(new_crtc_state);
-	/* update DSPCNTR to configure gamma for pipe bottom color */
-	intel_disable_primary_plane(new_crtc_state);
+	intel_color_modeset(new_crtc_state);
 
 	if (!intel_initial_watermarks(state, crtc))
 		intel_update_watermarks(dev_priv);
-- 
2.44.2

