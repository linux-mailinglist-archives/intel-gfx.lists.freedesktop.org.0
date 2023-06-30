Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BAB743F58
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 18:01:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0829510E4AB;
	Fri, 30 Jun 2023 16:01:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80ED810E4A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 16:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688140866; x=1719676866;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sBBzhat3+J0IN3ynoCyOMxLdXrmpFd08AcwX3VItvWk=;
 b=W3Slh9mWGF31KAJMXnf/TDz9JROEAKiviV43TGnscm7Mk00/Ru5l/3JA
 GajSjU6IeVXVuzEOsfX+fb8xgpigWBgBRM7S9qPfl0+7w0AQSrUIUIkaT
 qkYkOIUBju98Mp7IhjccHPvY56QkcTPlLNe+RkddmMg0SOdOAAjfmutBz
 KdjR0uxt3vV5UKE6KZSV+KN3b2XqV+3Lq3IfMnaC5izn81vFNC9cD1q5M
 CYV/Hw1+ro9IL30jgrk5cz/Q+aBUmHAclnOMIeuCDTeGryqkZGdTyN2/G
 QWsl05T9E8MifTrohDWXWM2MB2xyDY1KKOOXEgrd4TjASV7irn4bANwK/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="365912589"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="365912589"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 08:58:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="695059422"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="695059422"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 30 Jun 2023 08:58:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Jun 2023 18:58:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Jun 2023 18:58:43 +0300
Message-Id: <20230630155846.29931-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
References: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/6] drm/i915: Remove DDC pin sanitation
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Stop with the VBT DDC pin sanitation, and instead just check
that the appropriate DDC pin is still available when initializing
a HDMI connector.

The reason being that we want to start initializing ports in
VBT order to deal with VBTs that declare child devices with
seemingly conflicting ports. As the encoder initialization can
fail for other reasons (at least for eDP+AUX) we can't know
upfront which way the conflicts should be resolved.

Note that the old way of sanitizing gave priority to the last
port declared in the VBT, but now we sort of do the opposite by
favoring the first encoder to successfully initialize. So far
we're not aware of HDMI/DDC use cases where this would matter
but for AUX CH (will be subject to a similar change) there are
known cases where it matters.

Also note that the old code fell back to the platform default DDC
pin if the VBT pin was populated but invalid. That doesn't seem like
such a great idea because the VBT might have later declared another
port using that platform default pin, and so we might just be
creating more DDC pin conflicts here. So lets not second guess the
VBT and simply reject the entire HDMI encoder if the VBT DDC pin is
invalid.

v2: Pimp the commit message (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 69 ----------------------
 drivers/gpu/drm/i915/display/intel_hdmi.c | 72 +++++++++++++++++++----
 2 files changed, 59 insertions(+), 82 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 4b9bf76e137d..6aeebd3c97f9 100644
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
@@ -2754,9 +2688,6 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 
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

