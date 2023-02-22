Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7080269EAED
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 00:03:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32E0A10E8FE;
	Tue, 21 Feb 2023 23:03:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DC2510E8F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 23:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677020601; x=1708556601;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=znNkSHUggeCucrQI/+eA4c9C++c0ZvMLmhwpQKbG7i8=;
 b=UyBM9nwhC6h7J5oDrM1pjas93ca0MsKoe+XGdR2buUXPVyW0BlkWH7U1
 v2WHTegyd7UNbQmcDD8zxPnpm5yZRuAvC48lZQaB0IIHFj2T6eMcHKb+O
 BcDBotC36MNUOMycgJSW2sWWDYRtvMv1L/jHXqgXVuxDvDbR+h6Ehbdei
 utwDgA0+RZLTTJ54wI07FOaOtjTDldJq666sPXVvANeoPR+tO/THABYv9
 I1gPfnL+vBKuQ90Aw/InB+WpaSLvx8YboCYutpCUwh5wgAInrC/Qn2uFh
 iNiF2Jam1fyiNO0+efgFW6OnKr3Tn52isN4T870DnkzLwaf14soV0yzS6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="330501898"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="330501898"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 15:03:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="814690176"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="814690176"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 21 Feb 2023 15:03:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 01:03:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 01:02:22 +0200
Message-Id: <20230221230227.6244-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 17/22] drm/i915: Try to initialize DDI/ICL+
 DSI ports for every VBT child device
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

Try to deal with duplicate child devices for the same DDI port
by attempting to initialize them in VBT defined order The first
on to succeed for a specific DDI port will be the one we use.

TODO: DSI dual link handling is sketchy at best

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        | 11 ++--
 drivers/gpu/drm/i915/display/icl_dsi.h        |  6 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 65 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_bios.h     |  6 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      | 56 ++++++++++++----
 drivers/gpu/drm/i915/display/intel_ddi.h      |  5 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 19 ++----
 .../gpu/drm/i915/display/intel_display_core.h |  2 -
 8 files changed, 117 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index b5316715bb3b..60cce2a1a3fc 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1896,18 +1896,16 @@ static void icl_dsi_add_properties(struct intel_connector *connector)
 						       fixed_mode->hdisplay,
 						       fixed_mode->vdisplay);
 }
 
-void icl_dsi_init(struct drm_i915_private *dev_priv)
+void icl_dsi_init(struct drm_i915_private *dev_priv,
+		  struct intel_bios_encoder_data *devdata,
+		  enum port port)
 {
 	struct intel_dsi *intel_dsi;
 	struct intel_encoder *encoder;
 	struct intel_connector *intel_connector;
 	struct drm_connector *connector;
-	enum port port;
-
-	if (!intel_bios_is_dsi_present(dev_priv, &port))
-		return;
 
 	intel_dsi = kzalloc(sizeof(*intel_dsi), GFP_KERNEL);
 	if (!intel_dsi)
 		return;
@@ -1921,8 +1919,10 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	encoder = &intel_dsi->base;
 	intel_dsi->attached_connector = intel_connector;
 	connector = &intel_connector->base;
 
+	encoder->devdata = devdata;
+
 	/* register DSI encoder with DRM subsystem */
 	drm_encoder_init(&dev_priv->drm, &encoder->base, &gen11_dsi_encoder_funcs,
 			 DRM_MODE_ENCODER_DSI, "DSI %c", port_name(port));
 
@@ -1955,9 +1955,8 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 
 	/* attach connector to encoder */
 	intel_connector_attach_encoder(intel_connector, encoder);
 
-	encoder->devdata = intel_bios_encoder_data_lookup(dev_priv, port);
 	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, encoder->devdata, NULL);
 
 	mutex_lock(&dev_priv->drm.mode_config.mutex);
 	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.h b/drivers/gpu/drm/i915/display/icl_dsi.h
