Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 353915B592C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:19:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10BC310E39B;
	Mon, 12 Sep 2022 11:19:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8922B10E3B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981538; x=1694517538;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Qw9JYMQFmW9oENhltlTaenSNT8GcbjbqiuL+9jrW8oA=;
 b=jQ9IiupWD5aTPX/HAhC0ivLtNVZTiwxDhy7lxIpt2vOEE+L++vNOBK9p
 uiIxvsP/cHiXMZEqgpGFl8QcmmiDX28yAtWi6oFxlNn4sgrfYJPtyk7Fk
 8irheLs1T8Bx0XzVD1CsNusccdEVHp+uoUseAj/gBvN3G2kwqYCcB/EXm
 JbEVHDSClfUdPzj4L60dF7nBQJi+W5ONtetC6HSOM0NpwDS4L7c/4JcJC
 9QXNAq9SQZPLzxjrBHQumueLLOj5o2rd3v/1xWxVxGSlWGXhzqubyH057
 QFfnD0hfb6H4rlQf2FBQFLQlna28okGWRqMgqWVNOPsFPP+SCGZW3++OT A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="278232179"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="278232179"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="593452435"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 12 Sep 2022 04:18:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 14:18:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:18:13 +0300
Message-Id: <20220912111814.17466-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/15] drm/i915: Finish s/intel_encoder/encoder/
 rename
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

Not a lot of places left that still use the 'intel_encoder'
variable name rather than just 'encoder'. Clean up the stragglers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         | 99 ++++++++++---------
 drivers/gpu/drm/i915/display/g4x_hdmi.c       | 66 ++++++-------
 drivers/gpu/drm/i915/display/icl_dsi.c        |  7 +-
 drivers/gpu/drm/i915/display/intel_audio.c    | 10 +-
 drivers/gpu/drm/i915/display/intel_crt.c      | 24 +++--
 drivers/gpu/drm/i915/display/intel_crt.h      |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 23 ++---
 drivers/gpu/drm/i915/display/intel_ddi.h      |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 26 +++--
 drivers/gpu/drm/i915/display/intel_display.h  |  2 +-
 .../drm/i915/display/intel_display_debugfs.c  | 19 ++--
 .../drm/i915/display/intel_display_types.h    |  6 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 32 +++---
 drivers/gpu/drm/i915/display/intel_dp.h       |  7 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 52 +++++-----
 drivers/gpu/drm/i915/display/intel_dvo.c      | 40 ++++----
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 16 +--
 drivers/gpu/drm/i915/display/intel_hdmi.h     |  1 -
 drivers/gpu/drm/i915/display/intel_lvds.c     | 56 +++++------
 drivers/gpu/drm/i915/display/intel_opregion.c | 18 ++--
 drivers/gpu/drm/i915/display/intel_opregion.h |  4 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 70 ++++++-------
 drivers/gpu/drm/i915/display/intel_tv.c       | 30 +++---
 drivers/gpu/drm/i915/display/vlv_dsi.c        | 80 ++++++++-------
 25 files changed, 340 insertions(+), 358 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index e3e3d27ffb53..6afd4a2142f2 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1228,12 +1228,14 @@ static bool ilk_digital_port_connected(struct intel_encoder *encoder)
 	return intel_de_read(dev_priv, DEISR) & bit;
 }
 
-static void intel_dp_encoder_destroy(struct drm_encoder *encoder)
+static void intel_dp_encoder_destroy(struct drm_encoder *_encoder)
 {
+	struct intel_encoder *encoder = to_intel_encoder(_encoder);
+
 	intel_dp_encoder_flush_work(encoder);
 
-	drm_encoder_cleanup(encoder);
-	kfree(enc_to_dig_port(to_intel_encoder(encoder)));
+	drm_encoder_cleanup(&encoder->base);
+	kfree(enc_to_dig_port(encoder));
 }
 
 enum pipe vlv_active_pipe(struct intel_dp *intel_dp)
@@ -1249,10 +1251,11 @@ enum pipe vlv_active_pipe(struct intel_dp *intel_dp)
 	return INVALID_PIPE;
 }
 
-static void intel_dp_encoder_reset(struct drm_encoder *encoder)
+static void intel_dp_encoder_reset(struct drm_encoder *_encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(encoder));
+	struct intel_encoder *encoder = to_intel_encoder(_encoder);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
 
