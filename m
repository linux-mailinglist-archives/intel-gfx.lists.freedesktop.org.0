Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E629A4DA61
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 11:27:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E78CB10E564;
	Tue,  4 Mar 2025 10:27:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fr+fCisO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D94B10E564;
 Tue,  4 Mar 2025 10:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741084069; x=1772620069;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L7UaXohStyLHkSWXw+rhL0OL9pxlJEMR42F2XOWCSXM=;
 b=fr+fCisOU4UNiS/JBhjxdMwPVJZGFV8EXsbamOUaWD2nhxVR1g4KiGSo
 NmzFwJlVUmqoYpmRRIg5kgn+i1gd21sMRTyKofTrrDxjvcj7NhiT0S1u5
 jiIPuLyiupJr34nVUW/gKTmwrzSn9j77elTX7i3t0isdw64hKRf/PEHB1
 ArpWAiO8XJw0wkG82HajE7UJST1aenkSETDhNOkKm64TZF6HC3dJtBxg+
 wDj21imWVF0L1uofUwaCxxH8YoM+lUyh+f1mrF6r02eCMn6F52uVQDxmm
 yjUpJjrRBsiz2PgBexJkemwX/XsoeCg9yik2aDCW/ZPI27a079e8zVk7n Q==;
X-CSE-ConnectionGUID: Dy0uOrk6RFGkhb7ZKxYRDA==
X-CSE-MsgGUID: tMgHNa5DQYyxTbPbP0UqZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="52632776"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="52632776"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 02:27:49 -0800
X-CSE-ConnectionGUID: pvp3MMdHS6q8N3zNfeK/4Q==
X-CSE-MsgGUID: h3Yk9dcyQ0WUX1lfiWYSYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="118321678"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 02:27:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/5] drm/i915/display: convert some intel_display.[ch]
 functions to struct intel_display
Date: Tue,  4 Mar 2025 12:27:31 +0200
Message-Id: <ee8b108420763cbf47ee77fa35b782a7293f9cfe.1741084010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741084010.git.jani.nikula@intel.com>
References: <cover.1741084010.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Going forward, struct intel_display is the main display device data
pointer. The intel_display.[ch] files are too big to convert in one
go. Convert the interface towards intel_display_driver.c to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 161 +++++++++---------
 drivers/gpu/drm/i915/display/intel_display.h  |  11 +-
 .../drm/i915/display/intel_display_driver.c   |  10 +-
 3 files changed, 94 insertions(+), 88 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9d4f2dacbbce..debf9826fd2f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -182,16 +182,17 @@ int vlv_get_cck_clock_hpll(struct drm_i915_private *dev_priv,
 	return hpll;
 }
 
-void intel_update_czclk(struct drm_i915_private *dev_priv)
+void intel_update_czclk(struct intel_display *display)
 {
-	if (!(IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)))
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	if (!display->platform.valleyview && !display->platform.cherryview)
 		return;
 
 	dev_priv->czclk_freq = vlv_get_cck_clock_hpll(dev_priv, "czclk",
 						      CCK_CZ_CLOCK_CONTROL);
 
-	drm_dbg(&dev_priv->drm, "CZ clock rate: %d kHz\n",
-		dev_priv->czclk_freq);
+	drm_dbg_kms(display->drm, "CZ clock rate: %d kHz\n", dev_priv->czclk_freq);
 }
 
 static bool is_hdr_mode(const struct intel_crtc_state *crtc_state)
@@ -2547,8 +2548,10 @@ intel_link_compute_m_n(u16 bits_per_pixel_x16, int nlanes,
 		    0x80000);
 }
 
-void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
+void intel_panel_sanitize_ssc(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	/*
 	 * There may be no VBT; and if the BIOS enabled SSC we can
 	 * just keep using it to avoid unnecessary flicker.  Whereas if the
@@ -2556,16 +2559,16 @@ void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
 	 * indicates as much.
 	 */
 	if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)) {
-		bool bios_lvds_use_ssc = intel_de_read(dev_priv,
+		bool bios_lvds_use_ssc = intel_de_read(display,
 						       PCH_DREF_CONTROL) &
 			DREF_SSC1_ENABLE;
 
-		if (dev_priv->display.vbt.lvds_use_ssc != bios_lvds_use_ssc) {
-			drm_dbg_kms(&dev_priv->drm,
+		if (display->vbt.lvds_use_ssc != bios_lvds_use_ssc) {
+			drm_dbg_kms(display->drm,
 				    "SSC %s by BIOS, overriding VBT which says %s\n",
 				    str_enabled_disabled(bios_lvds_use_ssc),
-				    str_enabled_disabled(dev_priv->display.vbt.lvds_use_ssc));
-			dev_priv->display.vbt.lvds_use_ssc = bios_lvds_use_ssc;
+				    str_enabled_disabled(display->vbt.lvds_use_ssc));
+			display->vbt.lvds_use_ssc = bios_lvds_use_ssc;
 		}
 	}
 }
@@ -7635,37 +7638,39 @@ static u32 intel_encoder_possible_crtcs(struct intel_encoder *encoder)
 	return possible_crtcs;
 }
 
