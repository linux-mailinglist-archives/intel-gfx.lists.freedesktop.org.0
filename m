Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5E253683B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 22:50:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1951110E216;
	Fri, 27 May 2022 20:50:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D9410F038
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 May 2022 20:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653684601; x=1685220601;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ATdW7eQV9rupmJg85gKLpxRc0MaMDGYDaeuRvShQmlM=;
 b=LxWL/s0hPnVA1vX0M73aMHZb2WztFAVjk4T6ebN63fqJ+SRuEu98L6wx
 90+tWtYy0T6MLWX4JvWUR3kwuznhAvsGEZspnFv4mVwoEWeMIB3DAFqWY
 LtUfIWJZD8ftZqAlHQgTSoPSRYhkuawkSlamK/f60nrXvvyXWti79O31X
 jFRxGENQ3yj0Nm7vH/C2IQWgBnUrYxbB0WTylMunwz7SilnvOR2V1Cqjc
 oPEBPuc0u6QaiwcvUqIKSX1jTEjeSlV0rk9uLK5PgDjBU6b/9bm5mrMOd
 /BhEep9PaV2BAxEj+/j00x+pGMX+SxOYiDXORXfA+VQKsg1MO+eA71NQA g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="274301931"
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="274301931"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 13:50:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="610519663"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga001.jf.intel.com with SMTP; 27 May 2022 13:49:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 May 2022 23:49:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 May 2022 23:49:46 +0300
Message-Id: <20220527204949.2264-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
References: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Accept more fixed modes with VRR
 panels
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

It seem that when dealing with VRR capable eDP panels we need
to accept fixed modes with variable vblank length (which is what
VRR varies dynamically). Typically the preferred mode seems to be
a non-VRR more (lowish dotclock/refresh rate + short vblank).

We also have examples where it looks like even the hblank length
is a bit different between the preferred mode vs. VRR mode(s).
So let's just accept anything that has matching hdisp+vdisp+flags.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/125
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c    |  3 +-
 drivers/gpu/drm/i915/display/intel_lvds.c  |  3 +-
 drivers/gpu/drm/i915/display/intel_panel.c | 48 ++++++++++++++++------
 drivers/gpu/drm/i915/display/intel_panel.h |  3 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c  |  2 +-
 5 files changed, 43 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1bc1f6458e81..b8e2d3cd4d68 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5217,7 +5217,8 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 			      IS_ERR(edid) ? NULL : edid);
 
 	intel_panel_add_edid_fixed_modes(intel_connector,
-					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE);
+					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE,
+					 intel_vrr_is_capable(intel_connector));
 
 	/* MSO requires information from the EDID */
 	intel_edp_mso_init(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 595f03343939..e55802b45461 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -972,7 +972,8 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 
 	/* Try EDID first */
 	intel_panel_add_edid_fixed_modes(intel_connector,
-					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE);
+					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE,
+					 false);
 
 	/* Failed to get EDID, what about VBT? */
 	if (!intel_panel_preferred_fixed_mode(intel_connector))
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index f55e4eafd74e..963b24293b50 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -71,6 +71,27 @@ intel_panel_fixed_mode(struct intel_connector *connector,
 	return best_mode;
 }
 
+static bool is_alt_drrs_mode(const struct drm_display_mode *mode,
+			     const struct drm_display_mode *preferred_mode)
+{
+	return drm_mode_match(mode, preferred_mode,
+			      DRM_MODE_MATCH_TIMINGS |
+			      DRM_MODE_MATCH_FLAGS |
+			      DRM_MODE_MATCH_3D_FLAGS) &&
+		mode->clock != preferred_mode->clock;
+}
+
+static bool is_alt_vrr_mode(const struct drm_display_mode *mode,
+			    const struct drm_display_mode *preferred_mode)
+{
+	return drm_mode_match(mode, preferred_mode,
+			      DRM_MODE_MATCH_FLAGS |
+			      DRM_MODE_MATCH_3D_FLAGS) &&
+		mode->hdisplay == preferred_mode->hdisplay &&
+		mode->vdisplay == preferred_mode->vdisplay &&
+		mode->clock != preferred_mode->clock;
+}
+
 const struct drm_display_mode *
 intel_panel_downclock_mode(struct intel_connector *connector,
 			   const struct drm_display_mode *adjusted_mode)
