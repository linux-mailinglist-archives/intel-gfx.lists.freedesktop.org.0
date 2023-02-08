Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 131DF68E5A5
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 02:55:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85FC510E689;
	Wed,  8 Feb 2023 01:55:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28BE110E689
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 01:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675821321; x=1707357321;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YijPF+DW+ThniyoxoIvmh7hhxoaWH6qhf/wpOG1suno=;
 b=Z0p/oIH8vRpgGZH/MTuCmV6FMDxXAdX2k8T48I/zr/ybE6A7nM4KBENw
 dRAoQD5p6dKYsSA6i3VcB/N3pfIYqOWpeX9C8nFIH8fEim0ziAelQ2q4B
 zAl1PvAEw73+ncdJqMBREnJugYyRnJYvgw7yuDomTSlo4hSquB9bqo4/8
 7TkAaksVDC93sY994Aogpo0EsMMnBb5GoAWUEyV09gLFiJ8l/Ji/iOUxv
 jrCCZ40bmiaVkNpq5sTrSN8sjaGXTZqVSYqDCcnp6ryH4bDFTFZw+aCJ7
 uDu2mED3YvnXoM9Azr1rGeCQ4vHESvomtGWV82kOibofNIrpVnfNdAqK1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="330974347"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="330974347"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 17:55:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="644672709"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="644672709"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 07 Feb 2023 17:55:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Feb 2023 03:55:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 03:55:01 +0200
Message-Id: <20230208015508.24824-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/10] drm/i915: Replace
 intel_bios_is_lspcon_present() with intel_bios_encoder_is_lspcon()
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

We always have encoder->devdata available on the platforms
that can have LSPCON. So let's start looking there instead
of digging it out from vbt.ports[].

And let's rename the function to fit the common pattern
for these things.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c   | 24 ++++++---------------
 drivers/gpu/drm/i915/display/intel_bios.h   |  3 +--
 drivers/gpu/drm/i915/display/intel_ddi.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c     | 13 ++++++-----
 drivers/gpu/drm/i915/display/intel_hdmi.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_lspcon.c |  2 +-
 6 files changed, 19 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 6ea7396728ce..9646d68fdb0f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2597,6 +2597,12 @@ intel_bios_encoder_supports_dsi(const struct intel_bios_encoder_data *devdata)
 	return devdata->child.device_type & DEVICE_TYPE_MIPI_OUTPUT;
 }
 