-static bool ilk_has_edp_a(struct drm_i915_private *dev_priv)
+static bool ilk_has_edp_a(struct intel_display *display)
 {
-	if (!IS_MOBILE(dev_priv))
+	if (!display->platform.mobile)
 		return false;
 
-	if ((intel_de_read(dev_priv, DP_A) & DP_DETECTED) == 0)
+	if ((intel_de_read(display, DP_A) & DP_DETECTED) == 0)
 		return false;
 
-	if (IS_IRONLAKE(dev_priv) && (intel_de_read(dev_priv, FUSE_STRAP) & ILK_eDP_A_DISABLE))
+	if (display->platform.ironlake && (intel_de_read(display, FUSE_STRAP) & ILK_eDP_A_DISABLE))
 		return false;
 
 	return true;
 }
 
-static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
+static bool intel_ddi_crt_present(struct intel_display *display)
 {
-	if (DISPLAY_VER(dev_priv) >= 9)
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	if (DISPLAY_VER(display) >= 9)
 		return false;
 
-	if (IS_HASWELL_ULT(dev_priv) || IS_BROADWELL_ULT(dev_priv))
+	if (display->platform.haswell_ult || display->platform.broadwell_ult)
 		return false;
 
 	if (HAS_PCH_LPT_H(dev_priv) &&
-	    intel_de_read(dev_priv, SFUSE_STRAP) & SFUSE_STRAP_CRT_DISABLED)
+	    intel_de_read(display, SFUSE_STRAP) & SFUSE_STRAP_CRT_DISABLED)
 		return false;
 
 	/* DDI E can't be used if DDI A requires 4 lanes */
-	if (intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
+	if (intel_de_read(display, DDI_BUF_CTL(PORT_A)) & DDI_A_4_LANES)
 		return false;
 
-	if (!dev_priv->display.vbt.int_crt_support)
+	if (!display->vbt.int_crt_support)
 		return false;
 
 	return true;
@@ -7677,24 +7682,24 @@ bool assert_port_valid(struct intel_display *display, enum port port)
 			 "Platform does not support port %c\n", port_name(port));
 }
 
