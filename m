Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4234E5864
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 19:29:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0554889F6E;
	Wed, 23 Mar 2022 18:29:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EF9789F6E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 18:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648060184; x=1679596184;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=seI5gaO6ew+bCO+3afcYy2B2wDazTI4a3z0sK7nuhgM=;
 b=ZxHubYUWMwUe8hAPxWKLO8a7NxUF8/+AURqL8DI2mNJTma3yOeuNmCIR
 CAthUvcVx9cGCyxPwU5Kc/g1kdgIOC/hQtPAyEPfLfSo2NpJ41vScyzup
 HQExlnFhynxXWRcOFDUpFCWMSkoPiR+9i9OjiemDC78gyiqR1rorby0qX
 2PWAhOMAA2h35/KbtzxSqlrGrlO8vIoivPUbsDMv8IjLkk5yISc3Vqwtb
 gz0m3iUw0rjswiTU+WEwRWHhe+mPXUqSCQuYHpkmzYFs7pc52y8ZAK7I6
 SDeOJfETLL++eFA401r5CRYtcoxWlkU5m7zRPLQeTkqvO0E/XpnLFFelD w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="257022890"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="257022890"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 11:29:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="544319081"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga007.jf.intel.com with SMTP; 23 Mar 2022 11:29:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Mar 2022 20:29:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Mar 2022 20:29:28 +0200
Message-Id: <20220323182935.4701-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/9] drm/i915: Use DRM_MODE_FMT+DRM_MODE_ARG()
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

Replace all drm_mode_debug_printmodeline() calls with
DRM_MODE_FMT+DRM_MODE_ARG(). Makes the debug output a bit more
terse in places where we previously had a newline in the precedeing
drm_dbg_kms(), and avoids anything else sneaking in between the two
printk()s in all cases.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c    | 12 +++++-----
 drivers/gpu/drm/i915/display/intel_display.c | 12 +++++-----
 drivers/gpu/drm/i915/display/intel_dp.c      |  6 ++---
 drivers/gpu/drm/i915/display/intel_dvo.c     |  4 ++--
 drivers/gpu/drm/i915/display/intel_lvds.c    |  4 ++--
 drivers/gpu/drm/i915/display/intel_panel.c   | 24 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_tv.c      | 12 +++++-----
 7 files changed, 37 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c7afe19dd44a..3f3e8ccd9026 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -306,8 +306,8 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
 	i915->vbt.lfp_lvds_vbt_mode = panel_fixed_mode;
 
 	drm_dbg_kms(&i915->drm,
-		    "Found panel mode in BIOS VBT legacy lfp table:\n");
-	drm_mode_debug_printmodeline(panel_fixed_mode);
+		    "Found panel mode in BIOS VBT legacy lfp table: " DRM_MODE_FMT "\n",
+		    DRM_MODE_ARG(panel_fixed_mode));
 
 	fp_timing = get_lvds_fp_timing(bdb, lvds_lfp_data,
 				       lvds_lfp_data_ptrs,
@@ -397,8 +397,8 @@ parse_generic_dtd(struct drm_i915_private *i915,
 		panel_fixed_mode->flags |= DRM_MODE_FLAG_NVSYNC;
 
 	drm_dbg_kms(&i915->drm,
-		    "Found panel mode in BIOS VBT generic dtd table:\n");
-	drm_mode_debug_printmodeline(panel_fixed_mode);
+		    "Found panel mode in BIOS VBT generic dtd table: " DRM_MODE_FMT "\n",
+		    DRM_MODE_ARG(panel_fixed_mode));
 
 	i915->vbt.lfp_lvds_vbt_mode = panel_fixed_mode;
 }
@@ -551,8 +551,8 @@ parse_sdvo_panel_data(struct drm_i915_private *i915,
 	i915->vbt.sdvo_lvds_vbt_mode = panel_fixed_mode;
 
 	drm_dbg_kms(&i915->drm,
-		    "Found SDVO panel mode in BIOS VBT tables:\n");
-	drm_mode_debug_printmodeline(panel_fixed_mode);
+		    "Found SDVO panel mode in BIOS VBT tables: " DRM_MODE_FMT "\n",
+		    DRM_MODE_ARG(panel_fixed_mode));
 }
 
 static int intel_bios_ssc_frequency(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index dc6e21e4ef0b..ff50b4bc2b3d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5417,13 +5417,13 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 		    intel_vrr_vmin_vblank_start(pipe_config),
 		    intel_vrr_vmax_vblank_start(pipe_config));
 
