Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF4E69D239
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 18:45:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8E6A10E73E;
	Mon, 20 Feb 2023 17:45:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E5B510E73B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 17:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676915109; x=1708451109;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0gNIbQ8nSieYONFvkoGLTXVHnFZ3ACSg7d56BNd6Hnk=;
 b=KF51uZe1Sa4vydJjORrl9hhYhH/6euB9i4xv3XX4f+Im4bqzOJU6lgAA
 ZOAAGfgjKOr3+bUvMACjsDrGMuIlb9NGgAYYIgsZbZ5hNUo5QtIPwq8si
 waXVIV2EeE/Ks6ewXM6RGFxiv4QbmFfi117VZanLYe/cH+Q01GpFkErLa
 jRrjBzc4rmx93iet85YUhlfAqzQREMHvY2lmMiamJvo6uIfr9lW7/+lEc
 Y1uPfAaqbZtRfci2OcjzxeOFx9BT3KzLhxEcxYIut1BTriHxYG55slDyN
 s0JyRnAqP6T5J6Bn+JdrIlNB9COrihTy/09YHKTxiRVDvsK9Fk7GTEN1E w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="312085308"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="312085308"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 09:45:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="701745149"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="701745149"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 20 Feb 2023 09:45:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Feb 2023 19:45:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 19:44:37 +0200
Message-Id: <20230220174448.7611-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
References: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/17] drm/i915: Sanitize child devices later
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

Currently we sanitize the child device aux_ch/ddc_pin while parsing
the ports from VBT. But that won't work when we have duplicate child
devices for the same port.

Instead let's sanitize just before initializing the encoder,
based on which resources were consumed by encoders that were
(successfully) initialized earlier.

I also included the intel_bios_encoder_sanitize() calls in the
g4x+ DP/HDMI code, but there we need to be careful not confuse
the split DP vs. HDMI encoders as conflicting child devices.
Checking encoder->devdata for equality should suffice.

TODO: the sanitation only affects the VBT assigned stuff, but
      we could still have a conflict if one port came from VBT
      with a non-default pin, and another port just used the
      platform default which happens be the same pin...