@@ -83,7 +104,8 @@ intel_panel_downclock_mode(struct intel_connector *connector,
 	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
 		int vrefresh = drm_mode_vrefresh(fixed_mode);
 
-		if (vrefresh >= min_vrefresh && vrefresh < max_vrefresh) {
+		if (is_alt_drrs_mode(fixed_mode, adjusted_mode) &&
+		    vrefresh >= min_vrefresh && vrefresh < max_vrefresh) {
 			max_vrefresh = vrefresh;
 			best_mode = fixed_mode;
 		}
@@ -151,16 +173,17 @@ int intel_panel_compute_config(struct intel_connector *connector,
 }
 
 static bool is_alt_fixed_mode(const struct drm_display_mode *mode,
-			      const struct drm_display_mode *preferred_mode)
+			      const struct drm_display_mode *preferred_mode,
+			      bool has_vrr)
 {
-	return drm_mode_match(mode, preferred_mode,
-			      DRM_MODE_MATCH_TIMINGS |
-			      DRM_MODE_MATCH_FLAGS |
-			      DRM_MODE_MATCH_3D_FLAGS) &&
-		mode->clock != preferred_mode->clock;
+	if (has_vrr)
+		return is_alt_vrr_mode(mode, preferred_mode);
+	else
+		return is_alt_drrs_mode(mode, preferred_mode);
 }
 
-static void intel_panel_add_edid_alt_fixed_modes(struct intel_connector *connector)
+static void intel_panel_add_edid_alt_fixed_modes(struct intel_connector *connector,
+						 bool has_vrr)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	const struct drm_display_mode *preferred_mode =
@@ -168,7 +191,7 @@ static void intel_panel_add_edid_alt_fixed_modes(struct intel_connector *connect
 	struct drm_display_mode *mode, *next;
 
 	list_for_each_entry_safe(mode, next, &connector->base.probed_modes, head) {
-		if (!is_alt_fixed_mode(mode, preferred_mode))
+		if (!is_alt_fixed_mode(mode, preferred_mode, has_vrr))
 			continue;
 
 		drm_dbg_kms(&dev_priv->drm,
@@ -226,11 +249,12 @@ static void intel_panel_destroy_probed_modes(struct intel_connector *connector)
 	}
 }
 
-void intel_panel_add_edid_fixed_modes(struct intel_connector *connector, bool has_drrs)
+void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
+				      bool has_drrs, bool has_vrr)
 {
 	intel_panel_add_edid_preferred_mode(connector);
-	if (intel_panel_preferred_fixed_mode(connector) && has_drrs)
-		intel_panel_add_edid_alt_fixed_modes(connector);
+	if (intel_panel_preferred_fixed_mode(connector) && (has_drrs || has_vrr))
+		intel_panel_add_edid_alt_fixed_modes(connector, has_vrr);
 	intel_panel_destroy_probed_modes(connector);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 2e32bb728beb..b087c0c3cc6d 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -40,7 +40,8 @@ int intel_panel_fitting(struct intel_crtc_state *crtc_state,
 			const struct drm_connector_state *conn_state);
 int intel_panel_compute_config(struct intel_connector *connector,
 			       struct drm_display_mode *adjusted_mode);
-void intel_panel_add_edid_fixed_modes(struct intel_connector *connector, bool has_drrs);
+void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
+				      bool has_drrs, bool has_vrr);
 void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connector);
 void intel_panel_add_vbt_sdvo_fixed_mode(struct intel_connector *connector);
 void intel_panel_add_encoder_fixed_mode(struct intel_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index d9de2c4d67a7..2b78a790e1b6 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2911,7 +2911,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 
 	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
 		intel_ddc_get_modes(connector, &intel_sdvo->ddc);
-		intel_panel_add_edid_fixed_modes(intel_connector, false);
+		intel_panel_add_edid_fixed_modes(intel_connector, false, false);
 	}
 
 	intel_panel_init(intel_connector);
-- 
2.35.1

