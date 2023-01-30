Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F73168183A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 19:06:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82EC110E10C;
	Mon, 30 Jan 2023 18:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A145510E107
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 18:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675101960; x=1706637960;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=b5ZeSR4JCQnPpZQkPAv9BnguUUPY5l/vUnQ+TM4tAsw=;
 b=OCpOlc9RAL/eyJGPZKW0GTIDAQlMgXohTrv3RnDcnyxzLFcw2ZTy2N9o
 kdVhwwgqt5rXaGu1e5+YibD6mEa1MSjoWUrWXudjhSurNp/ze1SuDbHHx
 vOpbbV8DCftL59rYh7MUFFxjQ0UnAq2IR1aGO8t3LBYepcW6IFtW4JQs0
 1UsAPrq3ugSuqXANBpKCeFxhIwqKCH5BSRiw2BdKsAqeGtleZTnC9Uqoq
 KbmMJQ2cSjvi+aPqTSLU5tFjIfNccgsBVEegq/wDujIQRNxsfe64DDP2F
 TZWq2EfMrjpSSs5xrv7FzCDk3V3krviNZIiy7hGQ2qnU+5fNuejD/J7zW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="329742240"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="329742240"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 10:06:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="752918154"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="752918154"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 30 Jan 2023 10:05:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Jan 2023 20:05:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 20:05:38 +0200
Message-Id: <20230130180540.8972-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
References: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/lvds: s/dev_priv/i915/
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

Do the customary s/dev_priv/i915/ rename and alising
'dev' pointer removal. Though various register definitons
still depend on the magic 'dev_priv' variable so not
a 100% conversion.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c | 111 +++++++++++-----------
 1 file changed, 54 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index a5ead4e56ec2..295d7b9fc399 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -85,15 +85,15 @@ static struct intel_lvds_encoder *to_lvds_encoder(struct intel_encoder *encoder)
 	return container_of(encoder, struct intel_lvds_encoder, base);
 }
 
