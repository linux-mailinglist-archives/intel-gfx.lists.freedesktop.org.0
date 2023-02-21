Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E614069EAEE
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 00:03:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8422C10E909;
	Tue, 21 Feb 2023 23:03:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 905C610E3A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 23:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677020608; x=1708556608;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=iN8tTmACjoOMBgO3wZW3YsnNb7OFpUOWxUvnVzYvvKA=;
 b=B9lX04UzyORQmxUZ9vD7JVm0VzMFeylmo1B81Bjia9pknpo6GpUkZwkS
 QM13e6IeKPFwxVJP+/edLsZU+ipkYlNPlstxVvSy295p23SDXFKd07zob
 kxg5CfYo9yDSCsRbAgggZ6EBN+XzK0Kjj5MuUR+f5yelr3qhNZnOLftEu
 cNIqL/PN1v4njn2qX7R17b4zLgzGo0V6vsRqjhSOi+Z43ku4SAzE/51iQ
 qBlL/dMgmsT+bbrUCe0/HJIFyb2/Pesw31aUP7rBvq4WVU6biDxfJWW/Y
 vD/5jYy+qRwF0SjT1ukNTTX2OTCgHLBHLEddCL+pRAKTDzjhqfDlwW/kp w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="330501944"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="330501944"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 15:03:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="814690200"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="814690200"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 21 Feb 2023 15:03:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 01:03:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 01:02:25 +0200
Message-Id: <20230221230227.6244-21-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 20/22] drm/i915: Remove AUX CH sanitation
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

Stop with the VBT AUX CH sanitation, and instead just check
that the appropriate AUX CH is still available when initializing
a DP/TC port.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c       |  3 ++
 drivers/gpu/drm/i915/display/intel_bios.c   | 56 ---------------------
 drivers/gpu/drm/i915/display/intel_ddi.c    |  3 ++
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 51 ++++++++++++++++---
 4 files changed, 49 insertions(+), 64 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index b5b0b323c1f4..6c9b9c8ef790 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1376,8 +1376,11 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	if (port != PORT_A)
 		intel_infoframe_init(dig_port);
 
 	dig_port->aux_ch = intel_dp_aux_ch(intel_encoder);
+	if (dig_port->aux_ch == AUX_CH_NONE)
+		goto err_init_connector;
+
 	if (!intel_dp_init_connector(dig_port, intel_connector))
 		goto err_init_connector;
 
 	return true;
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 682c9cb6a736..de3c5493f38f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2223,61 +2223,8 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 		    vbt_pin);
 	return 0;
 }
 
-static struct intel_encoder *
-get_encoder_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
-{
-	struct intel_encoder *encoder;
-
-	if (!aux_ch)
-		return NULL;
-
-	for_each_intel_encoder(&i915->drm, encoder) {
-		const struct intel_bios_encoder_data *devdata = encoder->devdata;
-
-		if (devdata && aux_ch == devdata->child.aux_channel)
-			return encoder;
-	}
-
-	return NULL;
-}
-
-static void sanitize_aux_ch(struct intel_bios_encoder_data *devdata,
-			    enum port port)
-{
-	struct drm_i915_private *i915 = devdata->i915;
-	struct child_device_config *child = &devdata->child;
-	struct intel_encoder *other;
-
-	other = get_encoder_by_aux_ch(i915, devdata->child.aux_channel);
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
-		    "port %c trying to use the same AUX CH (0x%x) as port %c, "
-		    "disabling port %c DP support\n",
-		    port_name(port), devdata->child.aux_channel,
-		    port_name(other->port), port_name(port));
-
-	/*
-	 * If we have multiple ports supposedly sharing the aux channel, then DP
-	 * couldn't exist on the shared port. Otherwise they share the same aux
-	 * channel and system couldn't communicate with them separately.
-	 *
-	 * First successfully initialized encoder wins.
-	 */
-	child->device_type &= ~DEVICE_TYPE_DISPLAYPORT_OUTPUT;
-	child->aux_channel = 0;
-}
-
 static u8 dvo_port_type(u8 dvo_port)
 {
 	switch (dvo_port) {
 	case DVO_PORT_HDMIA:
@@ -2688,11 +2635,8 @@ void intel_bios_encoder_sanitize(struct intel_bios_encoder_data *devdata,
 				 enum port port)
 {
 	if (!devdata)
 		return;
-
-	if (intel_bios_encoder_supports_dp(devdata))
-		sanitize_aux_ch(devdata, port);
 }
 
 static bool has_ddi_port_info(struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6deaa3433958..70b161d53c17 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4555,9 +4555,12 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
 		dig_port->saved_port_bits |= DDI_BUF_PORT_REVERSAL;
 
 	dig_port->dp.output_reg = INVALID_MMIO_REG;
 	dig_port->max_lanes = intel_ddi_max_lanes(dig_port);
+
 	dig_port->aux_ch = intel_dp_aux_ch(encoder);
+	if (dig_port->aux_ch == AUX_CH_NONE)
+		goto err;
 
 	if (intel_phy_is_tc(dev_priv, phy)) {
 		bool is_legacy =
 			!intel_bios_encoder_supports_typec_usb(devdata) &&
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 96967e21c94c..927c877938b4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -749,26 +749,61 @@ static enum aux_ch default_aux_ch(struct intel_encoder *encoder)
 
 	return (enum aux_ch)encoder->port;
 }
 
+static struct intel_encoder *
+get_encoder_by_aux_ch(struct intel_encoder *encoder,
+		      enum aux_ch aux_ch)
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
+		if (enc_to_dig_port(other)->aux_ch == aux_ch)
+			return other;
+	}
+
+	return NULL;
+}
+
 enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_encoder *other;
+	const char *source;
 	enum aux_ch aux_ch;
 
 	aux_ch = intel_bios_dp_aux_ch(encoder->devdata);
-	if (aux_ch != AUX_CH_NONE) {
-		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] using AUX %c (VBT)\n",
-			    encoder->base.base.id, encoder->base.name,
-			    aux_ch_name(aux_ch));
-		return aux_ch;
+	source = "VBT";
+
+	if (aux_ch == AUX_CH_NONE) {
+		aux_ch = default_aux_ch(encoder);
+		source = "platform default";
 	}
 
-	aux_ch = default_aux_ch(encoder);
+	if (aux_ch == AUX_CH_NONE)
+		return AUX_CH_NONE;
+
+	/* FIXME validate aux_ch against platform caps */
+
+	other = get_encoder_by_aux_ch(encoder, aux_ch);
+	if (other) {
+		drm_dbg_kms(&i915->drm,
+			    "[ENCODER:%d:%s] AUX CH %c already claimed by [ENCODER:%d:%s]\n",
+			    encoder->base.base.id, encoder->base.name, aux_ch_name(aux_ch),
+			    other->base.base.id, other->base.name);
+		return AUX_CH_NONE;
+	}
 
 	drm_dbg_kms(&i915->drm,
-		    "[ENCODER:%d:%s] using AUX %c (platform default)\n",
+		    "[ENCODER:%d:%s] Using AUX CH %c (%s)\n",
 		    encoder->base.base.id, encoder->base.name,
-		    aux_ch_name(aux_ch));
+		    aux_ch_name(aux_ch), source);
 
 	return aux_ch;
 }
-- 
2.39.2

