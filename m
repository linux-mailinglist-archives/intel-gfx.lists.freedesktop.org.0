Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AAC68183B
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 19:06:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3D610E12B;
	Mon, 30 Jan 2023 18:06:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A88510E107
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 18:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675101963; x=1706637963;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZUNuplxc2od0RCbBKsm1sF1KVH8ZcUuNfP2PEceBK+o=;
 b=SMU03G5wnnto+KUhNn9JlVMdqqQTcutDmrcukgeaWdiUjVmHBRWKD3CZ
 +B6NJbWbKgLtrk5v1tACwWPrytS7iAxqnwDH7umQcaSL/HSYavW+EBBZk
 nvmqy5ISqqIuzxOOImqDLVmf2y6UPFGm7WVrtTIx051MepOgpOcFLJ82f
 NpPRC4dFcsjkDp6dAvKNGrl4T49EJ0tirZRQf52bbW7FNG7TRn5Z6ao5M
 ngcSv38hn2EQsbc2EDnL/ayftdQntECJoSvUF2DHAkH8DBBqo86CEjkup
 6EwZdrSAu+zAI1wyk6gDrn+oasv5rKhBZ2aVR7T6xz1mlhD8FMdIxZAeP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="329742258"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="329742258"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 10:06:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="752918172"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="752918172"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 30 Jan 2023 10:06:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Jan 2023 20:06:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 20:05:39 +0200
Message-Id: <20230130180540.8972-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
References: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/lvds: s/intel_encoder/encoder/ etc.
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

Get rid of the some of the annoying aliasing drm_ vs.
intel_ encoder/connector variables. Just prefer the
intel_ types.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c | 130 +++++++++++-----------
 1 file changed, 62 insertions(+), 68 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 295d7b9fc399..37969aac91b4 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -384,19 +384,19 @@ static void intel_lvds_shutdown(struct intel_encoder *encoder)
 }
 
 static enum drm_mode_status
