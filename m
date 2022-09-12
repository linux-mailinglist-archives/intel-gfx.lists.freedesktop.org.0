Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A345B5934
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:19:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF58E10E3D5;
	Mon, 12 Sep 2022 11:19:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5477B10E3B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981550; x=1694517550;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JyEgn+vxlDhvmkE8iLvZtJEcH1XBGrPhtUSf/M80JNE=;
 b=BDmiTuD7TD5WHpO4lOtH0A2yfXqEH3RyOsWTHyC4HP9MyNwh6weKKioB
 nIwVVAAYNpSR3kRSsXd7Ghqw67GhV6NhpERRjDh46eMmHKrYjhVnT6ATv
 ZZK9BzdPx5/cTVoYJlSmkkoYPVUm/GE5qHeRcB9Tdx+jZNq+AFi1nXXqE
 xZn12zjtQKR4t8ptP7cLxqWhVzI3ZDPgFihIobSzCJO4daGy2hz7cocoj
 4ARynMnaaOwMSiwufn6Qr/0BDl4ALwQ+3DpAxmdKLj/l+IA/sjOUrd8E0
 MVD2EJ+NXdN1/220BEilbCtvo0iGVyRaEIn8mMz/zHqY3tVYbmiOw0t6l w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="298640812"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="298640812"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:19:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="649213715"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 12 Sep 2022 04:18:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 14:18:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:18:14 +0300
Message-Id: <20220912111814.17466-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/15] drm/i915: s/intel_connector/connector/ in
 init code
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

As we did with intel_encoder vs. encoder varaible names let's
do a quick s/intel_connector/connector/ pass over the
encoder/connector init functions. Cleans them up a little
bit more at least.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c      | 48 +++++------
 drivers/gpu/drm/i915/display/intel_crt.c    | 29 +++----
 drivers/gpu/drm/i915/display/intel_dp.c     | 71 ++++++++--------
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 36 ++++----
 drivers/gpu/drm/i915/display/intel_dvo.c    | 29 ++++---
 drivers/gpu/drm/i915/display/intel_hdmi.c   | 31 ++++---
 drivers/gpu/drm/i915/display/intel_lvds.c   | 61 +++++++-------
 drivers/gpu/drm/i915/display/intel_sdvo.c   | 91 ++++++++++-----------
 drivers/gpu/drm/i915/display/intel_tv.c     | 21 +++--
 drivers/gpu/drm/i915/display/vlv_dsi.c      | 49 ++++++-----
 10 files changed, 226 insertions(+), 240 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 2213d88daf38..33e945c1b5e8 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1983,8 +1983,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	struct drm_device *dev = &dev_priv->drm;
 	struct intel_dsi *intel_dsi;
 	struct intel_encoder *encoder;
-	struct intel_connector *intel_connector;
-	struct drm_connector *connector;
+	struct intel_connector *connector;
 	enum port port;
 
 	if (!intel_bios_is_dsi_present(dev_priv, &port))
@@ -1994,15 +1993,14 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	if (!intel_dsi)
 		return;
 