-	drm_dbg_kms(&dev_priv->drm, "requested mode:\n");
-	drm_mode_debug_printmodeline(&pipe_config->hw.mode);
-	drm_dbg_kms(&dev_priv->drm, "adjusted mode:\n");
-	drm_mode_debug_printmodeline(&pipe_config->hw.adjusted_mode);
+	drm_dbg_kms(&dev_priv->drm, "requested mode: " DRM_MODE_FMT "\n",
+		    DRM_MODE_ARG(&pipe_config->hw.mode));
+	drm_dbg_kms(&dev_priv->drm, "adjusted mode: " DRM_MODE_FMT "\n",
+		    DRM_MODE_ARG(&pipe_config->hw.adjusted_mode));
 	intel_dump_crtc_timings(dev_priv, &pipe_config->hw.adjusted_mode);
-	drm_dbg_kms(&dev_priv->drm, "pipe mode:\n");
-	drm_mode_debug_printmodeline(&pipe_config->hw.pipe_mode);
+	drm_dbg_kms(&dev_priv->drm, "pipe mode: " DRM_MODE_FMT "\n",
+		    DRM_MODE_ARG(&pipe_config->hw.pipe_mode));
 	intel_dump_crtc_timings(dev_priv, &pipe_config->hw.pipe_mode);
 	drm_dbg_kms(&dev_priv->drm,
 		    "port clock: %d, pipe src: " DRM_RECT_FMT ", pixel rate %d\n",
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3bf44f7909e5..f54088db9862 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2579,9 +2579,9 @@ static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
 	drm_mode_set_name(mode);
 
 	drm_dbg_kms(&i915->drm,
-		    "[CONNECTOR:%d:%s] using generated MSO mode: ",
-		    connector->base.base.id, connector->base.name);
-	drm_mode_debug_printmodeline(mode);
+		    "[CONNECTOR:%d:%s] using generated MSO mode: " DRM_MODE_FMT "\n",
+		    connector->base.base.id, connector->base.name,
+		    DRM_MODE_ARG(mode));
 }
 
 static void intel_edp_mso_init(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index d4dc16a9c0dd..90e026cef6ee 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -391,8 +391,8 @@ intel_dvo_get_current_mode(struct intel_encoder *encoder)
 
 	mode = intel_encoder_current_mode(encoder);
 	if (mode) {
-		DRM_DEBUG_KMS("using current (BIOS) mode: ");
-		drm_mode_debug_printmodeline(mode);
+		DRM_DEBUG_KMS("using current (BIOS) mode: " DRM_MODE_FMT "\n",
+			      DRM_MODE_ARG(mode));
 		mode->type |= DRM_MODE_TYPE_PREFERRED;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index cd685dbf324b..b57e76b4ef04 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -984,8 +984,8 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	 */
 	fixed_mode = intel_encoder_current_mode(intel_encoder);
 	if (fixed_mode) {
-		drm_dbg_kms(&dev_priv->drm, "using current (BIOS) mode: ");
-		drm_mode_debug_printmodeline(fixed_mode);
+		drm_dbg_kms(&dev_priv->drm, "using current (BIOS) mode: " DRM_MODE_FMT "\n",
+			    DRM_MODE_ARG(fixed_mode));
 		fixed_mode->type |= DRM_MODE_TYPE_PREFERRED;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 8c9e26539cc5..2ba51222d156 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -194,9 +194,9 @@ intel_panel_edid_downclock_mode(struct intel_connector *connector,
 		return NULL;
 
 	drm_dbg_kms(&dev_priv->drm,
-		    "[CONNECTOR:%d:%s] using downclock mode from EDID: ",
-		    connector->base.base.id, connector->base.name);
-	drm_mode_debug_printmodeline(downclock_mode);
+		    "[CONNECTOR:%d:%s] using downclock mode from EDID: " DRM_MODE_FMT "\n",
+		    connector->base.base.id, connector->base.name,
+		    DRM_MODE_ARG(downclock_mode));
 
 	return downclock_mode;
 }
@@ -221,9 +221,9 @@ intel_panel_edid_fixed_mode(struct intel_connector *connector)
 			return NULL;
 
 		drm_dbg_kms(&dev_priv->drm,
-			    "[CONNECTOR:%d:%s] using preferred mode from EDID: ",
-			    connector->base.base.id, connector->base.name);
-		drm_mode_debug_printmodeline(fixed_mode);
+			    "[CONNECTOR:%d:%s] using preferred mode from EDID: " DRM_MODE_FMT "\n",
+			    connector->base.base.id, connector->base.name,
+			    DRM_MODE_ARG(fixed_mode));
 
 		return fixed_mode;
 	}
