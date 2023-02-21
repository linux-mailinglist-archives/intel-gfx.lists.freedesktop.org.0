Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9889169EAEB
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 00:03:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E93B010E902;
	Tue, 21 Feb 2023 23:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1F3810E3A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 23:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677020605; x=1708556605;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=VVDFi//l2OTsWi7plzkjlpD5XHMXselOokj38On+/5Q=;
 b=Z546zrplQfH+9b/s6tv+bm+5kfdAxdkPKW4WN2pHpuu9AqI52oiiwJbs
 Xt7kEeETM09zJdFDlX9bfIUDx5JoIrWnpk4covmT1dAwEftfWtAsQV8qj
 mh9Bqd6JVnAg2/ciBBnht90ZNfgay3ZUb5EVDgpTsweQdxZPoc9Hl78uS
 uB5n5GCzfK3mg7sWO4mKQdvi7R6dRS+i1ZNmhcygpZIvdZ7cYjeaD08xQ
 xhcKPOpmwJv0YpG9/D8mj8L2m6/9hcedcnp6f9iDNV6J8jQY+AV2gb+vU
 R9Y7bxTHQWzd2TwKvlACanpifoy29qW+BHmAKIQqxGPYbmZr57sHZ9+vF g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="330501930"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="330501930"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 15:03:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="814690193"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="814690193"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 21 Feb 2023 15:03:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 01:03:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 01:02:24 +0200
Message-Id: <20230221230227.6244-20-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 19/22] drm/i915: Remove DDC pin sanitation
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

Stop with the VBT DDC pin sanitation, and instead just check
that the appropriate DDC pin is still available when initializing
a HDMI connector.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 72 -----------------------
 drivers/gpu/drm/i915/display/intel_hdmi.c | 72 +++++++++++++++++++----
 2 files changed, 59 insertions(+), 85 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 1bfbe1382670..682c9cb6a736 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2223,77 +2223,8 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 		    vbt_pin);
 	return 0;
 }
 