-	intel_connector = intel_connector_alloc();
-	if (!intel_connector) {
+	connector = intel_connector_alloc();
+	if (!connector) {
 		kfree(intel_dsi);
 		return;
 	}
 
 	encoder = &intel_dsi->base;
-	intel_dsi->attached_connector = intel_connector;
-	connector = &intel_connector->base;
+	intel_dsi->attached_connector = connector;
 
 	/* register DSI encoder with DRM subsystem */
 	drm_encoder_init(dev, &encoder->base, &gen11_dsi_encoder_funcs,
@@ -2029,40 +2027,42 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	encoder->is_clock_enabled = gen11_dsi_is_clock_enabled;
 
 	/* register DSI connector with DRM subsystem */
-	drm_connector_init(dev, connector, &gen11_dsi_connector_funcs,
+	drm_connector_init(dev, &connector->base,
+			   &gen11_dsi_connector_funcs,
 			   DRM_MODE_CONNECTOR_DSI);
-	drm_connector_helper_add(connector, &gen11_dsi_connector_helper_funcs);
-	connector->display_info.subpixel_order = SubPixelHorizontalRGB;
-	intel_connector->get_hw_state = intel_connector_get_hw_state;
+	drm_connector_helper_add(&connector->base,
+				 &gen11_dsi_connector_helper_funcs);
+	connector->base.display_info.subpixel_order = SubPixelHorizontalRGB;
+	connector->get_hw_state = intel_connector_get_hw_state;
 
 	/* attach connector to encoder */
-	intel_connector_attach_encoder(intel_connector, encoder);
+	intel_connector_attach_encoder(connector, encoder);
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL, NULL);
+	intel_bios_init_panel(dev_priv, &connector->panel, NULL, NULL);
 
 	mutex_lock(&dev->mode_config.mutex);
-	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
+	intel_panel_add_vbt_lfp_fixed_mode(connector);
 	mutex_unlock(&dev->mode_config.mutex);
 
-	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
+	if (!intel_panel_preferred_fixed_mode(connector)) {
 		drm_err(&dev_priv->drm, "DSI fixed mode info missing\n");
 		goto err;
 	}
 
-	intel_panel_init(intel_connector);
+	intel_panel_init(connector);
 
-	intel_backlight_setup(intel_connector, INVALID_PIPE);
+	intel_backlight_setup(connector, INVALID_PIPE);
 
-	if (intel_connector->panel.vbt.dsi.config->dual_link)
+	if (connector->panel.vbt.dsi.config->dual_link)
 		intel_dsi->ports = BIT(PORT_A) | BIT(PORT_B);
 	else
 		intel_dsi->ports = BIT(port);
 
-	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
-		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
+	if (drm_WARN_ON(&dev_priv->drm, connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
+		connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
 
-	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
-		intel_connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
+	if (drm_WARN_ON(&dev_priv->drm, connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
+		connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		struct intel_dsi_host *host;
@@ -2081,12 +2081,12 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 
 	icl_dphy_param_init(intel_dsi);
 
-	icl_dsi_add_properties(intel_connector);
+	icl_dsi_add_properties(connector);
 	return;
 
 err:
-	drm_connector_cleanup(connector);
+	drm_connector_cleanup(&connector->base);
 	drm_encoder_cleanup(&encoder->base);
 	kfree(intel_dsi);
-	kfree(intel_connector);
+	kfree(connector);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 9400af950691..383d4ade1b22 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -991,9 +991,8 @@ static const struct drm_encoder_funcs intel_crt_enc_funcs = {
 
 void intel_crt_init(struct drm_i915_private *dev_priv)
 {
-	struct drm_connector *connector;
+	struct intel_connector *connector;
 	struct intel_crt *crt;
-	struct intel_connector *intel_connector;
 	i915_reg_t adpa_reg;
 	u32 adpa;
 
@@ -1025,21 +1024,22 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 	if (!crt)
 		return;
 
-	intel_connector = intel_connector_alloc();
-	if (!intel_connector) {
+	connector = intel_connector_alloc();
+	if (!connector) {
 		kfree(crt);
 		return;
 	}
 
-	connector = &intel_connector->base;
-	crt->connector = intel_connector;
-	drm_connector_init(&dev_priv->drm, &intel_connector->base,
-			   &intel_crt_connector_funcs, DRM_MODE_CONNECTOR_VGA);
+	crt->connector = connector;
+
+	drm_connector_init(&dev_priv->drm, &connector->base,
+			   &intel_crt_connector_funcs,
+			   DRM_MODE_CONNECTOR_VGA);
 
 	drm_encoder_init(&dev_priv->drm, &crt->base.base, &intel_crt_enc_funcs,
 			 DRM_MODE_ENCODER_DAC, "CRT");
 
-	intel_connector_attach_encoder(intel_connector, &crt->base);
+	intel_connector_attach_encoder(connector, &crt->base);
 
 	crt->base.type = INTEL_OUTPUT_ANALOG;
 	crt->base.cloneable = BIT(INTEL_OUTPUT_DVO) | BIT(INTEL_OUTPUT_HDMI);
@@ -1049,7 +1049,7 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 		crt->base.pipe_mask = ~0;
 
 	if (DISPLAY_VER(dev_priv) != 2)
-		connector->interlace_allowed = true;
+		connector->base.interlace_allowed = true;
 
 	crt->adpa_reg = adpa_reg;
 
@@ -1059,9 +1059,9 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 	    !dmi_check_system(intel_spurious_crt_detect)) {
 		crt->base.hpd_pin = HPD_CRT;
 		crt->base.hotplug = intel_encoder_hotplug;
-		intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
+		connector->polled = DRM_CONNECTOR_POLL_HPD;
 	} else {
-		intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
+		connector->polled = DRM_CONNECTOR_POLL_CONNECT;
 	}
 
 	if (HAS_DDI(dev_priv)) {
@@ -1093,9 +1093,10 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 		crt->base.get_hw_state = intel_crt_get_hw_state;
 		crt->base.enable = intel_enable_crt;
 	}
-	intel_connector->get_hw_state = intel_connector_get_hw_state;
+	connector->get_hw_state = intel_connector_get_hw_state;
 
-	drm_connector_helper_add(connector, &intel_crt_connector_helper_funcs);
+	drm_connector_helper_add(&connector->base,
+				 &intel_crt_connector_helper_funcs);
 
 	/*
 	 * TODO: find a proper way to discover whether we need to set the the
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fa9931656383..814d4065910e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5233,11 +5233,10 @@ static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
 }
 
 static bool intel_edp_init_connector(struct intel_dp *intel_dp,
-				     struct intel_connector *intel_connector)
+				     struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct drm_device *dev = &dev_priv->drm;
-	struct drm_connector *connector = &intel_connector->base;
 	struct drm_display_mode *fixed_mode;
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool has_dpcd;
@@ -5275,18 +5274,18 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	}
 
 	mutex_lock(&dev->mode_config.mutex);
-	edid = drm_get_edid(connector, &intel_dp->aux.ddc);
+	edid = drm_get_edid(&connector->base, &intel_dp->aux.ddc);
 	if (!edid) {
 		/* Fallback to EDID from ACPI OpRegion, if any */
-		edid = intel_opregion_get_edid(intel_connector);
+		edid = intel_opregion_get_edid(connector);
 		if (edid)
 			drm_dbg_kms(&dev_priv->drm,
 				    "[CONNECTOR:%d:%s] Using OpRegion EDID\n",
-				    connector->base.id, connector->name);
+				    connector->base.base.id, connector->base.name);
 	}
 	if (edid) {
-		if (drm_add_edid_modes(connector, edid)) {
-			drm_connector_update_edid_property(connector, edid);
+		if (drm_add_edid_modes(&connector->base, edid)) {
+			drm_connector_update_edid_property(&connector->base, edid);
 		} else {
 			kfree(edid);
 			edid = ERR_PTR(-EINVAL);
@@ -5294,38 +5293,38 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	} else {
 		edid = ERR_PTR(-ENOENT);
 	}
-	intel_connector->edid = edid;
+	connector->edid = edid;
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel,
+	intel_bios_init_panel(dev_priv, &connector->panel,
 			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
 
-	intel_panel_add_edid_fixed_modes(intel_connector,
-					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE,
-					 intel_vrr_is_capable(intel_connector));
+	intel_panel_add_edid_fixed_modes(connector,
+					 connector->panel.vbt.drrs_type != DRRS_TYPE_NONE,
+					 intel_vrr_is_capable(connector));
 
 	/* MSO requires information from the EDID */
 	intel_edp_mso_init(intel_dp);
 
 	/* multiply the mode clock and horizontal timings for MSO */
-	list_for_each_entry(fixed_mode, &intel_connector->panel.fixed_modes, head)
-		intel_edp_mso_mode_fixup(intel_connector, fixed_mode);
+	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head)
+		intel_edp_mso_mode_fixup(connector, fixed_mode);
 
 	/* fallback to VBT if available for eDP */
-	if (!intel_panel_preferred_fixed_mode(intel_connector))
-		intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
+	if (!intel_panel_preferred_fixed_mode(connector))
+		intel_panel_add_vbt_lfp_fixed_mode(connector);
 
 	mutex_unlock(&dev->mode_config.mutex);
 
-	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
+	if (!intel_panel_preferred_fixed_mode(connector)) {
 		drm_info(&dev_priv->drm,
 			 "[ENCODER:%d:%s] failed to find fixed mode for the panel, disabling eDP\n",
 			 encoder->base.base.id, encoder->base.name);
 		goto out_vdd_off;
 	}
 
-	intel_panel_init(intel_connector);
+	intel_panel_init(connector);
 
-	intel_edp_backlight_setup(intel_dp, intel_connector);
+	intel_edp_backlight_setup(intel_dp, connector);
 
 	intel_edp_add_properties(intel_dp);
 
@@ -5364,9 +5363,8 @@ static void intel_dp_modeset_retry_work_fn(struct work_struct *work)
 
 bool
 intel_dp_init_connector(struct intel_digital_port *dig_port,
-			struct intel_connector *intel_connector)
+			struct intel_connector *connector)
 {
-	struct drm_connector *connector = &intel_connector->base;
 	struct intel_dp *intel_dp = &dig_port->dp;
 	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_device *dev = encoder->base.dev;
@@ -5376,7 +5374,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	int type;
 
 	/* Initialize the work for modeset in case of link train failure */
-	INIT_WORK(&intel_connector->modeset_retry_work,
+	INIT_WORK(&connector->modeset_retry_work,
 		  intel_dp_modeset_retry_work_fn);
 
 	if (drm_WARN(dev, dig_port->max_lanes < 1,
@@ -5391,7 +5389,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	/* Preserve the current hw state. */
 	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
-	intel_dp->attached_connector = intel_connector;
+	intel_dp->attached_connector = connector;
 
 	if (intel_dp_is_port_edp(dev_priv, port)) {
 		/*
@@ -5422,24 +5420,26 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		    type == DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
 		    encoder->base.base.id, encoder->base.name);
 
-	drm_connector_init(dev, connector, &intel_dp_connector_funcs, type);
-	drm_connector_helper_add(connector, &intel_dp_connector_helper_funcs);
+	drm_connector_init(dev, &connector->base,
+			   &intel_dp_connector_funcs, type);
+	drm_connector_helper_add(&connector->base,
+				 &intel_dp_connector_helper_funcs);
 
 	if (!HAS_GMCH(dev_priv))
-		connector->interlace_allowed = true;
+		connector->base.interlace_allowed = true;
 
-	intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
+	connector->polled = DRM_CONNECTOR_POLL_HPD;
 
 	intel_dp_aux_init(intel_dp);
 
-	intel_connector_attach_encoder(intel_connector, encoder);
+	intel_connector_attach_encoder(connector, encoder);
 
 	if (HAS_DDI(dev_priv))
-		intel_connector->get_hw_state = intel_ddi_connector_get_hw_state;
+		connector->get_hw_state = intel_ddi_connector_get_hw_state;
 	else
-		intel_connector->get_hw_state = intel_connector_get_hw_state;
+		connector->get_hw_state = intel_connector_get_hw_state;
 
-	if (!intel_edp_init_connector(intel_dp, intel_connector)) {
+	if (!intel_edp_init_connector(intel_dp, connector)) {
 		intel_dp_aux_fini(intel_dp);
 		goto fail;
 	}
@@ -5449,13 +5449,12 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	intel_dp_reset_max_link_params(intel_dp);
 
 	/* init MST on ports that can support it */
-	intel_dp_mst_encoder_init(dig_port,
-				  intel_connector->base.base.id);
+	intel_dp_mst_encoder_init(dig_port, connector->base.base.id);
 
-	intel_dp_add_properties(intel_dp, connector);
+	intel_dp_add_properties(intel_dp, &connector->base);
 
 	if (is_hdcp_supported(dev_priv, port) && !intel_dp_is_edp(intel_dp)) {
-		int ret = intel_dp_hdcp_init(dig_port, intel_connector);
+		int ret = intel_dp_hdcp_init(dig_port, connector);
 		if (ret)
 			drm_dbg_kms(&dev_priv->drm,
 				    "HDCP init failed, skipping.\n");
@@ -5479,7 +5478,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	return true;
 
 fail:
-	drm_connector_cleanup(connector);
+	drm_connector_cleanup(&connector->base);
 
 	return false;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index d98657a61527..5f95b2cb9efe 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -825,54 +825,54 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_device *dev = dig_port->base.base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_connector *intel_connector;
-	struct drm_connector *connector;
+	struct intel_connector *connector;
 	enum pipe pipe;
 	int ret;
 
-	intel_connector = intel_connector_alloc();
-	if (!intel_connector)
+	connector = intel_connector_alloc();
+	if (!connector)
 		return NULL;
 
-	intel_connector->get_hw_state = intel_dp_mst_get_hw_state;
-	intel_connector->mst_port = intel_dp;
-	intel_connector->port = port;
+	connector->get_hw_state = intel_dp_mst_get_hw_state;
+	connector->mst_port = intel_dp;
+	connector->port = port;
 	drm_dp_mst_get_port_malloc(port);
 
-	connector = &intel_connector->base;
-	ret = drm_connector_init(dev, connector, &intel_dp_mst_connector_funcs,
+	ret = drm_connector_init(dev, &connector->base,
+				 &intel_dp_mst_connector_funcs,
 				 DRM_MODE_CONNECTOR_DisplayPort);
 	if (ret) {
 		drm_dp_mst_put_port_malloc(port);
-		intel_connector_free(intel_connector);
+		intel_connector_free(connector);
 		return NULL;
 	}
 
-	drm_connector_helper_add(connector, &intel_dp_mst_connector_helper_funcs);
+	drm_connector_helper_add(&connector->base,
+				 &intel_dp_mst_connector_helper_funcs);
 
 	for_each_pipe(dev_priv, pipe) {
 		struct intel_encoder *encoder =
 			&intel_dp->mst_encoders[pipe]->base;
 
-		ret = drm_connector_attach_encoder(&intel_connector->base,
+		ret = drm_connector_attach_encoder(&connector->base,
 						   &encoder->base);
 		if (ret)
 			goto err;
 	}
 
-	ret = intel_dp_mst_add_properties(intel_dp, connector, pathprop);
+	ret = intel_dp_mst_add_properties(intel_dp, &connector->base, pathprop);
 	if (ret)
 		goto err;
 
-	ret = intel_dp_hdcp_init(dig_port, intel_connector);
+	ret = intel_dp_hdcp_init(dig_port, connector);
 	if (ret)
-		drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP MST init failed, skipping.\n",
-			    connector->name, connector->base.id);
+		drm_dbg_kms(&dev_priv->drm, "CONNECTOR[%d:%s] HDCP MST init failed, skipping.\n",
+			    connector->base.base.id, connector->base.name);
 
-	return connector;
+	return &connector->base;
 
 err:
-	drm_connector_cleanup(connector);
+	drm_connector_cleanup(&connector->base);
 	return NULL;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index d3532e51843c..6aa8a45629db 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -393,7 +393,7 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *encoder;
 	struct intel_dvo *intel_dvo;
-	struct intel_connector *intel_connector;
+	struct intel_connector *connector;
 	int i;
 	int encoder_type = DRM_MODE_ENCODER_NONE;
 
@@ -401,13 +401,13 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 	if (!intel_dvo)
 		return;
 
-	intel_connector = intel_connector_alloc();
-	if (!intel_connector) {
+	connector = intel_connector_alloc();
+	if (!connector) {
 		kfree(intel_dvo);
 		return;
 	}
 
-	intel_dvo->attached_connector = intel_connector;
+	intel_dvo->attached_connector = connector;
 
 	encoder = &intel_dvo->base;
 
@@ -417,11 +417,10 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 	encoder->get_config = intel_dvo_get_config;
 	encoder->compute_config = intel_dvo_compute_config;
 	encoder->pre_enable = intel_dvo_pre_enable;
-	intel_connector->get_hw_state = intel_dvo_connector_get_hw_state;
+	connector->get_hw_state = intel_dvo_connector_get_hw_state;
 
 	/* Now, try to find a controller */
 	for (i = 0; i < ARRAY_SIZE(intel_dvo_devices); i++) {
-		struct drm_connector *connector = &intel_connector->base;
 		const struct intel_dvo_device *dvo = &intel_dvo_devices[i];
 		struct i2c_adapter *i2c;
 		int gpio;
@@ -497,27 +496,27 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 
 		switch (dvo->type) {
 		case INTEL_DVO_CHIP_TMDS:
-			intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT |
+			connector->polled = DRM_CONNECTOR_POLL_CONNECT |
 				DRM_CONNECTOR_POLL_DISCONNECT;
-			drm_connector_init(&dev_priv->drm, connector,
+			drm_connector_init(&dev_priv->drm, &connector->base,
 					   &intel_dvo_connector_funcs,
 					   DRM_MODE_CONNECTOR_DVII);
 			encoder_type = DRM_MODE_ENCODER_TMDS;
 			break;
 		case INTEL_DVO_CHIP_LVDS_NO_FIXED:
 		case INTEL_DVO_CHIP_LVDS:
-			drm_connector_init(&dev_priv->drm, connector,
+			drm_connector_init(&dev_priv->drm, &connector->base,
 					   &intel_dvo_connector_funcs,
 					   DRM_MODE_CONNECTOR_LVDS);
 			encoder_type = DRM_MODE_ENCODER_LVDS;
 			break;
 		}
 
-		drm_connector_helper_add(connector,
+		drm_connector_helper_add(&connector->base,
 					 &intel_dvo_connector_helper_funcs);
-		connector->display_info.subpixel_order = SubPixelHorizontalRGB;
+		connector->base.display_info.subpixel_order = SubPixelHorizontalRGB;
 
-		intel_connector_attach_encoder(intel_connector, encoder);
+		intel_connector_attach_encoder(connector, encoder);
 		if (dvo->type == INTEL_DVO_CHIP_LVDS) {
 			/*
 			 * For our LVDS chipsets, we should hopefully be able
@@ -527,9 +526,9 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 			 * headers, likely), so for now, just get the current
 			 * mode being output through DVO.
 			 */
-			intel_panel_add_encoder_fixed_mode(intel_connector, encoder);
+			intel_panel_add_encoder_fixed_mode(connector, encoder);
 
-			intel_panel_init(intel_connector);
+			intel_panel_init(connector);
 
 			intel_dvo->panel_wants_dither = true;
 		}
@@ -538,5 +537,5 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 	}
 
 	kfree(intel_dvo);
-	kfree(intel_connector);
+	kfree(connector);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 4d57d6193142..8d1043503a1a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2923,9 +2923,8 @@ void intel_infoframe_init(struct intel_digital_port *dig_port)
 }
 
 void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
-			       struct intel_connector *intel_connector)
+			       struct intel_connector *connector)
 {
-	struct drm_connector *connector = &intel_connector->base;
 	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
 	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_device *dev = encoder->base.dev;
@@ -2950,32 +2949,32 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 	intel_hdmi->ddc_bus = intel_hdmi_ddc_pin(encoder);
 	ddc = intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);
 
-	drm_connector_init_with_ddc(dev, connector,
+	drm_connector_init_with_ddc(dev, &connector->base,
 				    &intel_hdmi_connector_funcs,
 				    DRM_MODE_CONNECTOR_HDMIA,
 				    ddc);
-	drm_connector_helper_add(connector, &intel_hdmi_connector_helper_funcs);
-
-	connector->interlace_allowed = true;
-	connector->stereo_allowed = true;
+	drm_connector_helper_add(&connector->base,
+				 &intel_hdmi_connector_helper_funcs);
 
+	connector->base.interlace_allowed = true;
+	connector->base.stereo_allowed = true;
 	if (DISPLAY_VER(dev_priv) >= 10)
-		connector->ycbcr_420_allowed = true;
+		connector->base.ycbcr_420_allowed = true;
 
-	intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
+	connector->polled = DRM_CONNECTOR_POLL_HPD;
 
 	if (HAS_DDI(dev_priv))
-		intel_connector->get_hw_state = intel_ddi_connector_get_hw_state;
+		connector->get_hw_state = intel_ddi_connector_get_hw_state;
 	else
-		intel_connector->get_hw_state = intel_connector_get_hw_state;
+		connector->get_hw_state = intel_connector_get_hw_state;
 
-	intel_hdmi_add_properties(intel_hdmi, connector);
+	intel_hdmi_add_properties(intel_hdmi, &connector->base);
 
-	intel_connector_attach_encoder(intel_connector, encoder);
-	intel_hdmi->attached_connector = intel_connector;
+	intel_connector_attach_encoder(connector, encoder);
+	intel_hdmi->attached_connector = connector;
 
 	if (is_hdcp_supported(dev_priv, port)) {
-		int ret = intel_hdcp_init(intel_connector, dig_port,
+		int ret = intel_hdcp_init(connector, dig_port,
 					  &intel_hdmi_hdcp_shim);
 		if (ret)
 			drm_dbg_kms(&dev_priv->drm,
@@ -2992,7 +2991,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 		               (temp & ~0xf) | 0xd);
 	}
 
-	cec_fill_conn_info_from_drm(&conn_info, connector);
+	cec_fill_conn_info_from_drm(&conn_info, &connector->base);
 
 	intel_hdmi->cec_notifier =
 		cec_notifier_conn_register(dev->dev, port_identifier(port),
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 251282ef2d90..5a0292b44e2c 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -829,8 +829,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	struct drm_device *dev = &dev_priv->drm;
 	struct intel_lvds_encoder *lvds_encoder;
 	struct intel_encoder *encoder;
-	struct intel_connector *intel_connector;
-	struct drm_connector *connector;
+	struct intel_connector *connector;
 	struct edid *edid;
 	i915_reg_t lvds_reg;
 	u32 lvds;
@@ -876,17 +875,17 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
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
 
 	encoder = &lvds_encoder->base;
-	connector = &intel_connector->base;
-	drm_connector_init(dev, &intel_connector->base, &intel_lvds_connector_funcs,
+	drm_connector_init(dev, &connector->base,
+			   &intel_lvds_connector_funcs,
 			   DRM_MODE_CONNECTOR_LVDS);
 
 	drm_encoder_init(dev, &encoder->base, &intel_lvds_enc_funcs,
@@ -905,9 +904,9 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	encoder->get_config = intel_lvds_get_config;
 	encoder->update_pipe = intel_backlight_update;
 	encoder->shutdown = intel_lvds_shutdown;
-	intel_connector->get_hw_state = intel_connector_get_hw_state;
+	connector->get_hw_state = intel_connector_get_hw_state;
 
-	intel_connector_attach_encoder(intel_connector, encoder);
+	intel_connector_attach_encoder(connector, encoder);
 
 	encoder->type = INTEL_OUTPUT_LVDS;
 	encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
@@ -918,12 +917,13 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	else
 		encoder->pipe_mask = ~0;
 
-	drm_connector_helper_add(connector, &intel_lvds_connector_helper_funcs);
-	connector->display_info.subpixel_order = SubPixelHorizontalRGB;
+	drm_connector_helper_add(&connector->base,
+				 &intel_lvds_connector_helper_funcs);
+	connector->base.display_info.subpixel_order = SubPixelHorizontalRGB;
 
 	lvds_encoder->reg = lvds_reg;
 
-	intel_lvds_add_properties(connector);
+	intel_lvds_add_properties(&connector->base);
 
 	intel_lvds_pps_get_hw_state(dev_priv, &lvds_encoder->init_pps);
 	lvds_encoder->init_lvds_val = lvds;
@@ -942,15 +942,14 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	 */
 	mutex_lock(&dev->mode_config.mutex);
 	if (vga_switcheroo_handler_flags() & VGA_SWITCHEROO_CAN_SWITCH_DDC)
-		edid = drm_get_edid_switcheroo(connector,
-				    intel_gmbus_get_adapter(dev_priv, pin));
+		edid = drm_get_edid_switcheroo(&connector->base,
+					       intel_gmbus_get_adapter(dev_priv, pin));
 	else
-		edid = drm_get_edid(connector,
+		edid = drm_get_edid(&connector->base,
 				    intel_gmbus_get_adapter(dev_priv, pin));
 	if (edid) {
-		if (drm_add_edid_modes(connector, edid)) {
-			drm_connector_update_edid_property(connector,
-								edid);
+		if (drm_add_edid_modes(&connector->base, edid)) {
+			drm_connector_update_edid_property(&connector->base, edid);
 		} else {
 			kfree(edid);
 			edid = ERR_PTR(-EINVAL);
@@ -958,37 +957,37 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	} else {
 		edid = ERR_PTR(-ENOENT);
 	}
-	intel_connector->edid = edid;
+	connector->edid = edid;
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL,
+	intel_bios_init_panel(dev_priv, &connector->panel, NULL,
 			      IS_ERR(edid) ? NULL : edid);
 
 	/* Try EDID first */
-	intel_panel_add_edid_fixed_modes(intel_connector,
-					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE,
+	intel_panel_add_edid_fixed_modes(connector,
+					 connector->panel.vbt.drrs_type != DRRS_TYPE_NONE,
 					 false);
 
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
-		intel_panel_add_encoder_fixed_mode(intel_connector, encoder);
+	if (!intel_panel_preferred_fixed_mode(connector))
+		intel_panel_add_encoder_fixed_mode(connector, encoder);
 
 	mutex_unlock(&dev->mode_config.mutex);
 
 	/* If we still don't have a mode after all that, give up. */
-	if (!intel_panel_preferred_fixed_mode(intel_connector))
+	if (!intel_panel_preferred_fixed_mode(connector))
 		goto failed;
 
-	intel_panel_init(intel_connector);
+	intel_panel_init(connector);
 
-	intel_backlight_setup(intel_connector, INVALID_PIPE);
+	intel_backlight_setup(connector, INVALID_PIPE);
 
 	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder);
 	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n",
@@ -1000,9 +999,9 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 
 failed:
 	drm_dbg_kms(&dev_priv->drm, "No LVDS modes found, disabling.\n");
-	drm_connector_cleanup(connector);
+	drm_connector_cleanup(&connector->base);
 	drm_encoder_cleanup(&encoder->base);
 	kfree(lvds_encoder);
-	intel_connector_free(intel_connector);
+	intel_connector_free(connector);
 	return;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 01c69da81f3d..e4ae5395bc00 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2673,28 +2673,26 @@ intel_sdvo_get_slave_addr(struct drm_i915_private *dev_priv,
 }
 
 static int
-intel_sdvo_connector_init(struct intel_sdvo_connector *connector,
-			  struct intel_sdvo *encoder)
+intel_sdvo_connector_init(struct intel_connector *connector,
+			  struct intel_encoder *encoder)
 {
-	struct drm_connector *drm_connector;
 	int ret;
 
-	drm_connector = &connector->base.base;
-	ret = drm_connector_init(encoder->base.base.dev,
-			   drm_connector,
-			   &intel_sdvo_connector_funcs,
-			   connector->base.base.connector_type);
+	ret = drm_connector_init(encoder->base.dev,
+				 &connector->base,
+				 &intel_sdvo_connector_funcs,
+				 connector->base.connector_type);
 	if (ret < 0)
 		return ret;
 
-	drm_connector_helper_add(drm_connector,
+	drm_connector_helper_add(&connector->base,
 				 &intel_sdvo_connector_helper_funcs);
 
-	connector->base.base.display_info.subpixel_order = SubPixelHorizontalRGB;
-	connector->base.base.interlace_allowed = true;
-	connector->base.get_hw_state = intel_sdvo_connector_get_hw_state;
+	connector->base.display_info.subpixel_order = SubPixelHorizontalRGB;
+	connector->base.interlace_allowed = true;
+	connector->get_hw_state = intel_sdvo_connector_get_hw_state;
 
-	intel_connector_attach_encoder(&connector->base, &encoder->base);
+	intel_connector_attach_encoder(connector, encoder);
 
 	return 0;
 }
@@ -2736,9 +2734,8 @@ static bool
 intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, int device)
 {
 	struct intel_encoder *encoder = &intel_sdvo->base;
-	struct drm_connector *connector;
-	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
+	struct intel_connector *connector;
 
 	DRM_DEBUG_KMS("initialising DVI device %d\n", device);
 
@@ -2754,8 +2751,7 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, int device)
 		intel_sdvo_connector->output_flag = SDVO_OUTPUT_TMDS1;
 	}
 
-	intel_connector = &intel_sdvo_connector->base;
-	connector = &intel_connector->base;
+	connector = &intel_sdvo_connector->base;
 	if (intel_sdvo_get_hotplug_support(intel_sdvo) &
 		intel_sdvo_connector->output_flag) {
 		intel_sdvo->hotplug_active |= intel_sdvo_connector->output_flag;
@@ -2763,21 +2759,22 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, int device)
 		 * Some SDVO devices have one-shot hotplug interrupts.
 		 * Ensure that they get re-enabled when an interrupt happens.
 		 */
-		intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
+		connector->polled = DRM_CONNECTOR_POLL_HPD;
 		encoder->hotplug = intel_sdvo_hotplug;
 		intel_sdvo_enable_hotplug(encoder);
 	} else {
-		intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT | DRM_CONNECTOR_POLL_DISCONNECT;
+		connector->polled = DRM_CONNECTOR_POLL_CONNECT |
+			DRM_CONNECTOR_POLL_DISCONNECT;
 	}
 	encoder->base.encoder_type = DRM_MODE_ENCODER_TMDS;
-	connector->connector_type = DRM_MODE_CONNECTOR_DVID;
+	connector->base.connector_type = DRM_MODE_CONNECTOR_DVID;
 
 	if (intel_sdvo_is_hdmi_connector(intel_sdvo, device)) {
-		connector->connector_type = DRM_MODE_CONNECTOR_HDMIA;
+		connector->base.connector_type = DRM_MODE_CONNECTOR_HDMIA;
 		intel_sdvo_connector->is_hdmi = true;
 	}
 
-	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
+	if (intel_sdvo_connector_init(connector, encoder) < 0) {
 		kfree(intel_sdvo_connector);
 		return false;
 	}
@@ -2792,9 +2789,8 @@ static bool
 intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, int type)
 {
 	struct intel_encoder *encoder = &intel_sdvo->base;
-	struct drm_connector *connector;
-	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
+	struct intel_connector *connector;
 
 	DRM_DEBUG_KMS("initialising TV type %d\n", type);
 
@@ -2802,15 +2798,14 @@ intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, int type)
 	if (!intel_sdvo_connector)
 		return false;
 
-	intel_connector = &intel_sdvo_connector->base;
-	connector = &intel_connector->base;
+	connector = &intel_sdvo_connector->base;
 	encoder->base.encoder_type = DRM_MODE_ENCODER_TVDAC;
-	connector->connector_type = DRM_MODE_CONNECTOR_SVIDEO;
+	connector->base.connector_type = DRM_MODE_CONNECTOR_SVIDEO;
 
 	intel_sdvo->controlled_output |= type;
 	intel_sdvo_connector->output_flag = type;
 
-	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
+	if (intel_sdvo_connector_init(connector, encoder) < 0) {
 		kfree(intel_sdvo_connector);
 		return false;
 	}
@@ -2824,7 +2819,7 @@ intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, int type)
 	return true;
 
 err:
-	intel_connector_destroy(connector);
+	intel_connector_destroy(&connector->base);
 	return false;
 }
 
@@ -2832,9 +2827,8 @@ static bool
 intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, int device)
 {
 	struct intel_encoder *encoder = &intel_sdvo->base;
-	struct drm_connector *connector;
-	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
+	struct intel_connector *connector;
 
 	DRM_DEBUG_KMS("initialising analog device %d\n", device);
 
@@ -2842,11 +2836,10 @@ intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, int device)
 	if (!intel_sdvo_connector)
 		return false;
 
-	intel_connector = &intel_sdvo_connector->base;
-	connector = &intel_connector->base;
-	intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
+	connector = &intel_sdvo_connector->base;
+	connector->polled = DRM_CONNECTOR_POLL_CONNECT;
 	encoder->base.encoder_type = DRM_MODE_ENCODER_DAC;
-	connector->connector_type = DRM_MODE_CONNECTOR_VGA;
+	connector->base.connector_type = DRM_MODE_CONNECTOR_VGA;
 
 	if (device == 0) {
 		intel_sdvo->controlled_output |= SDVO_OUTPUT_RGB0;
@@ -2856,7 +2849,7 @@ intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, int device)
 		intel_sdvo_connector->output_flag = SDVO_OUTPUT_RGB1;
 	}
 
-	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
+	if (intel_sdvo_connector_init(connector, encoder) < 0) {
 		kfree(intel_sdvo_connector);
 		return false;
 	}
@@ -2869,9 +2862,8 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 {
 	struct intel_encoder *encoder = &intel_sdvo->base;
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct drm_connector *connector;
-	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
+	struct intel_connector *connector;
 
 	DRM_DEBUG_KMS("initialising LVDS device %d\n", device);
 
@@ -2879,10 +2871,9 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 	if (!intel_sdvo_connector)
 		return false;
 
-	intel_connector = &intel_sdvo_connector->base;
-	connector = &intel_connector->base;
+	connector = &intel_sdvo_connector->base;
 	encoder->base.encoder_type = DRM_MODE_ENCODER_LVDS;
-	connector->connector_type = DRM_MODE_CONNECTOR_LVDS;
+	connector->base.connector_type = DRM_MODE_CONNECTOR_LVDS;
 
 	if (device == 0) {
 		intel_sdvo->controlled_output |= SDVO_OUTPUT_LVDS0;
@@ -2892,7 +2883,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 		intel_sdvo_connector->output_flag = SDVO_OUTPUT_LVDS1;
 	}
 
-	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
+	if (intel_sdvo_connector_init(connector, encoder) < 0) {
 		kfree(intel_sdvo_connector);
 		return false;
 	}
@@ -2900,28 +2891,28 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
 		goto err;
 
-	intel_bios_init_panel(i915, &intel_connector->panel, NULL, NULL);
+	intel_bios_init_panel(i915, &connector->panel, NULL, NULL);
 
 	/*
 	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
 	 * SDVO->LVDS transcoders can't cope with the EDID mode.
 	 */
-	intel_panel_add_vbt_sdvo_fixed_mode(intel_connector);
+	intel_panel_add_vbt_sdvo_fixed_mode(connector);
 
-	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
-		intel_ddc_get_modes(connector, &intel_sdvo->ddc);
-		intel_panel_add_edid_fixed_modes(intel_connector, false, false);
+	if (!intel_panel_preferred_fixed_mode(connector)) {
+		intel_ddc_get_modes(&connector->base, &intel_sdvo->ddc);
+		intel_panel_add_edid_fixed_modes(connector, false, false);
 	}
 
-	intel_panel_init(intel_connector);
+	intel_panel_init(connector);
 
-	if (!intel_panel_preferred_fixed_mode(intel_connector))
+	if (!intel_panel_preferred_fixed_mode(connector))
 		goto err;
 
 	return true;
 
 err:
-	intel_connector_destroy(connector);
+	intel_connector_destroy(&connector->base);
 	return false;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 8235f91f58c5..c28323db7d63 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1915,10 +1915,9 @@ void
 intel_tv_init(struct drm_i915_private *dev_priv)
 {
 	struct drm_device *dev = &dev_priv->drm;
-	struct drm_connector *connector;
 	struct intel_tv *intel_tv;
 	struct intel_encoder *encoder;
-	struct intel_connector *intel_connector;
+	struct intel_connector *connector;
 	u32 tv_dac_on, tv_dac_off, save_tv_dac;
 
 	if ((intel_de_read(dev_priv, TV_CTL) & TV_FUSE_STATE_MASK) == TV_FUSE_STATE_DISABLED)
@@ -1957,14 +1956,13 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 		return;
 	}
 
-	intel_connector = intel_connector_alloc();
-	if (!intel_connector) {
+	connector = intel_connector_alloc();
+	if (!connector) {
 		kfree(intel_tv);
 		return;
 	}
 
 	encoder = &intel_tv->base;
-	connector = &intel_connector->base;
 
 	/*
 	 * The documentation, for the older chipsets at least, recommend
@@ -1976,9 +1974,9 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	 *
 	 * More recent chipsets favour HDMI rather than integrated S-Video.
 	 */
-	intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
+	connector->polled = DRM_CONNECTOR_POLL_CONNECT;
 
-	drm_connector_init(dev, connector, &intel_tv_connector_funcs,
+	drm_connector_init(dev, &connector->base, &intel_tv_connector_funcs,
 			   DRM_MODE_CONNECTOR_SVIDEO);
 
 	drm_encoder_init(dev, &encoder->base, &intel_tv_enc_funcs,
@@ -1990,9 +1988,9 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	encoder->enable = intel_enable_tv;
 	encoder->disable = intel_disable_tv;
 	encoder->get_hw_state = intel_tv_get_hw_state;
-	intel_connector->get_hw_state = intel_connector_get_hw_state;
+	connector->get_hw_state = intel_connector_get_hw_state;
 
-	intel_connector_attach_encoder(intel_connector, encoder);
+	intel_connector_attach_encoder(connector, encoder);
 
 	encoder->type = INTEL_OUTPUT_TVOUT;
 	encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
@@ -2001,7 +1999,8 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	encoder->cloneable = 0;
 	intel_tv->type = DRM_MODE_CONNECTOR_Unknown;
 
-	drm_connector_helper_add(connector, &intel_tv_connector_helper_funcs);
+	drm_connector_helper_add(&connector->base,
+				 &intel_tv_connector_helper_funcs);
 
-	intel_tv_add_properties(connector);
+	intel_tv_add_properties(&connector->base);
 }
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 58b5b3cfc540..974f8674f862 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1848,8 +1848,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	struct drm_device *dev = &dev_priv->drm;
 	struct intel_dsi *intel_dsi;
 	struct intel_encoder *encoder;
-	struct intel_connector *intel_connector;
-	struct drm_connector *connector;
+	struct intel_connector *connector;
 	struct drm_display_mode *current_mode;
 	enum port port;
 	enum pipe pipe;
@@ -1869,16 +1868,14 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	if (!intel_dsi)
 		return;
 
-	intel_connector = intel_connector_alloc();
-	if (!intel_connector) {
+	connector = intel_connector_alloc();
+	if (!connector) {
 		kfree(intel_dsi);
 		return;
 	}
 
 	encoder = &intel_dsi->base;
-	intel_dsi->attached_connector = intel_connector;
-
-	connector = &intel_connector->base;
+	intel_dsi->attached_connector = connector;
 
 	drm_encoder_init(dev, &encoder->base, &intel_dsi_funcs,
 			 DRM_MODE_ENCODER_DSI, "DSI %c", port_name(port));
@@ -1894,7 +1891,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	encoder->update_pipe = intel_backlight_update;
 	encoder->shutdown = intel_dsi_shutdown;
 
-	intel_connector->get_hw_state = intel_connector_get_hw_state;
+	connector->get_hw_state = intel_connector_get_hw_state;
 
 	encoder->port = port;
 	encoder->type = INTEL_OUTPUT_DSI;
@@ -1914,18 +1911,18 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 
 	intel_dsi->panel_power_off_time = ktime_get_boottime();
 
-	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL, NULL);
+	intel_bios_init_panel(dev_priv, &connector->panel, NULL, NULL);
 
-	if (intel_connector->panel.vbt.dsi.config->dual_link)
+	if (connector->panel.vbt.dsi.config->dual_link)
 		intel_dsi->ports = BIT(PORT_A) | BIT(PORT_C);
 	else
 		intel_dsi->ports = BIT(port);
 
-	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
-		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
+	if (drm_WARN_ON(&dev_priv->drm, connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
+		connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
 
-	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
-		intel_connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
+	if (drm_WARN_ON(&dev_priv->drm, connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
+		connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
 
 	/* Create a DSI host (and a device) for each port. */
 	for_each_dsi_port(port, intel_dsi->ports) {
@@ -1963,36 +1960,38 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	intel_dsi_vbt_gpio_init(intel_dsi,
 				intel_dsi_get_hw_state(encoder, &pipe));
 
-	drm_connector_init(dev, connector, &intel_dsi_connector_funcs,
+	drm_connector_init(dev, &connector->base,
+			   &intel_dsi_connector_funcs,
 			   DRM_MODE_CONNECTOR_DSI);
 
-	drm_connector_helper_add(connector, &intel_dsi_connector_helper_funcs);
+	drm_connector_helper_add(&connector->base,
+				 &intel_dsi_connector_helper_funcs);
 
-	connector->display_info.subpixel_order = SubPixelHorizontalRGB; /*XXX*/
+	connector->base.display_info.subpixel_order = SubPixelHorizontalRGB; /*XXX*/
 
-	intel_connector_attach_encoder(intel_connector, encoder);
+	intel_connector_attach_encoder(connector, encoder);
 
 	mutex_lock(&dev->mode_config.mutex);
-	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
+	intel_panel_add_vbt_lfp_fixed_mode(connector);
 	mutex_unlock(&dev->mode_config.mutex);
 
-	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
+	if (!intel_panel_preferred_fixed_mode(connector)) {
 		drm_dbg_kms(&dev_priv->drm, "no fixed mode\n");
 		goto err_cleanup_connector;
 	}
 
-	intel_panel_init(intel_connector);
+	intel_panel_init(connector);
 
-	intel_backlight_setup(intel_connector, INVALID_PIPE);
+	intel_backlight_setup(connector, INVALID_PIPE);
 
-	vlv_dsi_add_properties(intel_connector);
+	vlv_dsi_add_properties(connector);
 
 	return;
 
 err_cleanup_connector:
-	drm_connector_cleanup(&intel_connector->base);
+	drm_connector_cleanup(&connector->base);
 err:
 	drm_encoder_cleanup(&encoder->base);
 	kfree(intel_dsi);
-	kfree(intel_connector);
+	kfree(connector);
 }
-- 
2.35.1