-void intel_setup_outputs(struct drm_i915_private *dev_priv)
+void intel_setup_outputs(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder;
 	bool dpd_is_edp = false;
 
 	intel_pps_unlock_regs_wa(display);
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
-	if (HAS_DDI(dev_priv)) {
-		if (intel_ddi_crt_present(dev_priv))
+	if (HAS_DDI(display)) {
+		if (intel_ddi_crt_present(display))
 			intel_crt_init(display);
 
 		intel_bios_for_each_encoder(display, intel_ddi_init);
 
-		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+		if (display->platform.geminilake || display->platform.broxton)
 			vlv_dsi_init(dev_priv);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		int found;
@@ -7709,33 +7714,33 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 		dpd_is_edp = intel_dp_is_port_edp(display, PORT_D);
 
-		if (ilk_has_edp_a(dev_priv))
+		if (ilk_has_edp_a(display))
 			g4x_dp_init(display, DP_A, PORT_A);
 
-		if (intel_de_read(dev_priv, PCH_HDMIB) & SDVO_DETECTED) {
+		if (intel_de_read(display, PCH_HDMIB) & SDVO_DETECTED) {
 			/* PCH SDVOB multiplex with HDMIB */
 			found = intel_sdvo_init(display, PCH_SDVOB, PORT_B);
 			if (!found)
 				g4x_hdmi_init(display, PCH_HDMIB, PORT_B);
-			if (!found && (intel_de_read(dev_priv, PCH_DP_B) & DP_DETECTED))
+			if (!found && (intel_de_read(display, PCH_DP_B) & DP_DETECTED))
 				g4x_dp_init(display, PCH_DP_B, PORT_B);
 		}
 
-		if (intel_de_read(dev_priv, PCH_HDMIC) & SDVO_DETECTED)
+		if (intel_de_read(display, PCH_HDMIC) & SDVO_DETECTED)
 			g4x_hdmi_init(display, PCH_HDMIC, PORT_C);
 
-		if (!dpd_is_edp && intel_de_read(dev_priv, PCH_HDMID) & SDVO_DETECTED)
+		if (!dpd_is_edp && intel_de_read(display, PCH_HDMID) & SDVO_DETECTED)
 			g4x_hdmi_init(display, PCH_HDMID, PORT_D);
 
-		if (intel_de_read(dev_priv, PCH_DP_C) & DP_DETECTED)
+		if (intel_de_read(display, PCH_DP_C) & DP_DETECTED)
 			g4x_dp_init(display, PCH_DP_C, PORT_C);
 
-		if (intel_de_read(dev_priv, PCH_DP_D) & DP_DETECTED)
+		if (intel_de_read(display, PCH_DP_D) & DP_DETECTED)
 			g4x_dp_init(display, PCH_DP_D, PORT_D);
-	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+	} else if (display->platform.valleyview || display->platform.cherryview) {
 		bool has_edp, has_port;
 
-		if (IS_VALLEYVIEW(dev_priv) && dev_priv->display.vbt.int_crt_support)
+		if (display->platform.valleyview && display->vbt.int_crt_support)
 			intel_crt_init(display);
 
 		/*
@@ -7755,87 +7760,87 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		 */
 		has_edp = intel_dp_is_port_edp(display, PORT_B);
 		has_port = intel_bios_is_port_present(display, PORT_B);
-		if (intel_de_read(dev_priv, VLV_DP_B) & DP_DETECTED || has_port)
+		if (intel_de_read(display, VLV_DP_B) & DP_DETECTED || has_port)
 			has_edp &= g4x_dp_init(display, VLV_DP_B, PORT_B);
-		if ((intel_de_read(dev_priv, VLV_HDMIB) & SDVO_DETECTED || has_port) && !has_edp)
+		if ((intel_de_read(display, VLV_HDMIB) & SDVO_DETECTED || has_port) && !has_edp)
 			g4x_hdmi_init(display, VLV_HDMIB, PORT_B);
 
 		has_edp = intel_dp_is_port_edp(display, PORT_C);
 		has_port = intel_bios_is_port_present(display, PORT_C);
-		if (intel_de_read(dev_priv, VLV_DP_C) & DP_DETECTED || has_port)
+		if (intel_de_read(display, VLV_DP_C) & DP_DETECTED || has_port)
 			has_edp &= g4x_dp_init(display, VLV_DP_C, PORT_C);
-		if ((intel_de_read(dev_priv, VLV_HDMIC) & SDVO_DETECTED || has_port) && !has_edp)
+		if ((intel_de_read(display, VLV_HDMIC) & SDVO_DETECTED || has_port) && !has_edp)
 			g4x_hdmi_init(display, VLV_HDMIC, PORT_C);
 
-		if (IS_CHERRYVIEW(dev_priv)) {
+		if (display->platform.cherryview) {
 			/*
 			 * eDP not supported on port D,
 			 * so no need to worry about it
 			 */
 			has_port = intel_bios_is_port_present(display, PORT_D);
-			if (intel_de_read(dev_priv, CHV_DP_D) & DP_DETECTED || has_port)
+			if (intel_de_read(display, CHV_DP_D) & DP_DETECTED || has_port)
 				g4x_dp_init(display, CHV_DP_D, PORT_D);
-			if (intel_de_read(dev_priv, CHV_HDMID) & SDVO_DETECTED || has_port)
+			if (intel_de_read(display, CHV_HDMID) & SDVO_DETECTED || has_port)
 				g4x_hdmi_init(display, CHV_HDMID, PORT_D);
 		}
 
 		vlv_dsi_init(dev_priv);
-	} else if (IS_PINEVIEW(dev_priv)) {
+	} else if (display->platform.pineview) {
 		intel_lvds_init(dev_priv);
 		intel_crt_init(display);
-	} else if (IS_DISPLAY_VER(dev_priv, 3, 4)) {
+	} else if (IS_DISPLAY_VER(display, 3, 4)) {
 		bool found = false;
 
-		if (IS_MOBILE(dev_priv))
+		if (display->platform.mobile)
 			intel_lvds_init(dev_priv);
 
 		intel_crt_init(display);
 
-		if (intel_de_read(dev_priv, GEN3_SDVOB) & SDVO_DETECTED) {
-			drm_dbg_kms(&dev_priv->drm, "probing SDVOB\n");
+		if (intel_de_read(display, GEN3_SDVOB) & SDVO_DETECTED) {
+			drm_dbg_kms(display->drm, "probing SDVOB\n");
 			found = intel_sdvo_init(display, GEN3_SDVOB, PORT_B);
-			if (!found && IS_G4X(dev_priv)) {
-				drm_dbg_kms(&dev_priv->drm,
+			if (!found && display->platform.g4x) {
+				drm_dbg_kms(display->drm,
 					    "probing HDMI on SDVOB\n");
 				g4x_hdmi_init(display, GEN4_HDMIB, PORT_B);
 			}
 
-			if (!found && IS_G4X(dev_priv))
+			if (!found && display->platform.g4x)
 				g4x_dp_init(display, DP_B, PORT_B);
 		}
 
 		/* Before G4X SDVOC doesn't have its own detect register */
 
-		if (intel_de_read(dev_priv, GEN3_SDVOB) & SDVO_DETECTED) {
-			drm_dbg_kms(&dev_priv->drm, "probing SDVOC\n");
+		if (intel_de_read(display, GEN3_SDVOB) & SDVO_DETECTED) {
+			drm_dbg_kms(display->drm, "probing SDVOC\n");
 			found = intel_sdvo_init(display, GEN3_SDVOC, PORT_C);
 		}
 
-		if (!found && (intel_de_read(dev_priv, GEN3_SDVOC) & SDVO_DETECTED)) {
+		if (!found && (intel_de_read(display, GEN3_SDVOC) & SDVO_DETECTED)) {
 
-			if (IS_G4X(dev_priv)) {
-				drm_dbg_kms(&dev_priv->drm,
+			if (display->platform.g4x) {
+				drm_dbg_kms(display->drm,
 					    "probing HDMI on SDVOC\n");
 				g4x_hdmi_init(display, GEN4_HDMIC, PORT_C);
 			}
-			if (IS_G4X(dev_priv))
+			if (display->platform.g4x)
 				g4x_dp_init(display, DP_C, PORT_C);
 		}
 
-		if (IS_G4X(dev_priv) && (intel_de_read(dev_priv, DP_D) & DP_DETECTED))
+		if (display->platform.g4x && (intel_de_read(display, DP_D) & DP_DETECTED))
 			g4x_dp_init(display, DP_D, PORT_D);
 
-		if (SUPPORTS_TV(dev_priv))
+		if (SUPPORTS_TV(display))
 			intel_tv_init(display);
-	} else if (DISPLAY_VER(dev_priv) == 2) {
-		if (IS_I85X(dev_priv))
+	} else if (DISPLAY_VER(display) == 2) {
+		if (display->platform.i85x)
 			intel_lvds_init(dev_priv);
 
 		intel_crt_init(display);
 		intel_dvo_init(dev_priv);
 	}
 
-	for_each_intel_encoder(&dev_priv->drm, encoder) {
+	for_each_intel_encoder(display->drm, encoder) {
 		encoder->base.possible_crtcs =
 			intel_encoder_possible_crtcs(encoder);
 		encoder->base.possible_clones =
@@ -7844,7 +7849,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 	intel_init_pch_refclk(dev_priv);
 
-	drm_helper_move_panel_connectors_to_head(&dev_priv->drm);
+	drm_helper_move_panel_connectors_to_head(display->drm);
 }
 
 static int max_dotclock(struct drm_i915_private *i915)
@@ -8061,32 +8066,34 @@ static const struct intel_display_funcs i9xx_display_funcs = {
 
 /**
  * intel_init_display_hooks - initialize the display modesetting hooks
- * @dev_priv: device private
+ * @display: display device private
  */
-void intel_init_display_hooks(struct drm_i915_private *dev_priv)
+void intel_init_display_hooks(struct intel_display *display)
 {
-	if (DISPLAY_VER(dev_priv) >= 9) {
-		dev_priv->display.funcs.display = &skl_display_funcs;
-	} else if (HAS_DDI(dev_priv)) {
-		dev_priv->display.funcs.display = &ddi_display_funcs;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	if (DISPLAY_VER(display) >= 9) {
+		display->funcs.display = &skl_display_funcs;
+	} else if (HAS_DDI(display)) {
+		display->funcs.display = &ddi_display_funcs;
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
-		dev_priv->display.funcs.display = &pch_split_display_funcs;
-	} else if (IS_CHERRYVIEW(dev_priv) ||
-		   IS_VALLEYVIEW(dev_priv)) {
-		dev_priv->display.funcs.display = &vlv_display_funcs;
+		display->funcs.display = &pch_split_display_funcs;
+	} else if (display->platform.cherryview ||
+		   display->platform.valleyview) {
+		display->funcs.display = &vlv_display_funcs;
 	} else {
-		dev_priv->display.funcs.display = &i9xx_display_funcs;
+		display->funcs.display = &i9xx_display_funcs;
 	}
 }
 
-int intel_initial_commit(struct drm_device *dev)
+int intel_initial_commit(struct intel_display *display)
 {
 	struct drm_atomic_state *state = NULL;
 	struct drm_modeset_acquire_ctx ctx;
 	struct intel_crtc *crtc;
 	int ret = 0;
 
-	state = drm_atomic_state_alloc(dev);
+	state = drm_atomic_state_alloc(display->drm);
 	if (!state)
 		return -ENOMEM;
 
@@ -8096,7 +8103,7 @@ int intel_initial_commit(struct drm_device *dev)
 	to_intel_atomic_state(state)->internal = true;
 
 retry:
-	for_each_intel_crtc(dev, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			intel_atomic_get_crtc_state(state, crtc);
 
@@ -8120,7 +8127,7 @@ int intel_initial_commit(struct drm_device *dev)
 			 */
 			crtc_state->uapi.color_mgmt_changed = true;
 
-			for_each_intel_encoder_mask(dev, encoder,
+			for_each_intel_encoder_mask(display->drm, encoder,
 						    crtc_state->uapi.encoder_mask) {
 				if (encoder->initial_fastset_check &&
 				    !encoder->initial_fastset_check(encoder, crtc_state)) {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 45d70d3e1041..83a820b72a6e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -457,7 +457,6 @@ int vlv_get_cck_clock(struct drm_i915_private *dev_priv,
 		      const char *name, u32 reg, int ref_freq);
 int vlv_get_cck_clock_hpll(struct drm_i915_private *dev_priv,
 			   const char *name, u32 reg);
-void intel_init_display_hooks(struct drm_i915_private *dev_priv);
 bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv);
 void intel_encoder_destroy(struct drm_encoder *encoder);
 struct drm_display_mode *
@@ -541,11 +540,11 @@ void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
 					  struct intel_power_domain_mask *domains);
 
 /* interface for intel_display_driver.c */
-void intel_setup_outputs(struct drm_i915_private *i915);
-int intel_initial_commit(struct drm_device *dev);
-void intel_panel_sanitize_ssc(struct drm_i915_private *i915);
-void intel_update_czclk(struct drm_i915_private *i915);
-void intel_atomic_helper_free_state_worker(struct work_struct *work);
+void intel_init_display_hooks(struct intel_display *display);
+void intel_setup_outputs(struct intel_display *display);
+int intel_initial_commit(struct intel_display *display);
+void intel_panel_sanitize_ssc(struct intel_display *display);
+void intel_update_czclk(struct intel_display *display);
 enum drm_mode_status intel_mode_valid(struct drm_device *dev,
 				      const struct drm_display_mode *mode);
 int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 68d0753659e8..31740a677dd8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -199,7 +199,7 @@ void intel_display_driver_early_probe(struct intel_display *display)
 	intel_init_cdclk_hooks(display);
 	intel_audio_hooks_init(display);
 	intel_dpll_init_clock_hook(i915);
-	intel_init_display_hooks(i915);
+	intel_init_display_hooks(display);
 	intel_fdi_init_hook(display);
 	intel_dmc_wl_init(display);
 }
@@ -431,7 +431,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 
 	intel_wm_init(i915);
 
-	intel_panel_sanitize_ssc(i915);
+	intel_panel_sanitize_ssc(display);
 
 	intel_pps_setup(display);
 
@@ -451,7 +451,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 	intel_shared_dpll_init(display);
 	intel_fdi_pll_freq_update(display);
 
-	intel_update_czclk(i915);
+	intel_update_czclk(display);
 	intel_display_driver_init_hw(display);
 	intel_dpll_update_ref_clks(display);
 
@@ -462,7 +462,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 
 	/* Just disable it once at startup */
 	intel_vga_disable(display);
-	intel_setup_outputs(i915);
+	intel_setup_outputs(display);
 
 	ret = intel_dp_tunnel_mgr_init(display);
 	if (ret)
@@ -517,7 +517,7 @@ int intel_display_driver_probe(struct intel_display *display)
 	 * are already calculated and there is no assert_plane warnings
 	 * during bootup.
 	 */
-	ret = intel_initial_commit(display->drm);
+	ret = intel_initial_commit(display);
 	if (ret)
 		drm_dbg_kms(display->drm, "Initial modeset failed, %d\n", ret);
 
-- 
2.39.5