-static struct intel_encoder *
-get_encoder_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
-{
-	struct intel_encoder *encoder;
-
-	if (!ddc_pin)
-		return NULL;
-
-	for_each_intel_encoder(&i915->drm, encoder) {
-		const struct intel_bios_encoder_data *devdata = encoder->devdata;
-
-		if (devdata && ddc_pin == devdata->child.ddc_pin)
-			return encoder;
-	}
-
-	return NULL;
-}
-
-static void sanitize_ddc_pin(struct intel_bios_encoder_data *devdata,
-			     enum port port)
-{
-	struct drm_i915_private *i915 = devdata->i915;
-	struct child_device_config *child = &devdata->child;
-	struct intel_encoder *other;
-	u8 mapped_ddc_pin;
-
-	if (!devdata->child.ddc_pin)
-		return;
-
-	mapped_ddc_pin = map_ddc_pin(i915, devdata->child.ddc_pin);
-	if (!intel_gmbus_is_valid_pin(i915, mapped_ddc_pin)) {
-		drm_dbg_kms(&i915->drm,
-			    "Port %c has invalid DDC pin %d, "
-			    "sticking to defaults\n",
-			    port_name(port), mapped_ddc_pin);
-		devdata->child.ddc_pin = 0;
-		return;
-	}
-
-	other = get_encoder_by_ddc_pin(i915, devdata->child.ddc_pin);
-	if (!other)
-		return;
-
-	/*
-	 * Pre-HSW uses separate DP and HDMI encoders
-	 * for the same port. Let them pass.
-	 */
-	if (!HAS_DDI(i915) && devdata == other->devdata)
-		return;
-
-	drm_dbg_kms(&i915->drm,
-		    "port %c trying to use the same DDC pin (0x%x) as port %c, "
-		    "disabling port %c DVI/HDMI support\n",
-		    port_name(port), mapped_ddc_pin,
-		    port_name(other->port), port_name(port));
-
-	/*
-	 * If we have multiple ports supposedly sharing the pin, then dvi/hdmi
-	 * couldn't exist on the shared port. Otherwise they share the same ddc
-	 * pin and system couldn't communicate with them separately.
-	 *
-	 * First successfully initialized encoder wins.
-	 */
-	child->device_type &= ~DEVICE_TYPE_TMDS_DVI_SIGNALING;
-	child->device_type |= DEVICE_TYPE_NOT_HDMI_OUTPUT;
-
-	child->ddc_pin = 0;
-}
-
 static struct intel_encoder *
 get_encoder_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
 {
 	struct intel_encoder *encoder;
@@ -2758,11 +2689,8 @@ void intel_bios_encoder_sanitize(struct intel_bios_encoder_data *devdata,
 {
 	if (!devdata)
 		return;
 
-	if (intel_bios_encoder_supports_dvi(devdata))
-		sanitize_ddc_pin(devdata, port);
-
 	if (intel_bios_encoder_supports_dp(devdata))
 		sanitize_aux_ch(devdata, port);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index e6f887d75a70..99dd9fbe6944 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2848,23 +2848,14 @@ static u8 g4x_port_to_ddc_pin(struct drm_i915_private *dev_priv,
 	}
 	return ddc_pin;
 }
 
-static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
+static u8 intel_hdmi_default_ddc_pin(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
 	u8 ddc_pin;
 
-	ddc_pin = intel_bios_hdmi_ddc_pin(encoder->devdata);
-	if (ddc_pin) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "[ENCODER:%d:%s] Using DDC pin 0x%x (VBT)\n",
-			    encoder->base.base.id, encoder->base.name,
-			    ddc_pin);
-		return ddc_pin;
-	}
-
 	if (IS_ALDERLAKE_S(dev_priv))
 		ddc_pin = adls_port_to_ddc_pin(dev_priv, port);
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
 		ddc_pin = dg1_port_to_ddc_pin(dev_priv, port);
@@ -2884,12 +2875,64 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 		ddc_pin = chv_port_to_ddc_pin(dev_priv, port);
 	else
 		ddc_pin = g4x_port_to_ddc_pin(dev_priv, port);
 
-	drm_dbg_kms(&dev_priv->drm,
-		    "[ENCODER:%d:%s] Using DDC pin 0x%x (platform default)\n",
+	return ddc_pin;
+}
+
+static struct intel_encoder *
+get_encoder_by_ddc_pin(struct intel_encoder *encoder, u8 ddc_pin)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_encoder *other;
+
+	for_each_intel_encoder(&i915->drm, other) {
+		if (other == encoder)
+			continue;
+
+		if (!intel_encoder_is_dig_port(other))
+			continue;
+
+		if (enc_to_dig_port(other)->hdmi.ddc_bus == ddc_pin)
+			return other;
+	}
+
+	return NULL;
+}
+
+static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_encoder *other;
+	const char *source;
+	u8 ddc_pin;
+
+	ddc_pin = intel_bios_hdmi_ddc_pin(encoder->devdata);
+	source = "VBT";
+
+	if (!ddc_pin) {
+		ddc_pin = intel_hdmi_default_ddc_pin(encoder);
+		source = "platform default";
+	}
+
+	if (!intel_gmbus_is_valid_pin(i915, ddc_pin)) {
+		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Invalid DDC pin %d\n",
+			    encoder->base.base.id, encoder->base.name, ddc_pin);
+		return 0;
+	}
+
+	other = get_encoder_by_ddc_pin(encoder, ddc_pin);
+	if (other) {
+		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] DDC pin %d already claimed by [ENCODER:%d:%s]\n",
+			    encoder->base.base.id, encoder->base.name, ddc_pin,
+			    other->base.base.id, other->base.name);
+		return 0;
+	}
+
+	drm_dbg_kms(&i915->drm,
+		    "[ENCODER:%d:%s] Using DDC pin 0x%x (%s)\n",
 		    encoder->base.base.id, encoder->base.name,
-		    ddc_pin);
+		    ddc_pin, source);
 
 	return ddc_pin;
 }
 
@@ -2958,8 +3001,11 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 		     intel_encoder->base.name))
 		return;
 
 	intel_hdmi->ddc_bus = intel_hdmi_ddc_pin(intel_encoder);
+	if (!intel_hdmi->ddc_bus)
+		return;
+
 	ddc = intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);
 
 	drm_connector_init_with_ddc(dev, connector,
 				    &intel_hdmi_connector_funcs,
-- 
2.39.2

