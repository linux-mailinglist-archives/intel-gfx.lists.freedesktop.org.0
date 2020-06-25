Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6014620977A
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 02:11:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A4346E896;
	Thu, 25 Jun 2020 00:11:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6039F6E893
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 00:11:32 +0000 (UTC)
IronPort-SDR: e0PhXhKU3QP5Wxrz8Aej9YxZaleO1rdokM48F1UyfbeWu3jAQQXftKQdRbeHsIuFqauL2EsNB0
 QAtCO2eCVMlQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="229392924"
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="229392924"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 17:11:31 -0700
IronPort-SDR: d1FEDn1vYzszhj3uAJ7wslPB80hcQMQub2tPMlp/dIAHmcze8f7JIdi9ID4oQp1vd/0jgSWDVi
 Uu6W4EC7lNLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="310949042"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga008.jf.intel.com with ESMTP; 24 Jun 2020 17:11:30 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jun 2020 17:11:19 -0700
Message-Id: <20200625001120.22810-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200625001120.22810-1-lucas.demarchi@intel.com>
References: <20200625001120.22810-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915/display: use port_info in
 intel_ddi_init
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that we have tables for all platforms using ddi, keep the port_info
around so we can use it for decisions like "what phy does it have?"
instead of keep checking the platform/gen everywhere.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 39 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_ddi.h      |  8 +++-
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../drm/i915/display/intel_display_types.h    |  3 ++
 4 files changed, 37 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ca7bb2294d2b..27e2f29f47a2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4844,12 +4844,24 @@ intel_ddi_max_lanes(struct intel_digital_port *intel_dport)
 	return max_lanes;
 }
 
-void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
+bool intel_ddi_has_tc_phy(const struct intel_digital_port *dig_port)
 {
+	return dig_port->port_info->phy_type == PHY_TYPE_MG ||
+		dig_port->port_info->phy_type == PHY_TYPE_DKL;
+}
+
+bool intel_ddi_has_combo_phy(const struct intel_digital_port *dig_port)
+{
+	return dig_port->port_info->phy_type == PHY_TYPE_COMBO;
+}
+
+void intel_ddi_init(struct drm_i915_private *dev_priv,
+		    const struct intel_ddi_port_info *port_info)
+{
+	enum port port = port_info->port;
 	struct intel_digital_port *intel_dig_port;
 	struct intel_encoder *encoder;
 	bool init_hdmi, init_dp, init_lspcon = false;
-	enum phy phy = intel_port_to_phy(dev_priv, port);
 
 	init_hdmi = intel_bios_port_supports_dvi(dev_priv, port) ||
 		intel_bios_port_supports_hdmi(dev_priv, port);
@@ -4864,14 +4876,14 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		init_dp = true;
 		init_lspcon = true;
 		init_hdmi = false;
-		drm_dbg_kms(&dev_priv->drm, "VBT says port %c has lspcon\n",
-			    port_name(port));
+		drm_dbg_kms(&dev_priv->drm, "VBT says port %s has lspcon\n",
+			    port_info->name);
 	}
 
 	if (!init_dp && !init_hdmi) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "VBT says port %c is not DVI/HDMI/DP compatible, respect it\n",
-			    port_name(port));
+			    "VBT says port %s is not DVI/HDMI/DP compatible, respect it\n",
+			    port_info->name);
 		return;
 	}
 
@@ -4882,7 +4894,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder = &intel_dig_port->base;
 
 	drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
-			 DRM_MODE_ENCODER_TMDS, "DDI %c", port_name(port));
+			 DRM_MODE_ENCODER_TMDS, port_info->name);
 
 	encoder->hotplug = intel_ddi_hotplug;
 	encoder->compute_output_type = intel_ddi_compute_output_type;
@@ -4917,8 +4929,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	intel_dig_port->dp.output_reg = INVALID_MMIO_REG;
 	intel_dig_port->max_lanes = intel_ddi_max_lanes(intel_dig_port);
 	intel_dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
+	intel_dig_port->port_info = port_info;
 
-	if (intel_phy_is_tc(dev_priv, phy)) {
+	if (intel_ddi_has_tc_phy(intel_dig_port)) {
 		bool is_legacy =
 			!intel_bios_port_supports_typec_usb(dev_priv, port) &&
 			!intel_bios_port_supports_tbt(dev_priv, port);
@@ -4951,20 +4964,20 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		if (lspcon_init(intel_dig_port))
 			/* TODO: handle hdmi info frame part */
 			drm_dbg_kms(&dev_priv->drm,
-				    "LSPCON init success on port %c\n",
-				    port_name(port));
+				    "LSPCON init success on port %s\n",
+				    port_info->name);
 		else
 			/*
 			 * LSPCON init faied, but DP init was success, so
 			 * lets try to drive as DP++ port.
 			 */
 			drm_err(&dev_priv->drm,
-				"LSPCON init failed on port %c\n",
-				port_name(port));
+				"LSPCON init failed on port %s\n",
+				port_info->name);
 	}
 
 	if (INTEL_GEN(dev_priv) >= 11) {
-		if (intel_phy_is_tc(dev_priv, phy))
+		if (intel_ddi_has_tc_phy(intel_dig_port))
 			intel_dig_port->connected = intel_tc_port_connected;
 		else
 			intel_dig_port->connected = lpt_digital_port_connected;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 077e9dbbe367..059d87171c81 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -13,6 +13,7 @@ struct drm_i915_private;
 struct intel_connector;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_ddi_port_info;
 struct intel_dp;
 struct intel_dpll_hw_state;
 struct intel_encoder;
@@ -23,7 +24,8 @@ void intel_ddi_fdi_post_disable(struct intel_atomic_state *state,
 				const struct drm_connector_state *old_conn_state);
 void hsw_fdi_link_train(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state);
-void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port);
+void intel_ddi_init(struct drm_i915_private *dev_priv,
+		    const struct intel_ddi_port_info *port_info);
 bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe);
 void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state);
@@ -46,4 +48,8 @@ int intel_ddi_toggle_hdcp_signalling(struct intel_encoder *intel_encoder,
 				     bool enable);
 void icl_sanitize_encoder_pll_mapping(struct intel_encoder *encoder);
 
+
+bool intel_ddi_has_tc_phy(const struct intel_digital_port *dig_port);
+bool intel_ddi_has_combo_phy(const struct intel_digital_port *dig_port);
+
 #endif /* __INTEL_DDI_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d591063502c5..001b44c004ab 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -16880,7 +16880,7 @@ static void setup_ddi_outputs_desc(struct drm_i915_private *i915,
 		if (test_bit(port_info->port, &disable_mask))
 			continue;
 
-		intel_ddi_init(i915, port_info->port);
+		intel_ddi_init(i915, port_info);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index df587219c744..7f2156e6966f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1402,6 +1402,9 @@ struct intel_digital_port {
 	enum intel_display_power_domain ddi_io_power_domain;
 	struct mutex tc_lock;	/* protects the TypeC port mode */
 	intel_wakeref_t tc_lock_wakeref;
+
+	const struct intel_ddi_port_info *port_info;
+
 	int tc_link_refcount;
 	bool tc_legacy_port:1;
 	char tc_port_name[8];
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