TODO: Need to double check the details on commit 41e35ffb380b ("drm/i915:
      Favor last VBT child device with conflicting AUX ch/DDC pin")
      to make sure we're not breaking stuff with the new
      sanitation scheme

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c     |  3 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_bios.c | 91 +++++++++++++----------
 drivers/gpu/drm/i915/display/intel_bios.h |  4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c  |  4 +-
 5 files changed, 62 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 920d570f7594..5e1892f9cd54 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1252,15 +1252,16 @@ static const struct drm_encoder_funcs intel_dp_enc_funcs = {
 
 bool g4x_dp_init(struct drm_i915_private *dev_priv,
 		 i915_reg_t output_reg, enum port port)
 {
-	const struct intel_bios_encoder_data *devdata;
+	struct intel_bios_encoder_data *devdata;
 	struct intel_digital_port *dig_port;
 	struct intel_encoder *intel_encoder;
 	struct drm_encoder *encoder;
 	struct intel_connector *intel_connector;
 
 	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
+	intel_bios_encoder_sanitize(devdata, port);
 
 	/* FIXME bail? */
 	if (!devdata)
 		drm_dbg_kms(&dev_priv->drm, "No VBT child device for DP-%c\n",
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 448ea26786e0..d730cf79a402 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -548,14 +548,15 @@ intel_hdmi_hotplug(struct intel_encoder *encoder,
 
 void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 		   i915_reg_t hdmi_reg, enum port port)
 {
-	const struct intel_bios_encoder_data *devdata;
+	struct intel_bios_encoder_data *devdata;
 	struct intel_digital_port *dig_port;
 	struct intel_encoder *intel_encoder;
 	struct intel_connector *intel_connector;
 
 	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
+	intel_bios_encoder_sanitize(devdata, port);
 
 	/* FIXME bail? */
 	if (!devdata)
 		drm_dbg_kms(&dev_priv->drm, "No VBT child device for HDMI-%c\n",
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index f35ef3675d39..19be8862261b 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2221,33 +2221,33 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 		    vbt_pin);
 	return 0;
 }
 
-static enum port get_port_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
+static struct intel_encoder *
+get_encoder_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
 {
-	enum port port;
+	struct intel_encoder *encoder;
 
 	if (!ddc_pin)
-		return PORT_NONE;
+		return NULL;
 
-	for_each_port(port) {
-		const struct intel_bios_encoder_data *devdata =
-			i915->display.vbt.ports[port];
+	for_each_intel_encoder(&i915->drm, encoder) {
+		const struct intel_bios_encoder_data *devdata = encoder->devdata;
 
 		if (devdata && ddc_pin == devdata->child.ddc_pin)
-			return port;
+			return encoder;
 	}
 
-	return PORT_NONE;
+	return NULL;
 }
 
 static void sanitize_ddc_pin(struct intel_bios_encoder_data *devdata,
 			     enum port port)
 {
 	struct drm_i915_private *i915 = devdata->i915;
-	struct child_device_config *child;
+	struct child_device_config *child = &devdata->child;
+	struct intel_encoder *other;
 	u8 mapped_ddc_pin;
-	enum port p;
 
 	if (!devdata->child.ddc_pin)
 		return;
 
@@ -2260,81 +2260,87 @@ static void sanitize_ddc_pin(struct intel_bios_encoder_data *devdata,
 		devdata->child.ddc_pin = 0;
 		return;
 	}
 
-	p = get_port_by_ddc_pin(i915, devdata->child.ddc_pin);
-	if (p == PORT_NONE)
+	other = get_encoder_by_ddc_pin(i915, devdata->child.ddc_pin);
+	if (!other)
+		return;
+
+	/*
+	 * Pre-HSW uses separate DP and HDMI encoders
+	 * for the same port. Let them pass.
+	 */
+	if (!HAS_DDI(i915) && devdata == other->devdata)
 		return;
 
 	drm_dbg_kms(&i915->drm,
 		    "port %c trying to use the same DDC pin (0x%x) as port %c, "
 		    "disabling port %c DVI/HDMI support\n",
 		    port_name(port), mapped_ddc_pin,
-		    port_name(p), port_name(p));
+		    port_name(other->port), port_name(port));
 
 	/*
 	 * If we have multiple ports supposedly sharing the pin, then dvi/hdmi
 	 * couldn't exist on the shared port. Otherwise they share the same ddc
 	 * pin and system couldn't communicate with them separately.
 	 *
-	 * Give inverse child device order the priority, last one wins. Yes,
-	 * there are real machines (eg. Asrock B250M-HDV) where VBT has both
-	 * port A and port E with the same AUX ch and we must pick port E :(
+	 * First successfully initialized encoder wins.
 	 */
-	child = &i915->display.vbt.ports[p]->child;
-
 	child->device_type &= ~DEVICE_TYPE_TMDS_DVI_SIGNALING;
 	child->device_type |= DEVICE_TYPE_NOT_HDMI_OUTPUT;
 
 	child->ddc_pin = 0;
 }
 
-static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
+static struct intel_encoder *
+get_encoder_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
 {
-	enum port port;
+	struct intel_encoder *encoder;
 
 	if (!aux_ch)
-		return PORT_NONE;
+		return NULL;
 
-	for_each_port(port) {
-		const struct intel_bios_encoder_data *devdata =
-			i915->display.vbt.ports[port];
+	for_each_intel_encoder(&i915->drm, encoder) {
+		const struct intel_bios_encoder_data *devdata = encoder->devdata;
 
 		if (devdata && aux_ch == devdata->child.aux_channel)
-			return port;
+			return encoder;
 	}
 
-	return PORT_NONE;
+	return NULL;
 }
 
 static void sanitize_aux_ch(struct intel_bios_encoder_data *devdata,
 			    enum port port)
 {
 	struct drm_i915_private *i915 = devdata->i915;
-	struct child_device_config *child;
-	enum port p;
+	struct child_device_config *child = &devdata->child;
+	struct intel_encoder *other;
 
-	p = get_port_by_aux_ch(i915, devdata->child.aux_channel);
-	if (p == PORT_NONE)
+	other = get_encoder_by_aux_ch(i915, devdata->child.aux_channel);
+	if (!other)
+		return;
+
+	/*
+	 * Pre-HSW uses separate DP and HDMI encoders
+	 * for the same port. Let them pass.
+	 */
+	if (!HAS_DDI(i915) && devdata == other->devdata)
 		return;
 
 	drm_dbg_kms(&i915->drm,
 		    "port %c trying to use the same AUX CH (0x%x) as port %c, "
 		    "disabling port %c DP support\n",
 		    port_name(port), devdata->child.aux_channel,
-		    port_name(p), port_name(p));
+		    port_name(other->port), port_name(port));
 
 	/*
 	 * If we have multiple ports supposedly sharing the aux channel, then DP
 	 * couldn't exist on the shared port. Otherwise they share the same aux
 	 * channel and system couldn't communicate with them separately.
 	 *
-	 * Give inverse child device order the priority, last one wins. Yes,
-	 * there are real machines (eg. Asrock B250M-HDV) where VBT has both
-	 * port A and port E with the same AUX ch and we must pick port E :(
+	 * First successfully initialized encoder wins.
 	 */
-	child = &i915->display.vbt.ports[p]->child;
-
 	child->device_type &= ~DEVICE_TYPE_DISPLAYPORT_OUTPUT;
 	child->aux_channel = 0;
 }
 
@@ -2743,15 +2749,22 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 	}
 
 	sanitize_device_type(devdata, port);
 
+	i915->display.vbt.ports[port] = devdata;
+}
+
+void intel_bios_encoder_sanitize(struct intel_bios_encoder_data *devdata,
+				 enum port port)
+{
+	if (!devdata)
+		return;
+
 	if (intel_bios_encoder_supports_dvi(devdata))
 		sanitize_ddc_pin(devdata, port);
 
 	if (intel_bios_encoder_supports_dp(devdata))
 		sanitize_aux_ch(devdata, port);
-
-	i915->display.vbt.ports[port] = devdata;
 }
 
 static bool has_ddi_port_info(struct drm_i915_private *i915)
 {
@@ -3703,9 +3716,9 @@ bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata
 {
 	return devdata && devdata->child.hpd_invert;
 }
 
-const struct intel_bios_encoder_data *
+struct intel_bios_encoder_data *
 intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port)
 {
 	return i915->display.vbt.ports[port];
 }
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 8a0730c9b48c..a3ff67c41128 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -253,10 +253,12 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
 			       int dsc_max_bpc);
 bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915, enum port port);
 bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum port port);