-intel_lvds_mode_valid(struct drm_connector *connector,
+intel_lvds_mode_valid(struct drm_connector *_connector,
 		      struct drm_display_mode *mode)
 {
-	struct intel_connector *intel_connector = to_intel_connector(connector);
+	struct intel_connector *connector = to_intel_connector(_connector);
 	const struct drm_display_mode *fixed_mode =
-		intel_panel_fixed_mode(intel_connector, mode);
-	int max_pixclk = to_i915(connector->dev)->max_dotclk_freq;
+		intel_panel_fixed_mode(connector, mode);
+	int max_pixclk = to_i915(connector->base.dev)->max_dotclk_freq;
 	enum drm_mode_status status;
 
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return MODE_NO_DBLESCAN;
 
-	status = intel_panel_mode_valid(intel_connector, mode);
+	status = intel_panel_mode_valid(connector, mode);
 	if (status != MODE_OK)
 		return status;
 
@@ -406,15 +406,13 @@ intel_lvds_mode_valid(struct drm_connector *connector,
 	return MODE_OK;
 }
 
-static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
+static int intel_lvds_compute_config(struct intel_encoder *encoder,
 				     struct intel_crtc_state *pipe_config,
 				     struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(intel_encoder->base.dev);
-	struct intel_lvds_encoder *lvds_encoder =
-		to_lvds_encoder(intel_encoder);
-	struct intel_connector *intel_connector =
-		lvds_encoder->attached_connector;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
+	struct intel_connector *connector = lvds_encoder->attached_connector;
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	unsigned int lvds_bpp;
@@ -446,7 +444,7 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 	 * with the panel scaling set up to source from the H/VDisplay
 	 * of the original mode.
 	 */
-	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
+	ret = intel_panel_compute_config(connector, adjusted_mode);
 	if (ret)
 		return ret;
 
@@ -472,19 +470,19 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 /*
  * Return the list of DDC modes if available, or the BIOS fixed mode otherwise.
  */
-static int intel_lvds_get_modes(struct drm_connector *connector)
+static int intel_lvds_get_modes(struct drm_connector *_connector)
 {
-	struct intel_connector *intel_connector = to_intel_connector(connector);
-	const struct drm_edid *fixed_edid = intel_connector->panel.fixed_edid;
+	struct intel_connector *connector = to_intel_connector(_connector);
+	const struct drm_edid *fixed_edid = connector->panel.fixed_edid;
 
 	/* Use panel fixed edid if we have one */
 	if (!IS_ERR_OR_NULL(fixed_edid)) {
-		drm_edid_connector_update(connector, fixed_edid);
+		drm_edid_connector_update(&connector->base, fixed_edid);
 
-		return drm_edid_connector_add_modes(connector);
+		return drm_edid_connector_add_modes(&connector->base);
 	}
 
-	return intel_panel_get_modes(intel_connector);
+	return intel_panel_get_modes(connector);
 }
 
 static const struct drm_connector_helper_funcs intel_lvds_connector_helper_funcs = {
@@ -832,11 +830,9 @@ static void intel_lvds_add_properties(struct drm_connector *connector)
 void intel_lvds_init(struct drm_i915_private *i915)
 {
 	struct intel_lvds_encoder *lvds_encoder;
-	struct intel_encoder *intel_encoder;
-	struct intel_connector *intel_connector;
-	struct drm_connector *connector;
-	struct drm_encoder *encoder;
+	struct intel_connector *connector;
 	const struct drm_edid *drm_edid;
+	struct intel_encoder *encoder;
 	i915_reg_t lvds_reg;
 	u32 lvds;
 	u8 pin;
@@ -881,55 +877,53 @@ void intel_lvds_init(struct drm_i915_private *i915)
 	if (!lvds_encoder)
 		return;
 
-	intel_connector = intel_connector_alloc();
-	if (!intel_connector) {
+	connector = intel_connector_alloc();
+	if (!connector) {
 		kfree(lvds_encoder);
 		return;
 	}
 
-	lvds_encoder->attached_connector = intel_connector;
+	lvds_encoder->attached_connector = connector;
+	encoder = &lvds_encoder->base;
 
-	intel_encoder = &lvds_encoder->base;
-	encoder = &intel_encoder->base;
-	connector = &intel_connector->base;
-	drm_connector_init(&i915->drm, &intel_connector->base, &intel_lvds_connector_funcs,
+	drm_connector_init(&i915->drm, &connector->base, &intel_lvds_connector_funcs,
 			   DRM_MODE_CONNECTOR_LVDS);
 
-	drm_encoder_init(&i915->drm, &intel_encoder->base, &intel_lvds_enc_funcs,
+	drm_encoder_init(&i915->drm, &encoder->base, &intel_lvds_enc_funcs,
 			 DRM_MODE_ENCODER_LVDS, "LVDS");
 
-	intel_encoder->enable = intel_enable_lvds;
-	intel_encoder->pre_enable = intel_pre_enable_lvds;
-	intel_encoder->compute_config = intel_lvds_compute_config;
+	encoder->enable = intel_enable_lvds;
+	encoder->pre_enable = intel_pre_enable_lvds;
+	encoder->compute_config = intel_lvds_compute_config;
 	if (HAS_PCH_SPLIT(i915)) {
-		intel_encoder->disable = pch_disable_lvds;
-		intel_encoder->post_disable = pch_post_disable_lvds;
+		encoder->disable = pch_disable_lvds;
+		encoder->post_disable = pch_post_disable_lvds;
 	} else {
-		intel_encoder->disable = gmch_disable_lvds;
+		encoder->disable = gmch_disable_lvds;
 	}
-	intel_encoder->get_hw_state = intel_lvds_get_hw_state;
-	intel_encoder->get_config = intel_lvds_get_config;
-	intel_encoder->update_pipe = intel_backlight_update;
-	intel_encoder->shutdown = intel_lvds_shutdown;
-	intel_connector->get_hw_state = intel_connector_get_hw_state;
+	encoder->get_hw_state = intel_lvds_get_hw_state;
+	encoder->get_config = intel_lvds_get_config;
+	encoder->update_pipe = intel_backlight_update;
+	encoder->shutdown = intel_lvds_shutdown;
+	connector->get_hw_state = intel_connector_get_hw_state;
 
-	intel_connector_attach_encoder(intel_connector, intel_encoder);
+	intel_connector_attach_encoder(connector, encoder);
 
-	intel_encoder->type = INTEL_OUTPUT_LVDS;
-	intel_encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
-	intel_encoder->port = PORT_NONE;
-	intel_encoder->cloneable = 0;
+	encoder->type = INTEL_OUTPUT_LVDS;
+	encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
+	encoder->port = PORT_NONE;
+	encoder->cloneable = 0;
 	if (DISPLAY_VER(i915) < 4)
-		intel_encoder->pipe_mask = BIT(PIPE_B);
+		encoder->pipe_mask = BIT(PIPE_B);
 	else
-		intel_encoder->pipe_mask = ~0;
+		encoder->pipe_mask = ~0;
 
-	drm_connector_helper_add(connector, &intel_lvds_connector_helper_funcs);
-	connector->display_info.subpixel_order = SubPixelHorizontalRGB;
+	drm_connector_helper_add(&connector->base, &intel_lvds_connector_helper_funcs);
+	connector->base.display_info.subpixel_order = SubPixelHorizontalRGB;
 
 	lvds_encoder->reg = lvds_reg;
 
-	intel_lvds_add_properties(connector);
+	intel_lvds_add_properties(&connector->base);
 
 	intel_lvds_pps_get_hw_state(i915, &lvds_encoder->init_pps);
 	lvds_encoder->init_lvds_val = lvds;
@@ -951,7 +945,7 @@ void intel_lvds_init(struct drm_i915_private *i915)
 		const struct edid *edid;
 
 		/* FIXME: Make drm_get_edid_switcheroo() return drm_edid */
-		edid = drm_get_edid_switcheroo(connector,
+		edid = drm_get_edid_switcheroo(&connector->base,
 					       intel_gmbus_get_adapter(i915, pin));
 		if (edid) {
 			drm_edid = drm_edid_alloc(edid, (edid->extensions + 1) * EDID_LENGTH);
@@ -960,46 +954,46 @@ void intel_lvds_init(struct drm_i915_private *i915)
 			drm_edid = NULL;
 		}
 	} else {
-		drm_edid = drm_edid_read_ddc(connector,
+		drm_edid = drm_edid_read_ddc(&connector->base,
 					     intel_gmbus_get_adapter(i915, pin));
 	}
 	if (drm_edid) {
-		if (drm_edid_connector_update(connector, drm_edid) ||
-		    !drm_edid_connector_add_modes(connector)) {
-			drm_edid_connector_update(connector, NULL);
+		if (drm_edid_connector_update(&connector->base, drm_edid) ||
+		    !drm_edid_connector_add_modes(&connector->base)) {
+			drm_edid_connector_update(&connector->base, NULL);
 			drm_edid_free(drm_edid);
 			drm_edid = ERR_PTR(-EINVAL);
 		}
 	} else {
 		drm_edid = ERR_PTR(-ENOENT);
 	}
-	intel_bios_init_panel_late(i915, &intel_connector->panel, NULL,
+	intel_bios_init_panel_late(i915, &connector->panel, NULL,
 				   IS_ERR(drm_edid) ? NULL : drm_edid);
 
 	/* Try EDID first */
-	intel_panel_add_edid_fixed_modes(intel_connector, true);
+	intel_panel_add_edid_fixed_modes(connector, true);
 
 	/* Failed to get EDID, what about VBT? */
-	if (!intel_panel_preferred_fixed_mode(intel_connector))
-		intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
+	if (!intel_panel_preferred_fixed_mode(connector))
+		intel_panel_add_vbt_lfp_fixed_mode(connector);
 
 	/*
 	 * If we didn't get a fixed mode from EDID or VBT, try checking
 	 * if the panel is already turned on.  If so, assume that
 	 * whatever is currently programmed is the correct mode.
 	 */
-	if (!intel_panel_preferred_fixed_mode(intel_connector))
-		intel_panel_add_encoder_fixed_mode(intel_connector, intel_encoder);
+	if (!intel_panel_preferred_fixed_mode(connector))
+		intel_panel_add_encoder_fixed_mode(connector, encoder);
 
 	mutex_unlock(&i915->drm.mode_config.mutex);
 
 	/* If we still don't have a mode after all that, give up. */
-	if (!intel_panel_preferred_fixed_mode(intel_connector))
+	if (!intel_panel_preferred_fixed_mode(connector))
 		goto failed;
 
-	intel_panel_init(intel_connector, drm_edid);
+	intel_panel_init(connector, drm_edid);
 
-	intel_backlight_setup(intel_connector, INVALID_PIPE);
+	intel_backlight_setup(connector, INVALID_PIPE);
 
 	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder);
 	drm_dbg_kms(&i915->drm, "detected %s-link lvds configuration\n",
@@ -1011,9 +1005,9 @@ void intel_lvds_init(struct drm_i915_private *i915)
 
 failed:
 	drm_dbg_kms(&i915->drm, "No LVDS modes found, disabling.\n");
-	drm_connector_cleanup(connector);
-	drm_encoder_cleanup(encoder);
+	drm_connector_cleanup(&connector->base);
+	drm_encoder_cleanup(&encoder->base);
 	kfree(lvds_encoder);
-	intel_connector_free(intel_connector);
+	intel_connector_free(connector);
 	return;
 }
-- 
2.39.1

