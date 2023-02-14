Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8CD6971B4
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 00:19:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6267910E9BA;
	Tue, 14 Feb 2023 23:19:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FBB910E9B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 23:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676416775; x=1707952775;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wtyIDTxvGVb6W0oeSofzG2mfbRqg7+QxXTAEPwW6oDY=;
 b=k8hcxUB56x36iUaH3wPMs8SBilM5wF67M5VMZ8Vz8CN1xTaiBHlxztxM
 sZaK90uyOcG7vo42Qa/2uIEpUI0iAC3cYoOjnt5bC8C+l84dziL5G/zQ5
 zd+3QUeP0ZHe1SHSYSTKdoToWXGPHgJKOrTOYK2usmN8uLPu881rfZEVZ
 FTS3ZMKtZv3F/BQPVIaGqPS0GWikD/m/f+5BXWz1+DHJ3Y7zq3PotO6rr
 bsZz7qfb3wxYuOMOjVjUBMHCVztY3r/D4nlL1PL6+fcybjfct8ZhJig4z
 gfD31iJJHoVfjiEOj5L3AJoR7cl2TPO6XQQMuQThVppGUNbprH/66hv2J Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="329924929"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="329924929"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 15:19:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="662717642"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="662717642"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 14 Feb 2023 15:19:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Feb 2023 01:19:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Feb 2023 01:19:25 +0200
Message-Id: <20230214231925.26535-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230214231925.26535-1-ville.syrjala@linux.intel.com>
References: <20230214231925.26535-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Try to initialize DDI ports for
 every VBT child device
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
by attempting to initialize each in turn. The first on to succeed
will be the one we use.

TODO: Still very rough. Should probably just initialize DDIs
      strictly in child device order, and just filter out the
      ones that are bogus (eg. via device_info->port_mask etc.)?

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 67 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_bios.h     |  6 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      | 29 ++++----
 .../gpu/drm/i915/display/intel_display_core.h |  2 -
 4 files changed, 72 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ac9fc07e5ccf..73b1f18bc8c9 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2610,6 +2610,31 @@ intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata)
 	return devdata && HAS_LSPCON(devdata->i915) && devdata->child.lspcon;
 }
 
+bool
+intel_bios_for_each_child(struct drm_i915_private *i915,
+			  enum port port,
+			  bool (*func)(struct drm_i915_private *i915,
+				       struct intel_bios_encoder_data *devdata,
+				       enum port port))
+{
+	struct intel_bios_encoder_data *devdata;
+	bool found = false;
+
+	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+		const struct child_device_config *child = &devdata->child;
+
+		if (dvo_port_to_port(i915, child->dvo_port) != port)
+			continue;
+
+		found = true;
+
+		if (func(i915, devdata, port))
+			break;
+	}
+
+	return found;
+}
+
 /* This is an index in the HDMI/DVI DDI buffer translation table, or -1 */
 int intel_bios_encoder_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
 {
@@ -2656,13 +2681,19 @@ static bool is_port_valid(struct drm_i915_private *i915, enum port port)
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
@@ -2741,16 +2772,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
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
@@ -2774,7 +2796,6 @@ static bool has_ddi_port_info(struct drm_i915_private *i915)
 static void parse_ddi_ports(struct drm_i915_private *i915)
 {
 	struct intel_bios_encoder_data *devdata;
-	enum port port;
 
 	if (!has_ddi_port_info(i915))
 		return;
@@ -2782,10 +2803,8 @@ static void parse_ddi_ports(struct drm_i915_private *i915)
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
@@ -3727,5 +3746,19 @@ bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata
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
 }
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 7f72e35eec3d..c3b79793ec18 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -280,4 +280,10 @@ int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *de
 int intel_bios_encoder_hdmi_level_shift(const struct intel_bios_encoder_data *devdata);
 int intel_bios_encoder_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdata);
 
+bool
+intel_bios_for_each_child(struct drm_i915_private *i915,
+			  enum port port,
+			  bool (*func)(struct drm_i915_private *i915,
+				       struct intel_bios_encoder_data *devdata, enum port port));
+
 #endif /* _INTEL_BIOS_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2864592fe6b9..b05eca899ace 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4274,11 +4274,12 @@ static void intel_ddi_encoder_shutdown(struct intel_encoder *encoder)
 #define port_tc_name(port) ((port) - PORT_TC1 + '1')
 #define tc_port_name(tc_port) ((tc_port) - TC_PORT_1 + '1')
 
-void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
+static bool _intel_ddi_init(struct drm_i915_private *dev_priv,
+			    struct intel_bios_encoder_data *devdata,
+			    enum port port)
 {
 	struct intel_digital_port *dig_port;
 	struct intel_encoder *encoder;
-	struct intel_bios_encoder_data *devdata;
 	bool init_hdmi, init_dp;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 
@@ -4291,16 +4292,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	if (intel_hti_uses_phy(dev_priv, phy)) {
 		drm_dbg_kms(&dev_priv->drm, "PORT %c / PHY %c reserved by HTI\n",
 			    port_name(port), phy_name(phy));
-		return;
+		return false;
 	}
 
-	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
-	if (!devdata) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "VBT says port %c is not present\n",
-			    port_name(port));
-		return;
-	}
 	intel_bios_encoder_sanitize(devdata, port);
 
 	init_hdmi = intel_bios_encoder_supports_dvi(devdata) ||
@@ -4323,7 +4317,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		drm_dbg_kms(&dev_priv->drm,
 			    "VBT says port %c is not DVI/HDMI/DP compatible, respect it\n",
 			    port_name(port));
-		return;
+		return false;
 	}
 
 	if (intel_phy_is_snps(dev_priv, phy) &&
@@ -4335,7 +4329,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
 	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
 	if (!dig_port)
-		return;
+		return false;
 
 	encoder = &dig_port->base;
 	encoder->devdata = devdata;
@@ -4560,9 +4554,18 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
 	intel_infoframe_init(dig_port);
 
-	return;
+	return true;
 
 err:
 	drm_encoder_cleanup(&encoder->base);
 	kfree(dig_port);
+	return false;
+}
+
+void intel_ddi_init(struct drm_i915_private *i915, enum port port)
+{
+	if (!intel_bios_for_each_child(i915, port, _intel_ddi_init))
+		drm_dbg_kms(&i915->drm,
+			    "VBT says port %c is not present\n",
+			    port_name(port));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 25d778fb7d15..b63c5db76a97 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -34,7 +34,6 @@ struct i915_audio_component;
 struct i915_hdcp_comp_master;
 struct intel_atomic_state;
 struct intel_audio_funcs;
-struct intel_bios_encoder_data;
 struct intel_cdclk_funcs;
 struct intel_cdclk_vals;
 struct intel_color_funcs;
@@ -206,7 +205,6 @@ struct intel_vbt_data {
 	struct list_head display_devices;
 	struct list_head bdb_blocks;
 
-	struct intel_bios_encoder_data *ports[I915_MAX_PORTS]; /* Non-NULL if port present. */
 	struct sdvo_device_mapping {
 		u8 initialized;
 		u8 dvo_port;
-- 
2.39.1