+void intel_bios_encoder_sanitize(struct intel_bios_encoder_data *devdata,
+				 enum port port);
 
-const struct intel_bios_encoder_data *
+struct intel_bios_encoder_data *
 intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port);
 
 bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 40b5c93f9223..d062e2d76da9 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -34,8 +34,9 @@
 #include "i915_reg.h"
 #include "intel_audio.h"
 #include "intel_audio_regs.h"
 #include "intel_backlight.h"
+#include "intel_bios.h"
 #include "intel_combo_phy.h"
 #include "intel_combo_phy_regs.h"
 #include "intel_connector.h"
 #include "intel_crtc.h"
@@ -4259,9 +4260,9 @@ static void intel_ddi_encoder_shutdown(struct intel_encoder *encoder)
 void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 {
 	struct intel_digital_port *dig_port;
 	struct intel_encoder *encoder;
-	const struct intel_bios_encoder_data *devdata;
+	struct intel_bios_encoder_data *devdata;
 	bool init_hdmi, init_dp;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 
 	/*
@@ -4282,8 +4283,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 			    "VBT says port %c is not present\n",
 			    port_name(port));
 		return;
 	}
+	intel_bios_encoder_sanitize(devdata, port);
 
 	init_hdmi = intel_bios_encoder_supports_dvi(devdata) ||
 		intel_bios_encoder_supports_hdmi(devdata);
 	init_dp = intel_bios_encoder_supports_dp(devdata);
-- 
2.39.2