index b4861b56b5b2..05901b923735 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.h
+++ b/drivers/gpu/drm/i915/display/icl_dsi.h
@@ -5,11 +5,15 @@
 
 #ifndef __ICL_DSI_H__
 #define __ICL_DSI_H__
 
+enum port;
 struct drm_i915_private;
+struct intel_bios_encoder_data;
 struct intel_crtc_state;
 
-void icl_dsi_init(struct drm_i915_private *i915);
+void icl_dsi_init(struct drm_i915_private *i915,
+		  struct intel_bios_encoder_data *devdata,
+		  enum port port);
 void icl_dsi_frame_update(struct intel_crtc_state *crtc_state);
 
 #endif /* __ICL_DSI_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 4ddced8c049c..1bfbe1382670 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2599,9 +2599,9 @@ intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata)
 	return intel_bios_encoder_supports_dp(devdata) &&
 		devdata->child.device_type & DEVICE_TYPE_INTERNAL_CONNECTOR;
 }
 
-static bool
+bool
 intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_data *devdata)
 {
 	return devdata->child.device_type & DEVICE_TYPE_MIPI_OUTPUT;
 }
@@ -2657,15 +2657,21 @@ static bool is_port_valid(struct drm_i915_private *i915, enum port port)
 
 	return true;
 }
 
-static void print_ddi_port(const struct intel_bios_encoder_data *devdata,
-			   enum port port)
+static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
 {
 	struct drm_i915_private *i915 = devdata->i915;
 	const struct child_device_config *child = &devdata->child;
 	bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb, supports_tbt;
 	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
+	enum port port;
+
+	port = dvo_port_to_port(i915, child->dvo_port);
+	if (port == PORT_NONE && DISPLAY_VER(i915) >= 11)
+		port = dsi_dvo_port_to_port(i915, child->dvo_port);
+	if (port == PORT_NONE)
+		return;
 
 	is_dvi = intel_bios_encoder_supports_dvi(devdata);
 	is_dp = intel_bios_encoder_supports_dp(devdata);
 	is_crt = intel_bios_encoder_supports_crt(devdata);
@@ -2743,18 +2749,9 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 			    port_name(port));
 		return;
 	}
 
-	if (i915->display.vbt.ports[port]) {
-		drm_dbg_kms(&i915->drm,
-			    "More than one child device for port %c in VBT, using the first.\n",
-			    port_name(port));
-		return;
-	}
-
 	sanitize_device_type(devdata, port);
-
-	i915->display.vbt.ports[port] = devdata;
 }
 
 void intel_bios_encoder_sanitize(struct intel_bios_encoder_data *devdata,
 				 enum port port)
@@ -2776,20 +2773,17 @@ static bool has_ddi_port_info(struct drm_i915_private *i915)
 
 static void parse_ddi_ports(struct drm_i915_private *i915)
 {
 	struct intel_bios_encoder_data *devdata;
-	enum port port;
 
 	if (!has_ddi_port_info(i915))
 		return;
 
 	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node)
 		parse_ddi_port(devdata);
 
-	for_each_port(port) {
-		if (i915->display.vbt.ports[port])
-			print_ddi_port(i915->display.vbt.ports[port], port);
-	}
+	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node)
+		print_ddi_port(devdata);
 }
 
 static void
 parse_general_definitions(struct drm_i915_private *i915)