@@ -1277,8 +1280,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 		 i915_reg_t output_reg, enum port port)
 {
 	struct intel_digital_port *dig_port;
-	struct intel_encoder *intel_encoder;
-	struct drm_encoder *encoder;
+	struct intel_encoder *encoder;
 	struct intel_connector *intel_connector;
 
 	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
@@ -1289,43 +1291,42 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	if (!intel_connector)
 		goto err_connector_alloc;
 
-	intel_encoder = &dig_port->base;
-	encoder = &intel_encoder->base;
+	encoder = &dig_port->base;
 
 	mutex_init(&dig_port->hdcp_mutex);
 
-	if (drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
+	if (drm_encoder_init(&dev_priv->drm, &encoder->base,
 			     &intel_dp_enc_funcs, DRM_MODE_ENCODER_TMDS,
 			     "DP %c", port_name(port)))
 		goto err_encoder_init;
 
-	intel_encoder->hotplug = intel_dp_hotplug;
-	intel_encoder->compute_config = intel_dp_compute_config;
-	intel_encoder->get_hw_state = intel_dp_get_hw_state;
-	intel_encoder->get_config = intel_dp_get_config;
-	intel_encoder->sync_state = intel_dp_sync_state;
-	intel_encoder->initial_fastset_check = intel_dp_initial_fastset_check;
-	intel_encoder->update_pipe = intel_backlight_update;
-	intel_encoder->suspend = intel_dp_encoder_suspend;
-	intel_encoder->shutdown = intel_dp_encoder_shutdown;
+	encoder->hotplug = intel_dp_hotplug;
+	encoder->compute_config = intel_dp_compute_config;
+	encoder->get_hw_state = intel_dp_get_hw_state;
+	encoder->get_config = intel_dp_get_config;
+	encoder->sync_state = intel_dp_sync_state;
+	encoder->initial_fastset_check = intel_dp_initial_fastset_check;
+	encoder->update_pipe = intel_backlight_update;
+	encoder->suspend = intel_dp_encoder_suspend;
+	encoder->shutdown = intel_dp_encoder_shutdown;
 	if (IS_CHERRYVIEW(dev_priv)) {
-		intel_encoder->pre_pll_enable = chv_dp_pre_pll_enable;
-		intel_encoder->pre_enable = chv_pre_enable_dp;
-		intel_encoder->enable = vlv_enable_dp;
-		intel_encoder->disable = vlv_disable_dp;
-		intel_encoder->post_disable = chv_post_disable_dp;
-		intel_encoder->post_pll_disable = chv_dp_post_pll_disable;
+		encoder->pre_pll_enable = chv_dp_pre_pll_enable;
+		encoder->pre_enable = chv_pre_enable_dp;
+		encoder->enable = vlv_enable_dp;
+		encoder->disable = vlv_disable_dp;
+		encoder->post_disable = chv_post_disable_dp;
+		encoder->post_pll_disable = chv_dp_post_pll_disable;
 	} else if (IS_VALLEYVIEW(dev_priv)) {
-		intel_encoder->pre_pll_enable = vlv_dp_pre_pll_enable;
-		intel_encoder->pre_enable = vlv_pre_enable_dp;
-		intel_encoder->enable = vlv_enable_dp;
-		intel_encoder->disable = vlv_disable_dp;
-		intel_encoder->post_disable = vlv_post_disable_dp;
+		encoder->pre_pll_enable = vlv_dp_pre_pll_enable;
+		encoder->pre_enable = vlv_pre_enable_dp;
+		encoder->enable = vlv_enable_dp;
+		encoder->disable = vlv_disable_dp;
+		encoder->post_disable = vlv_post_disable_dp;
 	} else {
-		intel_encoder->pre_enable = g4x_pre_enable_dp;
-		intel_encoder->enable = g4x_enable_dp;
-		intel_encoder->disable = g4x_disable_dp;
-		intel_encoder->post_disable = g4x_post_disable_dp;
+		encoder->pre_enable = g4x_pre_enable_dp;
+		encoder->enable = g4x_enable_dp;
+		encoder->disable = g4x_disable_dp;
+		encoder->post_disable = g4x_post_disable_dp;
 	}
 
 	if ((IS_IVYBRIDGE(dev_priv) && port == PORT_A) ||
@@ -1335,15 +1336,15 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 		dig_port->dp.set_link_train = g4x_set_link_train;
 
 	if (IS_CHERRYVIEW(dev_priv))
-		intel_encoder->set_signal_levels = chv_set_signal_levels;
+		encoder->set_signal_levels = chv_set_signal_levels;
 	else if (IS_VALLEYVIEW(dev_priv))
-		intel_encoder->set_signal_levels = vlv_set_signal_levels;
+		encoder->set_signal_levels = vlv_set_signal_levels;
 	else if (IS_IVYBRIDGE(dev_priv) && port == PORT_A)
-		intel_encoder->set_signal_levels = ivb_cpu_edp_set_signal_levels;
+		encoder->set_signal_levels = ivb_cpu_edp_set_signal_levels;
 	else if (IS_SANDYBRIDGE(dev_priv) && port == PORT_A)
-		intel_encoder->set_signal_levels = snb_cpu_edp_set_signal_levels;
+		encoder->set_signal_levels = snb_cpu_edp_set_signal_levels;
 	else
-		intel_encoder->set_signal_levels = g4x_set_signal_levels;
+		encoder->set_signal_levels = g4x_set_signal_levels;
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv) ||
 	    (HAS_PCH_SPLIT(dev_priv) && port != PORT_A)) {
@@ -1357,19 +1358,19 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	dig_port->dp.output_reg = output_reg;
 	dig_port->max_lanes = 4;
 
-	intel_encoder->type = INTEL_OUTPUT_DP;
-	intel_encoder->power_domain = intel_display_power_ddi_lanes_domain(dev_priv, port);
+	encoder->type = INTEL_OUTPUT_DP;
+	encoder->power_domain = intel_display_power_ddi_lanes_domain(dev_priv, port);
 	if (IS_CHERRYVIEW(dev_priv)) {
 		if (port == PORT_D)
-			intel_encoder->pipe_mask = BIT(PIPE_C);
+			encoder->pipe_mask = BIT(PIPE_C);
 		else
-			intel_encoder->pipe_mask = BIT(PIPE_A) | BIT(PIPE_B);
+			encoder->pipe_mask = BIT(PIPE_A) | BIT(PIPE_B);
 	} else {
-		intel_encoder->pipe_mask = ~0;
+		encoder->pipe_mask = ~0;
 	}
-	intel_encoder->cloneable = 0;
-	intel_encoder->port = port;
-	intel_encoder->hpd_pin = intel_hpd_pin_default(dev_priv, port);
+	encoder->cloneable = 0;
+	encoder->port = port;
+	encoder->hpd_pin = intel_hpd_pin_default(dev_priv, port);
 
 	dig_port->hpd_pulse = intel_dp_hpd_pulse;
 
@@ -1395,7 +1396,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	return true;
 
 err_init_connector:
-	drm_encoder_cleanup(encoder);
+	drm_encoder_cleanup(&encoder->base);
 err_encoder_init:
 	kfree(intel_connector);
 err_connector_alloc:
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 5606c667e422..1e292c4a177f 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -521,7 +521,7 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 		   i915_reg_t hdmi_reg, enum port port)
 {
 	struct intel_digital_port *dig_port;
-	struct intel_encoder *intel_encoder;
+	struct intel_encoder *encoder;
 	struct intel_connector *intel_connector;
 
 	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
@@ -534,66 +534,66 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	intel_encoder = &dig_port->base;
+	encoder = &dig_port->base;
 
 	mutex_init(&dig_port->hdcp_mutex);
 
-	drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
+	drm_encoder_init(&dev_priv->drm, &encoder->base,
 			 &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
 			 "HDMI %c", port_name(port));
 
-	intel_encoder->hotplug = intel_hdmi_hotplug;
-	intel_encoder->compute_config = intel_hdmi_compute_config;
+	encoder->hotplug = intel_hdmi_hotplug;
+	encoder->compute_config = intel_hdmi_compute_config;
 	if (HAS_PCH_SPLIT(dev_priv)) {
-		intel_encoder->disable = pch_disable_hdmi;
-		intel_encoder->post_disable = pch_post_disable_hdmi;
+		encoder->disable = pch_disable_hdmi;
+		encoder->post_disable = pch_post_disable_hdmi;
 	} else {
-		intel_encoder->disable = g4x_disable_hdmi;
+		encoder->disable = g4x_disable_hdmi;
 	}
-	intel_encoder->get_hw_state = intel_hdmi_get_hw_state;
-	intel_encoder->get_config = intel_hdmi_get_config;
+	encoder->get_hw_state = intel_hdmi_get_hw_state;
+	encoder->get_config = intel_hdmi_get_config;
 	if (IS_CHERRYVIEW(dev_priv)) {
-		intel_encoder->pre_pll_enable = chv_hdmi_pre_pll_enable;
-		intel_encoder->pre_enable = chv_hdmi_pre_enable;
-		intel_encoder->enable = vlv_enable_hdmi;
-		intel_encoder->post_disable = chv_hdmi_post_disable;
-		intel_encoder->post_pll_disable = chv_hdmi_post_pll_disable;
+		encoder->pre_pll_enable = chv_hdmi_pre_pll_enable;
+		encoder->pre_enable = chv_hdmi_pre_enable;
+		encoder->enable = vlv_enable_hdmi;
+		encoder->post_disable = chv_hdmi_post_disable;
+		encoder->post_pll_disable = chv_hdmi_post_pll_disable;
 	} else if (IS_VALLEYVIEW(dev_priv)) {
-		intel_encoder->pre_pll_enable = vlv_hdmi_pre_pll_enable;
-		intel_encoder->pre_enable = vlv_hdmi_pre_enable;
-		intel_encoder->enable = vlv_enable_hdmi;
-		intel_encoder->post_disable = vlv_hdmi_post_disable;
+		encoder->pre_pll_enable = vlv_hdmi_pre_pll_enable;
+		encoder->pre_enable = vlv_hdmi_pre_enable;
+		encoder->enable = vlv_enable_hdmi;
+		encoder->post_disable = vlv_hdmi_post_disable;
 	} else {
-		intel_encoder->pre_enable = intel_hdmi_pre_enable;
+		encoder->pre_enable = intel_hdmi_pre_enable;
 		if (HAS_PCH_CPT(dev_priv))
-			intel_encoder->enable = cpt_enable_hdmi;
+			encoder->enable = cpt_enable_hdmi;
 		else if (HAS_PCH_IBX(dev_priv))
-			intel_encoder->enable = ibx_enable_hdmi;
+			encoder->enable = ibx_enable_hdmi;
 		else
-			intel_encoder->enable = g4x_enable_hdmi;
+			encoder->enable = g4x_enable_hdmi;
 	}
-	intel_encoder->shutdown = intel_hdmi_encoder_shutdown;
+	encoder->shutdown = intel_hdmi_encoder_shutdown;
 
-	intel_encoder->type = INTEL_OUTPUT_HDMI;
-	intel_encoder->power_domain = intel_display_power_ddi_lanes_domain(dev_priv, port);
-	intel_encoder->port = port;
+	encoder->type = INTEL_OUTPUT_HDMI;
+	encoder->power_domain = intel_display_power_ddi_lanes_domain(dev_priv, port);
+	encoder->port = port;
 	if (IS_CHERRYVIEW(dev_priv)) {
 		if (port == PORT_D)
-			intel_encoder->pipe_mask = BIT(PIPE_C);
+			encoder->pipe_mask = BIT(PIPE_C);
 		else
-			intel_encoder->pipe_mask = BIT(PIPE_A) | BIT(PIPE_B);
+			encoder->pipe_mask = BIT(PIPE_A) | BIT(PIPE_B);
 	} else {
-		intel_encoder->pipe_mask = ~0;
+		encoder->pipe_mask = ~0;
 	}
-	intel_encoder->cloneable = BIT(INTEL_OUTPUT_ANALOG);
-	intel_encoder->hpd_pin = intel_hpd_pin_default(dev_priv, port);
+	encoder->cloneable = BIT(INTEL_OUTPUT_ANALOG);
+	encoder->hpd_pin = intel_hpd_pin_default(dev_priv, port);
 	/*
 	 * BSpec is unclear about HDMI+HDMI cloning on g4x, but it seems
 	 * to work on real hardware. And since g4x can send infoframes to
 	 * only one port anyway, nothing is lost by allowing it.
 	 */
 	if (IS_G4X(dev_priv))
-		intel_encoder->cloneable |= BIT(INTEL_OUTPUT_HDMI);
+		encoder->cloneable |= BIT(INTEL_OUTPUT_HDMI);
 
 	dig_port->hdmi.hdmi_reg = hdmi_reg;
 	dig_port->dp.output_reg = INVALID_MMIO_REG;
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 47f13750f6fa..2213d88daf38 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1774,13 +1774,8 @@ static bool gen11_dsi_initial_fastset_check(struct intel_encoder *encoder,
 	return true;
 }
 
-static void gen11_dsi_encoder_destroy(struct drm_encoder *encoder)
-{
-	intel_encoder_destroy(encoder);
-}
-
 static const struct drm_encoder_funcs gen11_dsi_encoder_funcs = {
-	.destroy = gen11_dsi_encoder_destroy,
+	.destroy = intel_encoder_destroy,
 };
 
 static const struct drm_connector_funcs gen11_dsi_connector_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index aacbc6da84ef..41d26b717baa 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -1216,14 +1216,14 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
 					unsigned char *buf, int max_bytes)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
-	struct intel_encoder *intel_encoder;
+	struct intel_encoder *encoder;
 	const u8 *eld;
 	int ret = -EINVAL;
 
 	mutex_lock(&dev_priv->display.audio.mutex);
 
-	intel_encoder = get_saved_enc(dev_priv, port, pipe);
-	if (!intel_encoder) {
+	encoder = get_saved_enc(dev_priv, port, pipe);
+	if (!encoder) {
 		drm_dbg_kms(&dev_priv->drm, "Not valid for port %c\n",
 			    port_name(port));
 		mutex_unlock(&dev_priv->display.audio.mutex);
@@ -1231,9 +1231,9 @@ static int i915_audio_component_get_eld(struct device *kdev, int port,
 	}
 
 	ret = 0;
-	*enabled = intel_encoder->audio_connector != NULL;
+	*enabled = encoder->audio_connector != NULL;
 	if (*enabled) {
-		eld = intel_encoder->audio_connector->eld;
+		eld = encoder->audio_connector->eld;
 		ret = drm_eld_size(eld);
 		memcpy(buf, eld, min(max_bytes, ret));
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 94d0a5e1dd03..9400af950691 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -828,7 +828,7 @@ intel_crt_detect(struct drm_connector *connector,
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
-	struct intel_encoder *intel_encoder = &crt->base;
+	struct intel_encoder *encoder = &crt->base;
 	intel_wakeref_t wakeref;
 	int status, ret;
 	struct intel_load_detect_pipe tmp;
@@ -841,8 +841,7 @@ intel_crt_detect(struct drm_connector *connector,
 		return connector_status_disconnected;
 
 	if (dev_priv->params.load_detect_test) {
-		wakeref = intel_display_power_get(dev_priv,
-						  intel_encoder->power_domain);
+		wakeref = intel_display_power_get(dev_priv, encoder->power_domain);
 		goto load_detect;
 	}
 
@@ -850,8 +849,7 @@ intel_crt_detect(struct drm_connector *connector,
 	if (dmi_check_system(intel_spurious_crt_detect))
 		return connector_status_disconnected;
 
-	wakeref = intel_display_power_get(dev_priv,
-					  intel_encoder->power_domain);
+	wakeref = intel_display_power_get(dev_priv, encoder->power_domain);
 
 	if (I915_HAS_HOTPLUG(dev_priv)) {
 		/* We can not rely on the HPD pin always being correctly wired
@@ -908,7 +906,7 @@ intel_crt_detect(struct drm_connector *connector,
 	}
 
 out:
-	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
+	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
 
 	/*
 	 * Make sure the refs for power wells enabled during detect are
@@ -924,13 +922,12 @@ static int intel_crt_get_modes(struct drm_connector *connector)
 	struct drm_device *dev = connector->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
-	struct intel_encoder *intel_encoder = &crt->base;
+	struct intel_encoder *encoder = &crt->base;
 	intel_wakeref_t wakeref;
 	struct i2c_adapter *i2c;
 	int ret;
 
-	wakeref = intel_display_power_get(dev_priv,
-					  intel_encoder->power_domain);
+	wakeref = intel_display_power_get(dev_priv, encoder->power_domain);
 
 	i2c = intel_gmbus_get_adapter(dev_priv, dev_priv->display.vbt.crt_ddc_pin);
 	ret = intel_crt_ddc_get_modes(connector, i2c);
@@ -942,15 +939,16 @@ static int intel_crt_get_modes(struct drm_connector *connector)
 	ret = intel_crt_ddc_get_modes(connector, i2c);
 
 out:
-	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
+	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
 
 	return ret;
 }
 
-void intel_crt_reset(struct drm_encoder *encoder)
+void intel_crt_reset(struct drm_encoder *_encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->dev);
-	struct intel_crt *crt = intel_encoder_to_crt(to_intel_encoder(encoder));
+	struct intel_encoder *encoder = to_intel_encoder(_encoder);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_crt *crt = intel_encoder_to_crt(encoder);
 
 	if (DISPLAY_VER(dev_priv) >= 5) {
 		u32 adpa;
diff --git a/drivers/gpu/drm/i915/display/intel_crt.h b/drivers/gpu/drm/i915/display/intel_crt.h
index c6071efd93ce..ae0364bad274 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.h
+++ b/drivers/gpu/drm/i915/display/intel_crt.h
@@ -15,6 +15,6 @@ struct drm_i915_private;
 bool intel_crt_port_enabled(struct drm_i915_private *dev_priv,
 			    i915_reg_t adpa_reg, enum pipe *pipe);
 void intel_crt_init(struct drm_i915_private *dev_priv);
-void intel_crt_reset(struct drm_encoder *encoder);
+void intel_crt_reset(struct drm_encoder *_encoder);
 
 #endif /* __INTEL_CRT_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 643832d55c28..65c92ad634f8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -619,18 +619,17 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 	}
 }
 
-int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
+int intel_ddi_toggle_hdcp_bits(struct intel_encoder *encoder,
 			       enum transcoder cpu_transcoder,
 			       bool enable, u32 hdcp_mask)
 {
-	struct drm_device *dev = intel_encoder->base.dev;
+	struct drm_device *dev = encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	intel_wakeref_t wakeref;
 	int ret = 0;
 	u32 tmp;
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
-						     intel_encoder->power_domain);
+	wakeref = intel_display_power_get_if_enabled(dev_priv, encoder->power_domain);
 	if (drm_WARN_ON(dev, !wakeref))
 		return -ENXIO;
 
@@ -640,7 +639,7 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
 	else
 		tmp &= ~hdcp_mask;
 	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), tmp);
-	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
+	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
 	return ret;
 }
 
@@ -3771,10 +3770,11 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 	return 0;
 }
 
-static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
+static void intel_ddi_encoder_destroy(struct drm_encoder *_encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->dev);
-	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
+	struct intel_encoder *encoder = to_intel_encoder(_encoder);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 
 	intel_dp_encoder_flush_work(encoder);
@@ -3782,14 +3782,15 @@ static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
 		intel_tc_port_flush_work(dig_port);
 	intel_display_power_flush_work(i915);
 
-	drm_encoder_cleanup(encoder);
+	drm_encoder_cleanup(&encoder->base);
 	kfree(dig_port->hdcp_port_data.streams);
 	kfree(dig_port);
 }
 
-static void intel_ddi_encoder_reset(struct drm_encoder *encoder)
+static void intel_ddi_encoder_reset(struct drm_encoder *_encoder)
 {
-	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(encoder));
+	struct intel_encoder *encoder = to_intel_encoder(_encoder);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	intel_dp->reset_link_params = true;
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index d39076facdce..ebdf13fbeb41 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -27,7 +27,7 @@ i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
 i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state);
 void intel_ddi_fdi_post_disable(struct intel_atomic_state *state,
-				struct intel_encoder *intel_encoder,
+				struct intel_encoder *encoder,
 				const struct intel_crtc_state *old_crtc_state,
 				const struct drm_connector_state *old_conn_state);
 void intel_ddi_enable_clock(struct intel_encoder *encoder,
@@ -62,7 +62,7 @@ void intel_ddi_set_vc_payload_alloc(const struct intel_crtc_state *crtc_state,
 				    bool state);
 void intel_ddi_compute_min_voltage_level(struct drm_i915_private *dev_priv,
 					 struct intel_crtc_state *crtc_state);
-int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
+int intel_ddi_toggle_hdcp_bits(struct intel_encoder *encoder,
 			       enum transcoder cpu_transcoder,
 			       bool enable, u32 hdcp_mask);
 void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 53b7ee6e8a0a..a9b1b6b1b40b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2172,7 +2172,7 @@ static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	struct drm_encoder *encoder;
+	struct intel_encoder *encoder;
 	enum pipe pipe = crtc->pipe;
 
 	bitmap_zero(mask->bits, POWER_DOMAIN_NUM);
@@ -2186,12 +2186,9 @@ static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 	    crtc_state->pch_pfit.force_thru)
 		set_bit(POWER_DOMAIN_PIPE_PANEL_FITTER(pipe), mask->bits);
 
-	drm_for_each_encoder_mask(encoder, &dev_priv->drm,
-				  crtc_state->uapi.encoder_mask) {
-		struct intel_encoder *intel_encoder = to_intel_encoder(encoder);
-
-		set_bit(intel_encoder->power_domain, mask->bits);
-	}
+	for_each_intel_encoder_mask(&dev_priv->drm, encoder,
+				    crtc_state->uapi.encoder_mask)
+		set_bit(encoder->power_domain, mask->bits);
 
 	if (HAS_DDI(dev_priv) && crtc_state->has_audio)
 		set_bit(POWER_DOMAIN_AUDIO_MMIO, mask->bits);
@@ -2433,12 +2430,12 @@ int intel_display_suspend(struct drm_device *dev)
 	return ret;
 }
 
-void intel_encoder_destroy(struct drm_encoder *encoder)
+void intel_encoder_destroy(struct drm_encoder *_encoder)
 {
-	struct intel_encoder *intel_encoder = to_intel_encoder(encoder);
+	struct intel_encoder *encoder = to_intel_encoder(_encoder);
 
-	drm_encoder_cleanup(encoder);
-	kfree(intel_encoder);
+	drm_encoder_cleanup(&encoder->base);
+	kfree(encoder);
 }
 
 static bool intel_crtc_supports_double_wide(const struct intel_crtc *crtc)
@@ -4348,16 +4345,15 @@ void intel_release_load_detect_pipe(struct drm_connector *connector,
 				    struct intel_load_detect_pipe *old,
 				    struct drm_modeset_acquire_ctx *ctx)
 {
-	struct intel_encoder *intel_encoder =
+	struct intel_encoder *encoder =
 		intel_attached_encoder(to_intel_connector(connector));
-	struct drm_i915_private *i915 = to_i915(intel_encoder->base.dev);
-	struct drm_encoder *encoder = &intel_encoder->base;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_atomic_state *state = old->restore_state;
 	int ret;
 
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
 		    connector->base.id, connector->name,
-		    encoder->base.id, encoder->name);
+		    encoder->base.base.id, encoder->base.name);
 
 	if (!state)
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 884e8e67b17c..92a05f1f9232 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -588,7 +588,7 @@ unsigned int intel_rotation_info_size(const struct intel_rotation_info *rot_info
 unsigned int intel_remapped_info_size(const struct intel_remapped_info *rem_info);
 bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv);
 int intel_display_suspend(struct drm_device *dev);
-void intel_encoder_destroy(struct drm_encoder *encoder);
+void intel_encoder_destroy(struct drm_encoder *_encoder);
 struct drm_display_mode *
 intel_encoder_current_mode(struct intel_encoder *encoder);
 void intel_encoder_get_config(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index fe40e2a226d6..a1700c42c455 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -517,8 +517,8 @@ static void intel_hdcp_info(struct seq_file *m,
 static void intel_dp_info(struct seq_file *m,
 			  struct intel_connector *intel_connector)
 {
-	struct intel_encoder *intel_encoder = intel_attached_encoder(intel_connector);
-	struct intel_dp *intel_dp = enc_to_intel_dp(intel_encoder);
+	struct intel_encoder *encoder = intel_attached_encoder(intel_connector);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	const struct drm_property_blob *edid = intel_connector->base.edid_blob_ptr;
 
 	seq_printf(m, "\tDPCD rev: %x\n", intel_dp->dpcd[DP_DPCD_REV]);
@@ -540,8 +540,8 @@ static void intel_dp_mst_info(struct seq_file *m,
 static void intel_hdmi_info(struct seq_file *m,
 			    struct intel_connector *intel_connector)
 {
-	struct intel_encoder *intel_encoder = intel_attached_encoder(intel_connector);
-	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(intel_encoder);
+	struct intel_encoder *encoder = intel_attached_encoder(intel_connector);
+	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 
 	seq_printf(m, "\taudio support: %s\n",
 		   str_yes_no(intel_hdmi->has_audio));
@@ -1160,7 +1160,7 @@ static int i915_dp_mst_info(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
 	struct drm_device *dev = &dev_priv->drm;
-	struct intel_encoder *intel_encoder;
+	struct intel_encoder *encoder;
 	struct intel_digital_port *dig_port;
 	struct drm_connector *connector;
 	struct drm_connector_list_iter conn_iter;
@@ -1170,17 +1170,16 @@ static int i915_dp_mst_info(struct seq_file *m, void *unused)
 		if (connector->connector_type != DRM_MODE_CONNECTOR_DisplayPort)
 			continue;
 
-		intel_encoder = intel_attached_encoder(to_intel_connector(connector));
-		if (!intel_encoder || intel_encoder->type == INTEL_OUTPUT_DP_MST)
+		encoder = intel_attached_encoder(to_intel_connector(connector));
+		if (!encoder || encoder->type == INTEL_OUTPUT_DP_MST)
 			continue;
 
-		dig_port = enc_to_dig_port(intel_encoder);
+		dig_port = enc_to_dig_port(encoder);
 		if (!intel_dp_mst_source_support(&dig_port->dp))
 			continue;
 
 		seq_printf(m, "MST Source Port [ENCODER:%d:%s]\n",
-			   dig_port->base.base.base.id,
-			   dig_port->base.base.name);
+			   encoder->base.base.id, encoder->base.name);
 		drm_dp_mst_dump_topology(m, &dig_port->dp.mst_mgr);
 	}
 	drm_connector_list_iter_end(&conn_iter);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 11f083cf1124..b730c515d431 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1882,12 +1882,10 @@ enc_to_mst(struct intel_encoder *encoder)
 static inline struct intel_digital_port *
 enc_to_dig_port(struct intel_encoder *encoder)
 {
-	struct intel_encoder *intel_encoder = encoder;
-
-	if (intel_encoder_is_dig_port(intel_encoder))
+	if (intel_encoder_is_dig_port(encoder))
 		return container_of(&encoder->base, struct intel_digital_port,
 				    base.base);
-	else if (intel_encoder_is_mst(intel_encoder))
+	else if (intel_encoder_is_mst(encoder))
 		return enc_to_mst(encoder)->primary;
 	else
 		return NULL;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8fe48634eb9d..fa9931656383 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4773,8 +4773,8 @@ intel_dp_force(struct drm_connector *connector)
 {
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct intel_encoder *intel_encoder = &dig_port->base;
-	struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
+	struct intel_encoder *encoder = &dig_port->base;
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum intel_display_power_domain aux_domain =
 		intel_aux_power_domain(dig_port);
 	intel_wakeref_t wakeref;
@@ -4873,9 +4873,9 @@ intel_dp_connector_unregister(struct drm_connector *connector)
 	intel_connector_unregister(connector);
 }
 
-void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
+void intel_dp_encoder_flush_work(struct intel_encoder *encoder)
 {
-	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_dp *intel_dp = &dig_port->dp;
 
 	intel_dp_mst_encoder_cleanup(dig_port);
@@ -4885,16 +4885,16 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
 	intel_dp_aux_fini(intel_dp);
 }
 
-void intel_dp_encoder_suspend(struct intel_encoder *intel_encoder)
+void intel_dp_encoder_suspend(struct intel_encoder *encoder)
 {
-	struct intel_dp *intel_dp = enc_to_intel_dp(intel_encoder);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	intel_pps_vdd_off_sync(intel_dp);
 }
 
-void intel_dp_encoder_shutdown(struct intel_encoder *intel_encoder)
+void intel_dp_encoder_shutdown(struct intel_encoder *encoder)
 {
-	struct intel_dp *intel_dp = enc_to_intel_dp(intel_encoder);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	intel_pps_wait_power_cycle(intel_dp);
 }
@@ -5368,10 +5368,10 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 {
 	struct drm_connector *connector = &intel_connector->base;
 	struct intel_dp *intel_dp = &dig_port->dp;
-	struct intel_encoder *intel_encoder = &dig_port->base;
-	struct drm_device *dev = intel_encoder->base.dev;
+	struct intel_encoder *encoder = &dig_port->base;
+	struct drm_device *dev = encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	enum port port = intel_encoder->port;
+	enum port port = encoder->port;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 	int type;
 
@@ -5381,8 +5381,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	if (drm_WARN(dev, dig_port->max_lanes < 1,
 		     "Not enough lanes (%d) for DP on [ENCODER:%d:%s]\n",
-		     dig_port->max_lanes, intel_encoder->base.base.id,
-		     intel_encoder->base.name))
+		     dig_port->max_lanes, encoder->base.base.id,
+		     encoder->base.name))
 		return false;
 
 	intel_dp->reset_link_params = true;
@@ -5400,7 +5400,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		 */
 		drm_WARN_ON(dev, intel_phy_is_tc(dev_priv, phy));
 		type = DRM_MODE_CONNECTOR_eDP;
-		intel_encoder->type = INTEL_OUTPUT_EDP;
+		encoder->type = INTEL_OUTPUT_EDP;
 
 		/* eDP only on port B and/or C on vlv/chv */
 		if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
@@ -5420,7 +5420,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	drm_dbg_kms(&dev_priv->drm,
 		    "Adding %s connector on [ENCODER:%d:%s]\n",
 		    type == DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
-		    intel_encoder->base.base.id, intel_encoder->base.name);
+		    encoder->base.base.id, encoder->base.name);
 
 	drm_connector_init(dev, connector, &intel_dp_connector_funcs, type);
 	drm_connector_helper_add(connector, &intel_dp_connector_helper_funcs);
@@ -5432,7 +5432,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	intel_dp_aux_init(intel_dp);
 
-	intel_connector_attach_encoder(intel_connector, intel_encoder);
+	intel_connector_attach_encoder(intel_connector, encoder);
 
 	if (HAS_DDI(dev_priv))
 		intel_connector->get_hw_state = intel_ddi_connector_get_hw_state;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index a54902c713a3..b5fee51eb92b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -12,7 +12,6 @@ enum intel_output_format;
 enum pipe;
 enum port;
 struct drm_connector_state;
-struct drm_encoder;
 struct drm_i915_private;
 struct drm_modeset_acquire_ctx;
 struct drm_dp_vsc_sdp;
@@ -50,9 +49,9 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 void intel_dp_sink_set_decompression_state(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state,
 					   bool enable);
-void intel_dp_encoder_suspend(struct intel_encoder *intel_encoder);
-void intel_dp_encoder_shutdown(struct intel_encoder *intel_encoder);
-void intel_dp_encoder_flush_work(struct drm_encoder *encoder);
+void intel_dp_encoder_suspend(struct intel_encoder *encoder);
+void intel_dp_encoder_shutdown(struct intel_encoder *encoder);
+void intel_dp_encoder_flush_work(struct intel_encoder *encoder);
 int intel_dp_compute_config(struct intel_encoder *encoder,
 			    struct intel_crtc_state *pipe_config,
 			    struct drm_connector_state *conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 35360dd543ac..4c73f3a8b6a4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -797,8 +797,8 @@ int intel_dp_hdcp_init(struct intel_digital_port *dig_port,
 {
 	struct drm_device *dev = intel_connector->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_encoder *intel_encoder = &dig_port->base;
-	enum port port = intel_encoder->port;
+	struct intel_encoder *encoder = &dig_port->base;
+	enum port port = encoder->port;
 	struct intel_dp *intel_dp = &dig_port->dp;
 
 	if (!is_hdcp_supported(dev_priv, port))
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index ac67738e4eda..d98657a61527 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -767,11 +767,12 @@ static const struct drm_connector_helper_funcs intel_dp_mst_connector_helper_fun
 	.detect_ctx = intel_dp_mst_detect,
 };
 
-static void intel_dp_mst_encoder_destroy(struct drm_encoder *encoder)
+static void intel_dp_mst_encoder_destroy(struct drm_encoder *_encoder)
 {
-	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(to_intel_encoder(encoder));
+	struct intel_encoder *encoder = to_intel_encoder(_encoder);
+	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 
-	drm_encoder_cleanup(encoder);
+	drm_encoder_cleanup(&encoder->base);
 	kfree(intel_mst);
 }
 
@@ -850,10 +851,11 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 	drm_connector_helper_add(connector, &intel_dp_mst_connector_helper_funcs);
 
 	for_each_pipe(dev_priv, pipe) {
-		struct drm_encoder *enc =
-			&intel_dp->mst_encoders[pipe]->base.base;
+		struct intel_encoder *encoder =
+			&intel_dp->mst_encoders[pipe]->base;
 
-		ret = drm_connector_attach_encoder(&intel_connector->base, enc);
+		ret = drm_connector_attach_encoder(&intel_connector->base,
+						   &encoder->base);
 		if (ret)
 			goto err;
 	}
@@ -891,7 +893,7 @@ static struct intel_dp_mst_encoder *
 intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe pipe)
 {
 	struct intel_dp_mst_encoder *intel_mst;
-	struct intel_encoder *intel_encoder;
+	struct intel_encoder *encoder;
 	struct drm_device *dev = dig_port->base.base.dev;
 
 	intel_mst = kzalloc(sizeof(*intel_mst), GFP_KERNEL);
@@ -900,16 +902,16 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
 		return NULL;
 
 	intel_mst->pipe = pipe;
-	intel_encoder = &intel_mst->base;
+	encoder = &intel_mst->base;
 	intel_mst->primary = dig_port;
 
-	drm_encoder_init(dev, &intel_encoder->base, &intel_dp_mst_enc_funcs,
+	drm_encoder_init(dev, &encoder->base, &intel_dp_mst_enc_funcs,
 			 DRM_MODE_ENCODER_DPMST, "DP-MST %c", pipe_name(pipe));
 
-	intel_encoder->type = INTEL_OUTPUT_DP_MST;
-	intel_encoder->power_domain = dig_port->base.power_domain;
-	intel_encoder->port = dig_port->base.port;
-	intel_encoder->cloneable = 0;
+	encoder->type = INTEL_OUTPUT_DP_MST;
+	encoder->power_domain = dig_port->base.power_domain;
+	encoder->port = dig_port->base.port;
+	encoder->cloneable = 0;
 	/*
 	 * This is wrong, but broken userspace uses the intersection
 	 * of possible_crtcs of all the encoders of a given connector
@@ -918,19 +920,19 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
 	 * To keep such userspace functioning we must misconfigure
 	 * this to make sure the intersection is not empty :(
 	 */
-	intel_encoder->pipe_mask = ~0;
+	encoder->pipe_mask = ~0;
 
-	intel_encoder->compute_config = intel_dp_mst_compute_config;
-	intel_encoder->compute_config_late = intel_dp_mst_compute_config_late;
-	intel_encoder->disable = intel_mst_disable_dp;
-	intel_encoder->post_disable = intel_mst_post_disable_dp;
-	intel_encoder->update_pipe = intel_ddi_update_pipe;
-	intel_encoder->pre_pll_enable = intel_mst_pre_pll_enable_dp;
-	intel_encoder->pre_enable = intel_mst_pre_enable_dp;
-	intel_encoder->enable = intel_mst_enable_dp;
-	intel_encoder->get_hw_state = intel_dp_mst_enc_get_hw_state;
-	intel_encoder->get_config = intel_dp_mst_enc_get_config;
-	intel_encoder->initial_fastset_check = intel_dp_mst_initial_fastset_check;
+	encoder->compute_config = intel_dp_mst_compute_config;
+	encoder->compute_config_late = intel_dp_mst_compute_config_late;
+	encoder->disable = intel_mst_disable_dp;
+	encoder->post_disable = intel_mst_post_disable_dp;
+	encoder->update_pipe = intel_ddi_update_pipe;
+	encoder->pre_pll_enable = intel_mst_pre_pll_enable_dp;
+	encoder->pre_enable = intel_mst_pre_enable_dp;
+	encoder->enable = intel_mst_enable_dp;
+	encoder->get_hw_state = intel_dp_mst_enc_get_hw_state;
+	encoder->get_config = intel_dp_mst_enc_get_config;
+	encoder->initial_fastset_check = intel_dp_mst_initial_fastset_check;
 
 	return intel_mst;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 595087288922..d3532e51843c 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -364,14 +364,15 @@ static const struct drm_connector_helper_funcs intel_dvo_connector_helper_funcs
 	.get_modes = intel_dvo_get_modes,
 };
 
-static void intel_dvo_enc_destroy(struct drm_encoder *encoder)
+static void intel_dvo_enc_destroy(struct drm_encoder *_encoder)
 {
-	struct intel_dvo *intel_dvo = enc_to_dvo(to_intel_encoder(encoder));
+	struct intel_encoder *encoder = to_intel_encoder(_encoder);
+	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 
 	if (intel_dvo->dev.dev_ops->destroy)
 		intel_dvo->dev.dev_ops->destroy(&intel_dvo->dev);
 
-	intel_encoder_destroy(encoder);
+	intel_encoder_destroy(&encoder->base);
 }
 
 static const struct drm_encoder_funcs intel_dvo_enc_funcs = {
@@ -390,7 +391,7 @@ static enum port intel_dvo_port(i915_reg_t dvo_reg)
 
 void intel_dvo_init(struct drm_i915_private *dev_priv)
 {
-	struct intel_encoder *intel_encoder;
+	struct intel_encoder *encoder;
 	struct intel_dvo *intel_dvo;
 	struct intel_connector *intel_connector;
 	int i;
@@ -408,14 +409,14 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 
 	intel_dvo->attached_connector = intel_connector;
 
-	intel_encoder = &intel_dvo->base;
+	encoder = &intel_dvo->base;
 
-	intel_encoder->disable = intel_disable_dvo;
-	intel_encoder->enable = intel_enable_dvo;
-	intel_encoder->get_hw_state = intel_dvo_get_hw_state;
-	intel_encoder->get_config = intel_dvo_get_config;
-	intel_encoder->compute_config = intel_dvo_compute_config;
-	intel_encoder->pre_enable = intel_dvo_pre_enable;
+	encoder->disable = intel_disable_dvo;
+	encoder->enable = intel_enable_dvo;
+	encoder->get_hw_state = intel_dvo_get_hw_state;
+	encoder->get_config = intel_dvo_get_config;
+	encoder->compute_config = intel_dvo_compute_config;
+	encoder->pre_enable = intel_dvo_pre_enable;
 	intel_connector->get_hw_state = intel_dvo_connector_get_hw_state;
 
 	/* Now, try to find a controller */
@@ -481,17 +482,17 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 			continue;
 
 		port = intel_dvo_port(dvo->dvo_reg);
-		drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
+		drm_encoder_init(&dev_priv->drm, &encoder->base,
 				 &intel_dvo_enc_funcs, encoder_type,
 				 "DVO %c", port_name(port));
 
-		intel_encoder->type = INTEL_OUTPUT_DVO;
-		intel_encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
-		intel_encoder->port = port;
-		intel_encoder->pipe_mask = ~0;
+		encoder->type = INTEL_OUTPUT_DVO;
+		encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
+		encoder->port = port;
+		encoder->pipe_mask = ~0;
 
 		if (dvo->type != INTEL_DVO_CHIP_LVDS)
-			intel_encoder->cloneable = BIT(INTEL_OUTPUT_ANALOG) |
+			encoder->cloneable = BIT(INTEL_OUTPUT_ANALOG) |
 				BIT(INTEL_OUTPUT_DVO);
 
 		switch (dvo->type) {
@@ -516,7 +517,7 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 					 &intel_dvo_connector_helper_funcs);
 		connector->display_info.subpixel_order = SubPixelHorizontalRGB;
 
-		intel_connector_attach_encoder(intel_connector, intel_encoder);
+		intel_connector_attach_encoder(intel_connector, encoder);
 		if (dvo->type == INTEL_DVO_CHIP_LVDS) {
 			/*
 			 * For our LVDS chipsets, we should hopefully be able
@@ -526,8 +527,7 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 			 * headers, likely), so for now, just get the current
 			 * mode being output through DVO.
 			 */
-			intel_panel_add_encoder_fixed_mode(intel_connector,
-							   intel_encoder);
+			intel_panel_add_encoder_fixed_mode(intel_connector, encoder);
 
 			intel_panel_init(intel_connector);
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 93519fb23d9d..4d57d6193142 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2927,27 +2927,27 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 {
 	struct drm_connector *connector = &intel_connector->base;
 	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
-	struct intel_encoder *intel_encoder = &dig_port->base;
-	struct drm_device *dev = intel_encoder->base.dev;
+	struct intel_encoder *encoder = &dig_port->base;
+	struct drm_device *dev = encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct i2c_adapter *ddc;
-	enum port port = intel_encoder->port;
+	enum port port = encoder->port;
 	struct cec_connector_info conn_info;
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "Adding HDMI connector on [ENCODER:%d:%s]\n",
-		    intel_encoder->base.base.id, intel_encoder->base.name);
+		    encoder->base.base.id, encoder->base.name);
 
 	if (DISPLAY_VER(dev_priv) < 12 && drm_WARN_ON(dev, port == PORT_A))
 		return;
 
 	if (drm_WARN(dev, dig_port->max_lanes < 4,
 		     "Not enough lanes (%d) for HDMI on [ENCODER:%d:%s]\n",
-		     dig_port->max_lanes, intel_encoder->base.base.id,
-		     intel_encoder->base.name))
+		     dig_port->max_lanes, encoder->base.base.id,
+		     encoder->base.name))
 		return;
 
-	intel_hdmi->ddc_bus = intel_hdmi_ddc_pin(intel_encoder);
+	intel_hdmi->ddc_bus = intel_hdmi_ddc_pin(encoder);
 	ddc = intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);
 
 	drm_connector_init_with_ddc(dev, connector,
@@ -2971,7 +2971,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 
 	intel_hdmi_add_properties(intel_hdmi, connector);
 
-	intel_connector_attach_encoder(intel_connector, intel_encoder);
+	intel_connector_attach_encoder(intel_connector, encoder);
 	intel_hdmi->attached_connector = intel_connector;
 
 	if (is_hdcp_supported(dev_priv, port)) {
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index 93f65a917c36..8532f0cc3dd2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -10,7 +10,6 @@
 #include <linux/types.h>
 
 struct drm_connector;
-struct drm_encoder;
 struct drm_i915_private;
 struct intel_connector;
 struct intel_digital_port;
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 270368b43729..251282ef2d90 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -407,15 +407,13 @@ intel_lvds_mode_valid(struct drm_connector *connector,
 	return MODE_OK;
 }
 
-static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
+static int intel_lvds_compute_config(struct intel_encoder *encoder,
 				     struct intel_crtc_state *pipe_config,
 				     struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
-	struct intel_lvds_encoder *lvds_encoder =
-		to_lvds_encoder(intel_encoder);
-	struct intel_connector *intel_connector =
-		lvds_encoder->attached_connector;
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
+	struct intel_connector *intel_connector = lvds_encoder->attached_connector;
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	unsigned int lvds_bpp;
@@ -830,10 +828,9 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 {
 	struct drm_device *dev = &dev_priv->drm;
 	struct intel_lvds_encoder *lvds_encoder;
-	struct intel_encoder *intel_encoder;
+	struct intel_encoder *encoder;
 	struct intel_connector *intel_connector;
 	struct drm_connector *connector;
-	struct drm_encoder *encoder;
 	struct edid *edid;
 	i915_reg_t lvds_reg;
 	u32 lvds;
@@ -887,40 +884,39 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 
 	lvds_encoder->attached_connector = intel_connector;
 
-	intel_encoder = &lvds_encoder->base;
-	encoder = &intel_encoder->base;
+	encoder = &lvds_encoder->base;
 	connector = &intel_connector->base;
 	drm_connector_init(dev, &intel_connector->base, &intel_lvds_connector_funcs,
 			   DRM_MODE_CONNECTOR_LVDS);
 
-	drm_encoder_init(dev, &intel_encoder->base, &intel_lvds_enc_funcs,
+	drm_encoder_init(dev, &encoder->base, &intel_lvds_enc_funcs,
 			 DRM_MODE_ENCODER_LVDS, "LVDS");
 
-	intel_encoder->enable = intel_enable_lvds;
-	intel_encoder->pre_enable = intel_pre_enable_lvds;
-	intel_encoder->compute_config = intel_lvds_compute_config;
+	encoder->enable = intel_enable_lvds;
+	encoder->pre_enable = intel_pre_enable_lvds;
+	encoder->compute_config = intel_lvds_compute_config;
 	if (HAS_PCH_SPLIT(dev_priv)) {
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
+	encoder->get_hw_state = intel_lvds_get_hw_state;
+	encoder->get_config = intel_lvds_get_config;
+	encoder->update_pipe = intel_backlight_update;
+	encoder->shutdown = intel_lvds_shutdown;
 	intel_connector->get_hw_state = intel_connector_get_hw_state;
 
-	intel_connector_attach_encoder(intel_connector, intel_encoder);
+	intel_connector_attach_encoder(intel_connector, encoder);
 
-	intel_encoder->type = INTEL_OUTPUT_LVDS;
-	intel_encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
-	intel_encoder->port = PORT_NONE;
-	intel_encoder->cloneable = 0;
+	encoder->type = INTEL_OUTPUT_LVDS;
+	encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
+	encoder->port = PORT_NONE;
+	encoder->cloneable = 0;
 	if (DISPLAY_VER(dev_priv) < 4)
-		intel_encoder->pipe_mask = BIT(PIPE_B);
+		encoder->pipe_mask = BIT(PIPE_B);
 	else
-		intel_encoder->pipe_mask = ~0;
+		encoder->pipe_mask = ~0;
 
 	drm_connector_helper_add(connector, &intel_lvds_connector_helper_funcs);
 	connector->display_info.subpixel_order = SubPixelHorizontalRGB;
@@ -982,7 +978,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	 * whatever is currently programmed is the correct mode.
 	 */
 	if (!intel_panel_preferred_fixed_mode(intel_connector))
-		intel_panel_add_encoder_fixed_mode(intel_connector, intel_encoder);
+		intel_panel_add_encoder_fixed_mode(intel_connector, encoder);
 
 	mutex_unlock(&dev->mode_config.mutex);
 
@@ -1005,7 +1001,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 failed:
 	drm_dbg_kms(&dev_priv->drm, "No LVDS modes found, disabling.\n");
 	drm_connector_cleanup(connector);
-	drm_encoder_cleanup(encoder);
+	drm_encoder_cleanup(&encoder->base);
 	kfree(lvds_encoder);
 	intel_connector_free(intel_connector);
 	return;
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index caa07ef34f21..3ae575dcd40d 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -356,10 +356,10 @@ static int swsci(struct drm_i915_private *dev_priv,
 #define DISPLAY_TYPE_EXTERNAL_FLAT_PANEL	2
 #define DISPLAY_TYPE_INTERNAL_FLAT_PANEL	3
 
-int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
+int intel_opregion_notify_encoder(struct intel_encoder *encoder,
 				  bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u32 parm = 0;
 	u32 type = 0;
 	u32 port;
@@ -374,10 +374,10 @@ int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
 	if (ret)
 		return ret;
 
-	if (intel_encoder->type == INTEL_OUTPUT_DSI)
+	if (encoder->type == INTEL_OUTPUT_DSI)
 		port = 0;
 	else
-		port = intel_encoder->port;
+		port = encoder->port;
 
 	if (port == PORT_E)  {
 		port = 0;
@@ -396,15 +396,15 @@ int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
 	if (port > 4) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "[ENCODER:%d:%s] port %c (index %u) out of bounds for display power state notification\n",
-			    intel_encoder->base.base.id, intel_encoder->base.name,
-			    port_name(intel_encoder->port), port);
+			    encoder->base.base.id, encoder->base.name,
+			    port_name(encoder->port), port);
 		return -EINVAL;
 	}
 
 	if (!enable)
 		parm |= 4 << 8;
 
-	switch (intel_encoder->type) {
+	switch (encoder->type) {
 	case INTEL_OUTPUT_ANALOG:
 		type = DISPLAY_TYPE_CRT;
 		break;
@@ -420,8 +420,8 @@ int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
 		break;
 	default:
 		drm_WARN_ONCE(&dev_priv->drm, 1,
-			      "unsupported intel_encoder type %d\n",
-			      intel_encoder->type);
+			      "unsupported encoder type %d\n",
+			      encoder->type);
 		return -EINVAL;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 2f261f985400..6cebe60349ae 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -69,7 +69,7 @@ void intel_opregion_suspend(struct drm_i915_private *dev_priv,
 			    pci_power_t state);
 
 void intel_opregion_asle_intr(struct drm_i915_private *dev_priv);
-int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
+int intel_opregion_notify_encoder(struct intel_encoder *encoder,
 				  bool enable);
 int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
 				  pci_power_t state);
@@ -107,7 +107,7 @@ static inline void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
 }
 
 static inline int
-intel_opregion_notify_encoder(struct intel_encoder *intel_encoder, bool enable)
+intel_opregion_notify_encoder(struct intel_encoder *encoder, bool enable)
 {
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 2a99ec7ff737..01c69da81f3d 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1454,11 +1454,11 @@ static void intel_sdvo_update_props(struct intel_sdvo *intel_sdvo,
 }
 
 static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
-				  struct intel_encoder *intel_encoder,
+				  struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	const struct intel_sdvo_connector_state *sdvo_state =
@@ -1466,7 +1466,7 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
 	struct intel_sdvo_connector *intel_sdvo_connector =
 		to_intel_sdvo_connector(conn_state->connector);
 	const struct drm_display_mode *mode = &crtc_state->hw.mode;
-	struct intel_sdvo *intel_sdvo = to_sdvo(intel_encoder);
+	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
 	u32 sdvox;
 	struct intel_sdvo_in_out_map in_out;
 	struct intel_sdvo_dtd input_dtd, output_dtd;
@@ -2513,12 +2513,13 @@ static const struct drm_connector_helper_funcs intel_sdvo_connector_helper_funcs
 	.atomic_check = intel_sdvo_atomic_check,
 };
 
-static void intel_sdvo_enc_destroy(struct drm_encoder *encoder)
+static void intel_sdvo_enc_destroy(struct drm_encoder *_encoder)
 {
-	struct intel_sdvo *intel_sdvo = to_sdvo(to_intel_encoder(encoder));
+	struct intel_encoder *encoder = to_intel_encoder(_encoder);
+	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
 
 	i2c_del_adapter(&intel_sdvo->ddc);
-	intel_encoder_destroy(encoder);
+	intel_encoder_destroy(&encoder->base);
 }
 
 static const struct drm_encoder_funcs intel_sdvo_enc_funcs = {
@@ -2734,9 +2735,8 @@ static struct intel_sdvo_connector *intel_sdvo_connector_alloc(void)
 static bool
 intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, int device)
 {
-	struct drm_encoder *encoder = &intel_sdvo->base.base;
+	struct intel_encoder *encoder = &intel_sdvo->base;
 	struct drm_connector *connector;
-	struct intel_encoder *intel_encoder = to_intel_encoder(encoder);
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
 
@@ -2764,12 +2764,12 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, int device)
 		 * Ensure that they get re-enabled when an interrupt happens.
 		 */
 		intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
-		intel_encoder->hotplug = intel_sdvo_hotplug;
-		intel_sdvo_enable_hotplug(intel_encoder);
+		encoder->hotplug = intel_sdvo_hotplug;
+		intel_sdvo_enable_hotplug(encoder);
 	} else {
 		intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT | DRM_CONNECTOR_POLL_DISCONNECT;
 	}
-	encoder->encoder_type = DRM_MODE_ENCODER_TMDS;
+	encoder->base.encoder_type = DRM_MODE_ENCODER_TMDS;
 	connector->connector_type = DRM_MODE_CONNECTOR_DVID;
 
 	if (intel_sdvo_is_hdmi_connector(intel_sdvo, device)) {
@@ -2791,7 +2791,7 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, int device)
 static bool
 intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, int type)
 {
-	struct drm_encoder *encoder = &intel_sdvo->base.base;
+	struct intel_encoder *encoder = &intel_sdvo->base;
 	struct drm_connector *connector;
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
@@ -2804,7 +2804,7 @@ intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, int type)
 
 	intel_connector = &intel_sdvo_connector->base;
 	connector = &intel_connector->base;
-	encoder->encoder_type = DRM_MODE_ENCODER_TVDAC;
+	encoder->base.encoder_type = DRM_MODE_ENCODER_TVDAC;
 	connector->connector_type = DRM_MODE_CONNECTOR_SVIDEO;
 
 	intel_sdvo->controlled_output |= type;
@@ -2831,7 +2831,7 @@ intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, int type)
 static bool
 intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, int device)
 {
-	struct drm_encoder *encoder = &intel_sdvo->base.base;
+	struct intel_encoder *encoder = &intel_sdvo->base;
 	struct drm_connector *connector;
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
@@ -2845,7 +2845,7 @@ intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, int device)
 	intel_connector = &intel_sdvo_connector->base;
 	connector = &intel_connector->base;
 	intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
-	encoder->encoder_type = DRM_MODE_ENCODER_DAC;
+	encoder->base.encoder_type = DRM_MODE_ENCODER_DAC;
 	connector->connector_type = DRM_MODE_CONNECTOR_VGA;
 
 	if (device == 0) {
@@ -2867,8 +2867,8 @@ intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, int device)
 static bool
 intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 {
-	struct drm_encoder *encoder = &intel_sdvo->base.base;
-	struct drm_i915_private *i915 = to_i915(encoder->dev);
+	struct intel_encoder *encoder = &intel_sdvo->base;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector;
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
@@ -2881,7 +2881,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 
 	intel_connector = &intel_sdvo_connector->base;
 	connector = &intel_connector->base;
-	encoder->encoder_type = DRM_MODE_ENCODER_LVDS;
+	encoder->base.encoder_type = DRM_MODE_ENCODER_LVDS;
 	connector->connector_type = DRM_MODE_CONNECTOR_LVDS;
 
 	if (device == 0) {
@@ -3294,7 +3294,7 @@ static void assert_sdvo_port_valid(const struct drm_i915_private *dev_priv,
 bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 		     i915_reg_t sdvo_reg, enum port port)
 {
-	struct intel_encoder *intel_encoder;
+	struct intel_encoder *encoder;
 	struct intel_sdvo *intel_sdvo;
 	int i;
 
@@ -3313,11 +3313,11 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 		goto err_i2c_bus;
 
 	/* encoder type will be decided later */
-	intel_encoder = &intel_sdvo->base;
-	intel_encoder->type = INTEL_OUTPUT_SDVO;
-	intel_encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
-	intel_encoder->port = port;
-	drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
+	encoder = &intel_sdvo->base;
+	encoder->type = INTEL_OUTPUT_SDVO;
+	encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
+	encoder->port = port;
+	drm_encoder_init(&dev_priv->drm, &encoder->base,
 			 &intel_sdvo_enc_funcs, 0,
 			 "SDVO %c", port_name(port));
 
@@ -3333,17 +3333,17 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 		}
 	}
 
-	intel_encoder->compute_config = intel_sdvo_compute_config;
+	encoder->compute_config = intel_sdvo_compute_config;
 	if (HAS_PCH_SPLIT(dev_priv)) {
-		intel_encoder->disable = pch_disable_sdvo;
-		intel_encoder->post_disable = pch_post_disable_sdvo;
+		encoder->disable = pch_disable_sdvo;
+		encoder->post_disable = pch_post_disable_sdvo;
 	} else {
-		intel_encoder->disable = intel_disable_sdvo;
+		encoder->disable = intel_disable_sdvo;
 	}
-	intel_encoder->pre_enable = intel_sdvo_pre_enable;
-	intel_encoder->enable = intel_enable_sdvo;
-	intel_encoder->get_hw_state = intel_sdvo_get_hw_state;
-	intel_encoder->get_config = intel_sdvo_get_config;
+	encoder->pre_enable = intel_sdvo_pre_enable;
+	encoder->enable = intel_enable_sdvo;
+	encoder->get_hw_state = intel_sdvo_get_hw_state;
+	encoder->get_config = intel_sdvo_get_config;
 
 	/* In default case sdvo lvds is false */
 	if (!intel_sdvo_get_capabilities(intel_sdvo, &intel_sdvo->caps))
@@ -3367,9 +3367,9 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	 */
 	if (intel_sdvo->hotplug_active) {
 		if (intel_sdvo->port == PORT_B)
-			intel_encoder->hpd_pin = HPD_SDVO_B;
+			encoder->hpd_pin = HPD_SDVO_B;
 		else
-			intel_encoder->hpd_pin = HPD_SDVO_C;
+			encoder->hpd_pin = HPD_SDVO_C;
 	}
 
 	/*
@@ -3415,7 +3415,7 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	intel_sdvo_output_cleanup(intel_sdvo);
 
 err:
-	drm_encoder_cleanup(&intel_encoder->base);
+	drm_encoder_cleanup(&encoder->base);
 	i2c_del_adapter(&intel_sdvo->ddc);
 err_i2c_bus:
 	intel_sdvo_unselect_i2c_bus(intel_sdvo);
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index b1c74eca4fe7..8235f91f58c5 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1917,7 +1917,7 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	struct drm_device *dev = &dev_priv->drm;
 	struct drm_connector *connector;
 	struct intel_tv *intel_tv;
-	struct intel_encoder *intel_encoder;
+	struct intel_encoder *encoder;
 	struct intel_connector *intel_connector;
 	u32 tv_dac_on, tv_dac_off, save_tv_dac;
 
@@ -1963,7 +1963,7 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 		return;
 	}
 
-	intel_encoder = &intel_tv->base;
+	encoder = &intel_tv->base;
 	connector = &intel_connector->base;
 
 	/*
@@ -1981,24 +1981,24 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	drm_connector_init(dev, connector, &intel_tv_connector_funcs,
 			   DRM_MODE_CONNECTOR_SVIDEO);
 
-	drm_encoder_init(dev, &intel_encoder->base, &intel_tv_enc_funcs,
+	drm_encoder_init(dev, &encoder->base, &intel_tv_enc_funcs,
 			 DRM_MODE_ENCODER_TVDAC, "TV");
 
-	intel_encoder->compute_config = intel_tv_compute_config;
-	intel_encoder->get_config = intel_tv_get_config;
-	intel_encoder->pre_enable = intel_tv_pre_enable;
-	intel_encoder->enable = intel_enable_tv;
-	intel_encoder->disable = intel_disable_tv;
-	intel_encoder->get_hw_state = intel_tv_get_hw_state;
+	encoder->compute_config = intel_tv_compute_config;
+	encoder->get_config = intel_tv_get_config;
+	encoder->pre_enable = intel_tv_pre_enable;
+	encoder->enable = intel_enable_tv;
+	encoder->disable = intel_disable_tv;
+	encoder->get_hw_state = intel_tv_get_hw_state;
 	intel_connector->get_hw_state = intel_connector_get_hw_state;
 
-	intel_connector_attach_encoder(intel_connector, intel_encoder);
+	intel_connector_attach_encoder(intel_connector, encoder);
 
-	intel_encoder->type = INTEL_OUTPUT_TVOUT;
-	intel_encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
-	intel_encoder->port = PORT_NONE;
-	intel_encoder->pipe_mask = ~0;
-	intel_encoder->cloneable = 0;
+	encoder->type = INTEL_OUTPUT_TVOUT;
+	encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
+	encoder->port = PORT_NONE;
+	encoder->pipe_mask = ~0;
+	encoder->cloneable = 0;
 	intel_tv->type = DRM_MODE_CONNECTOR_Unknown;
 
 	drm_connector_helper_add(connector, &intel_tv_connector_helper_funcs);
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index dee0147a316c..58b5b3cfc540 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -83,8 +83,8 @@ enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt)
 
 void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port)
 {
-	struct drm_encoder *encoder = &intel_dsi->base.base;
-	struct drm_device *dev = encoder->dev;
+	struct intel_encoder *encoder = &intel_dsi->base;
+	struct drm_device *dev = encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	u32 mask;
 
@@ -224,8 +224,8 @@ static const struct mipi_dsi_host_ops intel_dsi_host_ops = {
 static int dpi_send_cmd(struct intel_dsi *intel_dsi, u32 cmd, bool hs,
 			enum port port)
 {
-	struct drm_encoder *encoder = &intel_dsi->base.base;
-	struct drm_device *dev = encoder->dev;
+	struct intel_encoder *encoder = &intel_dsi->base;
+	struct drm_device *dev = encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	u32 mask;
 
@@ -730,7 +730,7 @@ static void intel_dsi_wait_panel_power_cycle(struct intel_dsi *intel_dsi)
 		msleep(intel_dsi->panel_pwr_cycle_delay - panel_power_off_duration);
 }
 
-static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
+static void intel_dsi_prepare(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *pipe_config);
 static void intel_dsi_unprepare(struct intel_encoder *encoder);
 
@@ -1299,12 +1299,12 @@ static u16 txclkesc(u32 divider, unsigned int us)
 	}
 }
 
-static void set_dsi_timings(struct drm_encoder *encoder,
+static void set_dsi_timings(struct intel_encoder *encoder,
 			    const struct drm_display_mode *adjusted_mode)
 {
-	struct drm_device *dev = encoder->dev;
+	struct drm_device *dev = encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_dsi *intel_dsi = enc_to_intel_dsi(to_intel_encoder(encoder));
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 	unsigned int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
 	unsigned int lane_count = intel_dsi->lane_count;
@@ -1388,14 +1388,13 @@ static u32 pixel_format_to_reg(enum mipi_dsi_pixel_format fmt)
 	}
 }
 
-static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
+static void intel_dsi_prepare(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *pipe_config)
 {
-	struct drm_encoder *encoder = &intel_encoder->base;
-	struct drm_device *dev = encoder->dev;
+	struct drm_device *dev = encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	struct intel_dsi *intel_dsi = enc_to_intel_dsi(to_intel_encoder(encoder));
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	enum port port;
 	unsigned int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
@@ -1627,12 +1626,13 @@ static void intel_dsi_unprepare(struct intel_encoder *encoder)
 	}
 }
 
-static void intel_dsi_encoder_destroy(struct drm_encoder *encoder)
+static void intel_dsi_encoder_destroy(struct drm_encoder *_encoder)
 {
-	struct intel_dsi *intel_dsi = enc_to_intel_dsi(to_intel_encoder(encoder));
+	struct intel_encoder *encoder = to_intel_encoder(_encoder);
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 
 	intel_dsi_vbt_gpio_cleanup(intel_dsi);
-	intel_encoder_destroy(encoder);
+	intel_encoder_destroy(&encoder->base);
 }
 
 static const struct drm_encoder_funcs intel_dsi_funcs = {
@@ -1847,8 +1847,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 {
 	struct drm_device *dev = &dev_priv->drm;
 	struct intel_dsi *intel_dsi;
-	struct intel_encoder *intel_encoder;
-	struct drm_encoder *encoder;
+	struct intel_encoder *encoder;
 	struct intel_connector *intel_connector;
 	struct drm_connector *connector;
 	struct drm_display_mode *current_mode;
@@ -1876,43 +1875,42 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 		return;
 	}
 
-	intel_encoder = &intel_dsi->base;
-	encoder = &intel_encoder->base;
+	encoder = &intel_dsi->base;
 	intel_dsi->attached_connector = intel_connector;
 
 	connector = &intel_connector->base;
 
-	drm_encoder_init(dev, encoder, &intel_dsi_funcs, DRM_MODE_ENCODER_DSI,
-			 "DSI %c", port_name(port));
+	drm_encoder_init(dev, &encoder->base, &intel_dsi_funcs,
+			 DRM_MODE_ENCODER_DSI, "DSI %c", port_name(port));
 
-	intel_encoder->compute_config = intel_dsi_compute_config;
-	intel_encoder->pre_enable = intel_dsi_pre_enable;
+	encoder->compute_config = intel_dsi_compute_config;
+	encoder->pre_enable = intel_dsi_pre_enable;
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		intel_encoder->enable = bxt_dsi_enable;
-	intel_encoder->disable = intel_dsi_disable;
-	intel_encoder->post_disable = intel_dsi_post_disable;
-	intel_encoder->get_hw_state = intel_dsi_get_hw_state;
-	intel_encoder->get_config = intel_dsi_get_config;
-	intel_encoder->update_pipe = intel_backlight_update;
-	intel_encoder->shutdown = intel_dsi_shutdown;
+		encoder->enable = bxt_dsi_enable;
+	encoder->disable = intel_dsi_disable;
+	encoder->post_disable = intel_dsi_post_disable;
+	encoder->get_hw_state = intel_dsi_get_hw_state;
+	encoder->get_config = intel_dsi_get_config;
+	encoder->update_pipe = intel_backlight_update;
+	encoder->shutdown = intel_dsi_shutdown;
 
 	intel_connector->get_hw_state = intel_connector_get_hw_state;
 
-	intel_encoder->port = port;
-	intel_encoder->type = INTEL_OUTPUT_DSI;
-	intel_encoder->power_domain = POWER_DOMAIN_PORT_DSI;
-	intel_encoder->cloneable = 0;
+	encoder->port = port;
+	encoder->type = INTEL_OUTPUT_DSI;
+	encoder->power_domain = POWER_DOMAIN_PORT_DSI;
+	encoder->cloneable = 0;
 
 	/*
 	 * On BYT/CHV, pipe A maps to MIPI DSI port A, pipe B maps to MIPI DSI
 	 * port C. BXT isn't limited like this.
 	 */
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		intel_encoder->pipe_mask = ~0;
+		encoder->pipe_mask = ~0;
 	else if (port == PORT_A)
-		intel_encoder->pipe_mask = BIT(PIPE_A);
+		encoder->pipe_mask = BIT(PIPE_A);
 	else
-		intel_encoder->pipe_mask = BIT(PIPE_B);
+		encoder->pipe_mask = BIT(PIPE_B);
 
 	intel_dsi->panel_power_off_time = ktime_get_boottime();
 
@@ -1947,7 +1945,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	}
 
 	/* Use clock read-back from current hw-state for fastboot */
-	current_mode = intel_encoder_current_mode(intel_encoder);
+	current_mode = intel_encoder_current_mode(encoder);
 	if (current_mode) {
 		drm_dbg_kms(&dev_priv->drm, "Calculated pclk %d GOP %d\n",
 			    intel_dsi->pclk, current_mode->clock);
@@ -1963,7 +1961,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	vlv_dphy_param_init(intel_dsi);
 
 	intel_dsi_vbt_gpio_init(intel_dsi,
-				intel_dsi_get_hw_state(intel_encoder, &pipe));
+				intel_dsi_get_hw_state(encoder, &pipe));
 
 	drm_connector_init(dev, connector, &intel_dsi_connector_funcs,
 			   DRM_MODE_CONNECTOR_DSI);
@@ -1972,7 +1970,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 
 	connector->display_info.subpixel_order = SubPixelHorizontalRGB; /*XXX*/
 
-	intel_connector_attach_encoder(intel_connector, intel_encoder);
+	intel_connector_attach_encoder(intel_connector, encoder);
 
 	mutex_lock(&dev->mode_config.mutex);
 	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
@@ -1994,7 +1992,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 err_cleanup_connector:
 	drm_connector_cleanup(&intel_connector->base);
 err:
-	drm_encoder_cleanup(&intel_encoder->base);
+	drm_encoder_cleanup(&encoder->base);
 	kfree(intel_dsi);
 	kfree(intel_connector);
 }
-- 
2.35.1