-bool intel_lvds_port_enabled(struct drm_i915_private *dev_priv,
+bool intel_lvds_port_enabled(struct drm_i915_private *i915,
 			     i915_reg_t lvds_reg, enum pipe *pipe)
 {
 	u32 val;
 
-	val = intel_de_read(dev_priv, lvds_reg);
+	val = intel_de_read(i915, lvds_reg);
 
 	/* asserts want to know the pipe even if the port is disabled */
-	if (HAS_PCH_CPT(dev_priv))
+	if (HAS_PCH_CPT(i915))
 		*pipe = REG_FIELD_GET(LVDS_PIPE_SEL_MASK_CPT, val);
 	else
 		*pipe = REG_FIELD_GET(LVDS_PIPE_SEL_MASK, val);
@@ -104,19 +104,18 @@ bool intel_lvds_port_enabled(struct drm_i915_private *dev_priv,
 static bool intel_lvds_get_hw_state(struct intel_encoder *encoder,
 				    enum pipe *pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	intel_wakeref_t wakeref;
 	bool ret;
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
-						     encoder->power_domain);
+	wakeref = intel_display_power_get_if_enabled(i915, encoder->power_domain);
 	if (!wakeref)
 		return false;
 
-	ret = intel_lvds_port_enabled(dev_priv, lvds_encoder->reg, pipe);
+	ret = intel_lvds_port_enabled(i915, lvds_encoder->reg, pipe);
 
-	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
+	intel_display_power_put(i915, encoder->power_domain, wakeref);
 
 	return ret;
 }
@@ -236,26 +235,25 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
 				  const struct drm_connector_state *conn_state)
 {
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	enum pipe pipe = crtc->pipe;
 	u32 temp;
 
-	if (HAS_PCH_SPLIT(dev_priv)) {
-		assert_fdi_rx_pll_disabled(dev_priv, pipe);
-		assert_shared_dpll_disabled(dev_priv,
-					    pipe_config->shared_dpll);
+	if (HAS_PCH_SPLIT(i915)) {
+		assert_fdi_rx_pll_disabled(i915, pipe);
+		assert_shared_dpll_disabled(i915, pipe_config->shared_dpll);
 	} else {
-		assert_pll_disabled(dev_priv, pipe);
+		assert_pll_disabled(i915, pipe);
 	}
 
-	intel_lvds_pps_init_hw(dev_priv, &lvds_encoder->init_pps);
+	intel_lvds_pps_init_hw(i915, &lvds_encoder->init_pps);
 
 	temp = lvds_encoder->init_lvds_val;
 	temp |= LVDS_PORT_EN | LVDS_A0A2_CLKA_POWER_UP;
 
-	if (HAS_PCH_CPT(dev_priv)) {
+	if (HAS_PCH_CPT(i915)) {
 		temp &= ~LVDS_PIPE_SEL_MASK_CPT;
 		temp |= LVDS_PIPE_SEL_CPT(pipe);
 	} else {
@@ -290,7 +288,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
 	 * special lvds dither control bit on pch-split platforms, dithering is
 	 * only controlled through the PIPECONF reg.
 	 */
-	if (DISPLAY_VER(dev_priv) == 4) {
+	if (DISPLAY_VER(i915) == 4) {
 		/*
 		 * Bspec wording suggests that LVDS port dithering only exists
 		 * for 18bpp panels.
@@ -306,7 +304,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_NVSYNC)
 		temp |= LVDS_VSYNC_POLARITY;
 
-	intel_de_write(dev_priv, lvds_encoder->reg, temp);
+	intel_de_write(i915, lvds_encoder->reg, temp);
 }
 
 /*
@@ -317,9 +315,8 @@ static void intel_enable_lvds(struct intel_atomic_state *state,
 			      const struct intel_crtc_state *pipe_config,
 			      const struct drm_connector_state *conn_state)
 {
-	struct drm_device *dev = encoder->base.dev;
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	intel_de_rmw(dev_priv, lvds_encoder->reg, 0, LVDS_PORT_EN);
 
@@ -413,7 +410,7 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 				     struct intel_crtc_state *pipe_config,
 				     struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(intel_encoder->base.dev);
 	struct intel_lvds_encoder *lvds_encoder =
 		to_lvds_encoder(intel_encoder);
 	struct intel_connector *intel_connector =
@@ -424,8 +421,8 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 	int ret;
 
 	/* Should never happen!! */
-	if (DISPLAY_VER(dev_priv) < 4 && crtc->pipe == 0) {
-		drm_err(&dev_priv->drm, "Can't support LVDS on pipe A\n");
+	if (DISPLAY_VER(i915) < 4 && crtc->pipe == 0) {
+		drm_err(&i915->drm, "Can't support LVDS on pipe A\n");
 		return -EINVAL;
 	}
 
@@ -435,7 +432,7 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 		lvds_bpp = 6*3;
 
 	if (lvds_bpp != pipe_config->pipe_bpp && !pipe_config->bw_constrained) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "forcing display bpp (was %d) to LVDS (%d)\n",
 			    pipe_config->pipe_bpp, lvds_bpp);
 		pipe_config->pipe_bpp = lvds_bpp;
@@ -456,7 +453,7 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
-	if (HAS_PCH_SPLIT(dev_priv))
+	if (HAS_PCH_SPLIT(i915))
 		pipe_config->has_pch_encoder = true;
 
 	ret = intel_panel_fitting(pipe_config, conn_state);
@@ -765,11 +762,11 @@ static const struct dmi_system_id intel_dual_link_lvds[] = {
 	{ }	/* terminating entry */
 };
 
-struct intel_encoder *intel_get_lvds_encoder(struct drm_i915_private *dev_priv)
+struct intel_encoder *intel_get_lvds_encoder(struct drm_i915_private *i915)
 {
 	struct intel_encoder *encoder;
 
-	for_each_intel_encoder(&dev_priv->drm, encoder) {
+	for_each_intel_encoder(&i915->drm, encoder) {
 		if (encoder->type == INTEL_OUTPUT_LVDS)
 			return encoder;
 	}
@@ -777,24 +774,24 @@ struct intel_encoder *intel_get_lvds_encoder(struct drm_i915_private *dev_priv)
 	return NULL;
 }
 
-bool intel_is_dual_link_lvds(struct drm_i915_private *dev_priv)
+bool intel_is_dual_link_lvds(struct drm_i915_private *i915)
 {
-	struct intel_encoder *encoder = intel_get_lvds_encoder(dev_priv);
+	struct intel_encoder *encoder = intel_get_lvds_encoder(i915);
 
 	return encoder && to_lvds_encoder(encoder)->is_dual_link;
 }
 
 static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(lvds_encoder->base.base.dev);
+	struct drm_i915_private *i915 = to_i915(lvds_encoder->base.base.dev);
 	struct intel_connector *connector = lvds_encoder->attached_connector;
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_preferred_fixed_mode(connector);
 	unsigned int val;
 
 	/* use the module option value if specified */
-	if (dev_priv->params.lvds_channel_mode > 0)
-		return dev_priv->params.lvds_channel_mode == 2;
+	if (i915->params.lvds_channel_mode > 0)
+		return i915->params.lvds_channel_mode == 2;
 
 	/* single channel LVDS is limited to 112 MHz */
 	if (fixed_mode->clock > 112999)
@@ -809,8 +806,8 @@ static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder)
 	 * we need to check "the value to be set" in VBT when LVDS
 	 * register is uninitialized.
 	 */
-	val = intel_de_read(dev_priv, lvds_encoder->reg);
-	if (HAS_PCH_CPT(dev_priv))
+	val = intel_de_read(i915, lvds_encoder->reg);
+	if (HAS_PCH_CPT(i915))
 		val &= ~(LVDS_DETECTED | LVDS_PIPE_SEL_MASK_CPT);
 	else
 		val &= ~(LVDS_DETECTED | LVDS_PIPE_SEL_MASK);
@@ -827,12 +824,12 @@ static void intel_lvds_add_properties(struct drm_connector *connector)
 
 /**
  * intel_lvds_init - setup LVDS connectors on this device
- * @dev_priv: i915 device
+ * @i915: i915 device
  *
  * Create the connector, register the LVDS DDC bus, and try to figure out what
  * modes we can display on the LVDS panel (if present).
  */
-void intel_lvds_init(struct drm_i915_private *dev_priv)
+void intel_lvds_init(struct drm_i915_private *i915)
 {
 	struct intel_lvds_encoder *lvds_encoder;
 	struct intel_encoder *intel_encoder;
@@ -846,37 +843,37 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 
 	/* Skip init on machines we know falsely report LVDS */
 	if (dmi_check_system(intel_no_lvds)) {
-		drm_WARN(&dev_priv->drm, !dev_priv->display.vbt.int_lvds_support,
+		drm_WARN(&i915->drm, !i915->display.vbt.int_lvds_support,
 			 "Useless DMI match. Internal LVDS support disabled by VBT\n");
 		return;
 	}
 
-	if (!dev_priv->display.vbt.int_lvds_support) {
-		drm_dbg_kms(&dev_priv->drm,
+	if (!i915->display.vbt.int_lvds_support) {
+		drm_dbg_kms(&i915->drm,
 			    "Internal LVDS support disabled by VBT\n");
 		return;
 	}
 
-	if (HAS_PCH_SPLIT(dev_priv))
+	if (HAS_PCH_SPLIT(i915))
 		lvds_reg = PCH_LVDS;
 	else
 		lvds_reg = LVDS;
 
-	lvds = intel_de_read(dev_priv, lvds_reg);
+	lvds = intel_de_read(i915, lvds_reg);
 
-	if (HAS_PCH_SPLIT(dev_priv)) {
+	if (HAS_PCH_SPLIT(i915)) {
 		if ((lvds & LVDS_DETECTED) == 0)
 			return;
 	}
 
 	pin = GMBUS_PIN_PANEL;
-	if (!intel_bios_is_lvds_present(dev_priv, &pin)) {
+	if (!intel_bios_is_lvds_present(i915, &pin)) {
 		if ((lvds & LVDS_PORT_EN) == 0) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(&i915->drm,
 				    "LVDS is not present in VBT\n");
 			return;
 		}
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "LVDS is not present in VBT, but enabled anyway\n");
 	}
 
@@ -895,16 +892,16 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	intel_encoder = &lvds_encoder->base;
 	encoder = &intel_encoder->base;
 	connector = &intel_connector->base;
-	drm_connector_init(&dev_priv->drm, &intel_connector->base, &intel_lvds_connector_funcs,
+	drm_connector_init(&i915->drm, &intel_connector->base, &intel_lvds_connector_funcs,
 			   DRM_MODE_CONNECTOR_LVDS);
 
-	drm_encoder_init(&dev_priv->drm, &intel_encoder->base, &intel_lvds_enc_funcs,
+	drm_encoder_init(&i915->drm, &intel_encoder->base, &intel_lvds_enc_funcs,
 			 DRM_MODE_ENCODER_LVDS, "LVDS");
 
 	intel_encoder->enable = intel_enable_lvds;
 	intel_encoder->pre_enable = intel_pre_enable_lvds;
 	intel_encoder->compute_config = intel_lvds_compute_config;
-	if (HAS_PCH_SPLIT(dev_priv)) {
+	if (HAS_PCH_SPLIT(i915)) {
 		intel_encoder->disable = pch_disable_lvds;
 		intel_encoder->post_disable = pch_post_disable_lvds;
 	} else {
@@ -922,7 +919,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	intel_encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
 	intel_encoder->port = PORT_NONE;
 	intel_encoder->cloneable = 0;
-	if (DISPLAY_VER(dev_priv) < 4)
+	if (DISPLAY_VER(i915) < 4)
 		intel_encoder->pipe_mask = BIT(PIPE_B);
 	else
 		intel_encoder->pipe_mask = ~0;
@@ -934,7 +931,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 
 	intel_lvds_add_properties(connector);
 
-	intel_lvds_pps_get_hw_state(dev_priv, &lvds_encoder->init_pps);
+	intel_lvds_pps_get_hw_state(i915, &lvds_encoder->init_pps);
 	lvds_encoder->init_lvds_val = lvds;
 
 	/*
@@ -949,13 +946,13 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	 * Attempt to get the fixed panel mode from DDC.  Assume that the
 	 * preferred mode is the right one.
 	 */
-	mutex_lock(&dev_priv->drm.mode_config.mutex);
+	mutex_lock(&i915->drm.mode_config.mutex);
 	if (vga_switcheroo_handler_flags() & VGA_SWITCHEROO_CAN_SWITCH_DDC) {
 		const struct edid *edid;
 
 		/* FIXME: Make drm_get_edid_switcheroo() return drm_edid */
 		edid = drm_get_edid_switcheroo(connector,
-					       intel_gmbus_get_adapter(dev_priv, pin));
+					       intel_gmbus_get_adapter(i915, pin));
 		if (edid) {
 			drm_edid = drm_edid_alloc(edid, (edid->extensions + 1) * EDID_LENGTH);
 			kfree(edid);
@@ -964,7 +961,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 		}
 	} else {
 		drm_edid = drm_edid_read_ddc(connector,
-					     intel_gmbus_get_adapter(dev_priv, pin));
+					     intel_gmbus_get_adapter(i915, pin));
 	}
 	if (drm_edid) {
 		if (drm_edid_connector_update(connector, drm_edid) ||
@@ -976,7 +973,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	} else {
 		drm_edid = ERR_PTR(-ENOENT);
 	}
-	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, NULL,
+	intel_bios_init_panel_late(i915, &intel_connector->panel, NULL,
 				   IS_ERR(drm_edid) ? NULL : drm_edid);
 
 	/* Try EDID first */
@@ -994,7 +991,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	if (!intel_panel_preferred_fixed_mode(intel_connector))
 		intel_panel_add_encoder_fixed_mode(intel_connector, intel_encoder);
 
-	mutex_unlock(&dev_priv->drm.mode_config.mutex);
+	mutex_unlock(&i915->drm.mode_config.mutex);
 
 	/* If we still don't have a mode after all that, give up. */
 	if (!intel_panel_preferred_fixed_mode(intel_connector))
@@ -1005,7 +1002,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	intel_backlight_setup(intel_connector, INVALID_PIPE);
 
 	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder);
-	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n",
+	drm_dbg_kms(&i915->drm, "detected %s-link lvds configuration\n",
 		    lvds_encoder->is_dual_link ? "dual" : "single");
 
 	lvds_encoder->a3_power = lvds & LVDS_A3_POWER_MASK;
@@ -1013,7 +1010,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	return;
 
 failed:
-	drm_dbg_kms(&dev_priv->drm, "No LVDS modes found, disabling.\n");
+	drm_dbg_kms(&i915->drm, "No LVDS modes found, disabling.\n");
 	drm_connector_cleanup(connector);
 	drm_encoder_cleanup(encoder);
 	kfree(lvds_encoder);
-- 
2.39.1

