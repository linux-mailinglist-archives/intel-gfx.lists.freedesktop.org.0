Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A6B7372FB
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 19:34:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2CD010E308;
	Tue, 20 Jun 2023 17:34:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0C0610E193
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 17:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687282438; x=1718818438;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Zt/NzaBerGfwQKBAy7hfoV83y2pBEuKim7jXQ4QEjFw=;
 b=BtqWbgIOJJbxDDydZyB/1raCR2FMQ4RrRQlLDOi7SbzohymMTAbaANHy
 /7kpkUF5lfeQ6KhEHEbFQVMMbtVXNT1CMD6UD+rl+0lK8yf6ZJ4Y7mShT
 GcT7rJbEkfJJ1AAEDNnfM5E74EvIzCeAl7Hkv+E37l0zVJIaCKb+K/lSy
 dOP3GHTkC3klo2Rt6YiG8ANv9Oo3Gi50MOWDtceOR1dkrEk9JaCgbDoME
 4cBrjD/SZ1DY6UKrX46STMOmDhxzlZT8yOMtGOVnpsAouff7eEZcPN7N4
 WwZWKkN5B2sh4UVybXhPkI2HrL1s1ggbg8xMpFKhE7OJgpMRFDvvogp6o Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="363353808"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="363353808"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 10:32:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="804029166"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="804029166"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Jun 2023 10:32:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Jun 2023 20:32:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Jun 2023 20:32:40 +0300
Message-Id: <20230620173242.26923-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
References: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/5] drm/i915: Remove DDC pin sanitation
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
 drivers/gpu/drm/i915/display/intel_bios.c | 69 ----------------------
 drivers/gpu/drm/i915/display/intel_hdmi.c | 72 +++++++++++++++++++----
 2 files changed, 59 insertions(+), 82 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 34a397adbd6b..439ab5b3cbe5 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2230,72 +2230,6 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 	return 0;
 }
 
-static enum port get_port_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
-{
-	enum port port;
-
-	if (!ddc_pin)
-		return PORT_NONE;
-
-	for_each_port(port) {
-		const struct intel_bios_encoder_data *devdata =
-			i915->display.vbt.ports[port];
-
-		if (devdata && ddc_pin == devdata->child.ddc_pin)
-			return port;
-	}
-
-	return PORT_NONE;
-}
-
-static void sanitize_ddc_pin(struct intel_bios_encoder_data *devdata,
-			     enum port port)
-{
-	struct drm_i915_private *i915 = devdata->i915;
-	struct child_device_config *child;
-	u8 mapped_ddc_pin;
-	enum port p;
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
-	p = get_port_by_ddc_pin(i915, devdata->child.ddc_pin);
-	if (p == PORT_NONE)
-		return;
-
-	drm_dbg_kms(&i915->drm,
-		    "port %c trying to use the same DDC pin (0x%x) as port %c, "
-		    "disabling port %c DVI/HDMI support\n",
-		    port_name(port), mapped_ddc_pin,
-		    port_name(p), port_name(p));
-
-	/*
-	 * If we have multiple ports supposedly sharing the pin, then dvi/hdmi
-	 * couldn't exist on the shared port. Otherwise they share the same ddc
-	 * pin and system couldn't communicate with them separately.
-	 *
-	 * Give inverse child device order the priority, last one wins. Yes,
-	 * there are real machines (eg. Asrock B250M-HDV) where VBT has both
-	 * port A and port E with the same AUX ch and we must pick port E :(
-	 */
-	child = &i915->display.vbt.ports[p]->child;
-
-	child->device_type &= ~DEVICE_TYPE_TMDS_DVI_SIGNALING;
-	child->device_type |= DEVICE_TYPE_NOT_HDMI_OUTPUT;
-
-	child->ddc_pin = 0;
-}
-
 static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
 {
 	enum port port;
@@ -2753,9 +2687,6 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 
 	sanitize_device_type(devdata, port);
 
-	if (intel_bios_encoder_supports_dvi(devdata))
-		sanitize_ddc_pin(devdata, port);
-
 	if (intel_bios_encoder_supports_dp(devdata))
 		sanitize_aux_ch(devdata, port);
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 7ac5e6c5e00d..8d1c8abfcffa 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2880,21 +2880,12 @@ static u8 g4x_port_to_ddc_pin(struct drm_i915_private *dev_priv,
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
@@ -2916,10 +2907,62 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
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
@@ -2990,6 +3033,9 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 		return;
 
 	intel_hdmi->ddc_bus = intel_hdmi_ddc_pin(intel_encoder);
+	if (!intel_hdmi->ddc_bus)
+		return;
+
 	ddc = intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);
 
 	drm_connector_init_with_ddc(dev, connector,
-- 
2.39.3