@@ -238,9 +238,9 @@ intel_panel_edid_fixed_mode(struct intel_connector *connector)
 	fixed_mode->type |= DRM_MODE_TYPE_PREFERRED;
 
 	drm_dbg_kms(&dev_priv->drm,
-		    "[CONNECTOR:%d:%s] using first mode from EDID: ",
-		    connector->base.base.id, connector->base.name);
-	drm_mode_debug_printmodeline(fixed_mode);
+		    "[CONNECTOR:%d:%s] using first mode from EDID: " DRM_MODE_FMT "\n",
+		    connector->base.base.id, connector->base.name,
+		    DRM_MODE_ARG(fixed_mode));
 
 	return fixed_mode;
 }
@@ -262,9 +262,9 @@ intel_panel_vbt_fixed_mode(struct intel_connector *connector)
 
 	fixed_mode->type |= DRM_MODE_TYPE_PREFERRED;
 
-	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] using mode from VBT: ",
-		    connector->base.base.id, connector->base.name);
-	drm_mode_debug_printmodeline(fixed_mode);
+	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] using mode from VBT: " DRM_MODE_FMT "\n",
+		    connector->base.base.id, connector->base.name,
+		    DRM_MODE_ARG(fixed_mode));
 
 	info->width_mm = fixed_mode->width_mm;
 	info->height_mm = fixed_mode->height_mm;
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 8a39989b87ad..9379f3463344 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1145,8 +1145,8 @@ intel_tv_get_config(struct intel_encoder *encoder,
 
 	intel_tv_mode_to_mode(&mode, &tv_mode);
 
-	drm_dbg_kms(&dev_priv->drm, "TV mode:\n");
-	drm_mode_debug_printmodeline(&mode);
+	drm_dbg_kms(&dev_priv->drm, "TV mode: " DRM_MODE_FMT "\n",
+		    DRM_MODE_ARG(&mode));
 
 	intel_tv_scale_mode_horiz(&mode, hdisplay,
 				  xpos, mode.hdisplay - xsize - xpos);
@@ -1250,8 +1250,8 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 		tv_conn_state->bypass_vfilter = false;
 	}
 
-	drm_dbg_kms(&dev_priv->drm, "TV mode:\n");
-	drm_mode_debug_printmodeline(adjusted_mode);
+	drm_dbg_kms(&dev_priv->drm, "TV mode: " DRM_MODE_FMT "\n",
+		    DRM_MODE_ARG(adjusted_mode));
 
 	/*
 	 * The pipe scanline counter behaviour looks as follows when
@@ -1806,8 +1806,8 @@ intel_tv_get_modes(struct drm_connector *connector)
 		 */
 		intel_tv_mode_to_mode(mode, tv_mode);
 		if (count == 0) {
-			drm_dbg_kms(&dev_priv->drm, "TV mode:\n");
-			drm_mode_debug_printmodeline(mode);
+			drm_dbg_kms(&dev_priv->drm, "TV mode: " DRM_MODE_FMT "\n",
+				    DRM_MODE_ARG(mode));
 		}
 		intel_tv_scale_mode_horiz(mode, input->w, 0, 0);
 		intel_tv_scale_mode_vert(mode, input->h, 0, 0);
-- 
2.34.1