@@ -3711,6 +3705,41 @@ bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata
 
 struct intel_bios_encoder_data *
 intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port)
 {
-	return i915->display.vbt.ports[port];
+	struct intel_bios_encoder_data *devdata;
+
+	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+		const struct child_device_config *child = &devdata->child;
+		enum port p;
+
+		p = dvo_port_to_port(i915, child->dvo_port);
+		if (p == PORT_NONE && DISPLAY_VER(i915) >= 11)
+			p = dsi_dvo_port_to_port(i915, child->dvo_port);
+
+		if (p == port)
+			return devdata;
+	}
+
+	return NULL;
+}
+
+void intel_bios_for_each_encoder(struct drm_i915_private *i915,
+				 void (*func)(struct drm_i915_private *i915,
+					      struct intel_bios_encoder_data *devdata,
+					      enum port port))
+{
+	struct intel_bios_encoder_data *devdata;
+
+	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+		const struct child_device_config *child = &devdata->child;
+		enum port port;
+
+		port = dvo_port_to_port(i915, child->dvo_port);
+		if (port == PORT_NONE && DISPLAY_VER(i915) >= 11)
+			port = dsi_dvo_port_to_port(i915, child->dvo_port);
+		if (port == PORT_NONE)
+			continue;
+
+		func(i915, devdata, port);
+	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 3c4f7d5e909b..bf461cb8783a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -264,8 +264,9 @@ bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *devd
 bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata);
+bool intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata);
@@ -277,5 +278,10 @@ int intel_bios_hdmi_boost_level(const struct intel_bios_encoder_data *devdata);
 int intel_bios_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdata);
 int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata);
 int intel_bios_hdmi_max_tmds_clock(const struct intel_bios_encoder_data *devdata);
 
+void intel_bios_for_each_encoder(struct drm_i915_private *i915,
+				 void (*func)(struct drm_i915_private *i915,
+					      struct intel_bios_encoder_data *devdata,
+					      enum port port));
+
 #endif /* _INTEL_BIOS_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0aa8356bb484..e94eb7bb6e53 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -31,8 +31,9 @@
 #include <drm/drm_privacy_screen_consumer.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "icl_dsi.h"
 #include "intel_audio.h"
 #include "intel_audio_regs.h"
 #include "intel_backlight.h"
 #include "intel_bios.h"
@@ -4256,19 +4257,61 @@ static void intel_ddi_encoder_shutdown(struct intel_encoder *encoder)
 
 #define port_tc_name(port) ((port) - PORT_TC1 + '1')
 #define tc_port_name(tc_port) ((tc_port) - TC_PORT_1 + '1')
 