+bool
+intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata)
+{
+	return devdata && HAS_LSPCON(devdata->i915) && devdata->child.lspcon;
+}
+
 static int _intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
 {
 	if (!devdata || devdata->i915->display.vbt.version < 158)
@@ -2663,7 +2669,7 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata,
 	drm_dbg_kms(&i915->drm,
 		    "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d DSI:%d LSPCON:%d USB-Type-C:%d TBT:%d DSC:%d\n",
 		    port_name(port), is_crt, is_dvi, is_hdmi, is_dp, is_edp, is_dsi,
-		    HAS_LSPCON(i915) && child->lspcon,
+		    intel_bios_encoder_is_lspcon(devdata),
 		    supports_typec_usb, supports_tbt,
 		    devdata->dsc != NULL);
 
@@ -3587,22 +3593,6 @@ intel_bios_is_port_hpd_inverted(const struct drm_i915_private *i915,
 	return devdata && devdata->child.hpd_invert;
 }
 
-/**
- * intel_bios_is_lspcon_present - if LSPCON is attached on %port
- * @i915:	i915 device instance
- * @port:	port to check
- *
- * Return true if LSPCON is present on this port
- */
-bool
-intel_bios_is_lspcon_present(const struct drm_i915_private *i915,
-			     enum port port)
-{
-	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[port];
-
-	return HAS_LSPCON(i915) && devdata && devdata->child.lspcon;
-}
-
 /**
  * intel_bios_is_lane_reversal_needed - if lane reversal needed on port
  * @i915:       i915 device instance
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index d221f784aa88..ad3edfe6ec3a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -250,8 +250,6 @@ bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *dev_priv, enum por
 bool intel_bios_is_dsi_present(struct drm_i915_private *dev_priv, enum port *port);
 bool intel_bios_is_port_hpd_inverted(const struct drm_i915_private *i915,
 				     enum port port);
-bool intel_bios_is_lspcon_present(const struct drm_i915_private *i915,
-				  enum port port);
 bool intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
 					enum port port);
 enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv, enum port port);
@@ -274,6 +272,7 @@ bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *devd
 bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata);
+bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
 int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_data *devdata);
 int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *devdata);
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 254559abedfb..2c64d5f4b8f3 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4305,7 +4305,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		intel_bios_encoder_supports_hdmi(devdata);
 	init_dp = intel_bios_encoder_supports_dp(devdata);
 
-	if (intel_bios_is_lspcon_present(dev_priv, port)) {
+	if (intel_bios_encoder_is_lspcon(devdata)) {
 		/*
 		 * Lspcon device needs to be driven with DP connector
 		 * with special detection sequence. So make sure DP
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 62cbab7402e9..6b836afa0698 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4851,7 +4851,7 @@ intel_dp_connector_register(struct drm_connector *connector)
 	if (!ret)
 		drm_dp_cec_register_connector(&intel_dp->aux, connector);
 
-	if (!intel_bios_is_lspcon_present(i915, dig_port->base.port))
+	if (!intel_bios_encoder_is_lspcon(dig_port->base.devdata))
 		return ret;
 
 	/*
@@ -5146,9 +5146,12 @@ bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port)
 }
 
 static bool
-has_gamut_metadata_dip(struct drm_i915_private *i915, enum port port)
+has_gamut_metadata_dip(struct intel_encoder *encoder)
 {
-	if (intel_bios_is_lspcon_present(i915, port))
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
+
+	if (intel_bios_encoder_is_lspcon(encoder->devdata))
 		return false;
 
 	if (DISPLAY_VER(i915) >= 11)
@@ -5183,14 +5186,14 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 		drm_connector_attach_max_bpc_property(connector, 6, 12);
 
 	/* Register HDMI colorspace for case of lspcon */
-	if (intel_bios_is_lspcon_present(dev_priv, port)) {
+	if (intel_bios_encoder_is_lspcon(dp_to_dig_port(intel_dp)->base.devdata)) {
 		drm_connector_attach_content_type_property(connector);
 		intel_attach_hdmi_colorspace_property(connector);
 	} else {
 		intel_attach_dp_colorspace_property(connector);
 	}
 
-	if (has_gamut_metadata_dip(dev_priv, port))
+	if (has_gamut_metadata_dip(&dp_to_dig_port(intel_dp)->base))
 		drm_connector_attach_hdr_output_metadata_property(connector);
 
 	if (HAS_VRR(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 7468b570a72a..619865b45eca 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2923,7 +2923,7 @@ void intel_infoframe_init(struct intel_digital_port *dig_port)
 		dig_port->set_infoframes = g4x_set_infoframes;
 		dig_port->infoframes_enabled = g4x_infoframes_enabled;
 	} else if (HAS_DDI(dev_priv)) {
-		if (intel_bios_is_lspcon_present(dev_priv, dig_port->base.port)) {
+		if (intel_bios_encoder_is_lspcon(dig_port->base.devdata)) {
 			dig_port->write_infoframe = lspcon_write_infoframe;
 			dig_port->read_infoframe = lspcon_read_infoframe;
 			dig_port->set_infoframes = lspcon_set_infoframes;
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 9ff1c0b223ad..bb3b5355a0d9 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -689,7 +689,7 @@ void lspcon_resume(struct intel_digital_port *dig_port)
 	struct drm_i915_private *i915 = to_i915(dev);
 	enum drm_lspcon_mode expected_mode;
 
-	if (!intel_bios_is_lspcon_present(i915, dig_port->base.port))
+	if (!intel_bios_encoder_is_lspcon(dig_port->base.devdata))
 		return;
 
 	if (!lspcon->active) {
-- 
2.39.1