-void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
+static bool assert_has_icl_dsi(struct drm_i915_private *i915)
+{
+	return !drm_WARN(&i915->drm, !IS_ALDERLAKE_P(i915) &&
+			 !IS_TIGERLAKE(i915) && DISPLAY_VER(i915) != 11,
+			 "Platform does not support DSI\n");
+}
+
+static bool port_in_use(struct drm_i915_private *i915, enum port port)
+{
+	struct intel_encoder *encoder;
+
+	for_each_intel_encoder(&i915->drm, encoder) {
+		/* FIXME what about second port for dual link DSI? */
+		if (encoder->port == port)
+			return true;
+	}
+
+	return false;
+}
+
+void intel_ddi_init(struct drm_i915_private *dev_priv,
+		    struct intel_bios_encoder_data *devdata,
+		    enum port port)
 {
 	struct intel_digital_port *dig_port;
 	struct intel_encoder *encoder;
-	struct intel_bios_encoder_data *devdata;
 	bool init_hdmi, init_dp;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 
 	if (!assert_port_valid(dev_priv, port))
 		return;
 
+	if (port_in_use(dev_priv, port)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Port %c already claimed\n", port_name(port));
+		return;
+	}
+
+	/* FIXME convert HSW/BDW */
+	if (!devdata)
+		devdata = intel_bios_encoder_data_lookup(dev_priv, port);
+
+	intel_bios_encoder_sanitize(devdata, port);
+
+	if (intel_bios_encoder_supports_dsi(devdata)) {
+		/* BXT/GLK handled elsewhere, for now at least */
+		if (!assert_has_icl_dsi(dev_priv))
+			return;
+
+		icl_dsi_init(dev_priv, devdata, port);
+		return;
+	}
+
 	/*
 	 * On platforms with HTI (aka HDPORT), if it's enabled at boot it may
 	 * have taken over some of the PHYs and made them unavailable to the
 	 * driver.  In that case we should skip initializing the corresponding
@@ -4279,17 +4322,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 			    port_name(port), phy_name(phy));
 		return;
 	}
 
-	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
-	if (!devdata) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "VBT says port %c is not present\n",
-			    port_name(port));
-		return;
-	}
-	intel_bios_encoder_sanitize(devdata, port);
-
 	init_hdmi = intel_bios_encoder_supports_dvi(devdata) ||
 		intel_bios_encoder_supports_hdmi(devdata);
 	init_dp = intel_bios_encoder_supports_dp(devdata);
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 361f6874dde5..cdeac3d67357 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -10,8 +10,9 @@
 
 struct drm_connector_state;
 struct drm_i915_private;
 struct intel_atomic_state;
+struct intel_bios_encoder_data;
 struct intel_connector;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dp;
@@ -46,9 +47,11 @@ struct intel_shared_dpll *icl_ddi_combo_get_pll(struct intel_encoder *encoder);
 void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state);
 void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
 			     enum port port);
-void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port);
+void intel_ddi_init(struct drm_i915_private *dev_priv,
+		    struct intel_bios_encoder_data *devdata,
+		    enum port port);
 bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe);
 void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state);
 void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index dec68e1d5f9d..7325edb3ca65 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -55,9 +55,8 @@
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "i9xx_plane.h"
 #include "i9xx_wm.h"
-#include "icl_dsi.h"
 #include "intel_acpi.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
 #include "intel_audio.h"
@@ -7836,17 +7835,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
 	if (DISPLAY_VER(dev_priv) >= 9) {
-		enum port port;
-
-		for_each_port_masked(port, RUNTIME_INFO(dev_priv)->port_mask)
-			intel_ddi_init(dev_priv, port);
-
-		/* FIXME do something about DSI */
-		if (IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv) ||
-		    DISPLAY_VER(dev_priv) == 11)
-			icl_dsi_init(dev_priv);
+		intel_bios_for_each_encoder(dev_priv, intel_ddi_init);
 
 		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 			vlv_dsi_init(dev_priv);
 	} else if (HAS_DDI(dev_priv)) {
@@ -7857,17 +7848,17 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 		/* Haswell uses DDI functions to detect digital outputs. */
 		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
 		if (found)
-			intel_ddi_init(dev_priv, PORT_A);
+			intel_ddi_init(dev_priv, NULL, PORT_A);
 
 		found = intel_de_read(dev_priv, SFUSE_STRAP);
 		if (found & SFUSE_STRAP_DDIB_DETECTED)
-			intel_ddi_init(dev_priv, PORT_B);
+			intel_ddi_init(dev_priv, NULL, PORT_B);
 		if (found & SFUSE_STRAP_DDIC_DETECTED)
-			intel_ddi_init(dev_priv, PORT_C);
+			intel_ddi_init(dev_priv, NULL, PORT_C);
 		if (found & SFUSE_STRAP_DDID_DETECTED)
-			intel_ddi_init(dev_priv, PORT_D);
+			intel_ddi_init(dev_priv, NULL, PORT_D);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		int found;
 
 		/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index b870f7f47f2b..33570d9aaea5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -33,9 +33,8 @@ struct drm_property_blob;
 struct i915_audio_component;
 struct i915_hdcp_comp_master;
 struct intel_atomic_state;
 struct intel_audio_funcs;
-struct intel_bios_encoder_data;
 struct intel_cdclk_funcs;
 struct intel_cdclk_vals;
 struct intel_color_funcs;
 struct intel_crtc;
@@ -206,9 +205,8 @@ struct intel_vbt_data {
 
 	struct list_head display_devices;
 	struct list_head bdb_blocks;
 
-	struct intel_bios_encoder_data *ports[I915_MAX_PORTS]; /* Non-NULL if port present. */
 	struct sdvo_device_mapping {
 		u8 initialized;
 		u8 dvo_port;
 		u8 slave_addr;
-- 
2.39.2

