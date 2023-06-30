Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E3E743F5A
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 18:01:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F09E10E4AD;
	Fri, 30 Jun 2023 16:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B01210E4A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 16:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688140867; x=1719676867;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mt3wH7h8lFSH7JCjIXQ2IgxIvkxcNEzdzFZiMHWO9+I=;
 b=BSfl77EAj89ViGnENmxDzdg6GsSEopp8MouSPX/k1en7Wn/1EvJWrXNZ
 qKSuUPfnAfmikQEoLghRQ6HHijNGFR3Q1vNqHyWiRYwS/g51CfG+UFWxD
 3Zh9sLeq8eTyW/QznBpl+dMn8SuDTzOH7uLoxn7Zng4u5USzBROVcP3gk
 FMXvRZh/kiBJJWn1cavbB6OkmBsM6u5L/VNhkWovcP0ODpvb5oB/ElKi+
 AVSnDEoJr6EK0gIJP7tnserc8T4hWsA33Q1uY8qwOqGNn1c08eOXBiANM
 UBrjnJBkhY6mbRCt9Gibca9wYETsjtEzc+62a8n/tMw9uU0szkcpBLsNg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="365912594"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="365912594"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 08:59:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="695059445"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="695059445"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 30 Jun 2023 08:59:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Jun 2023 18:58:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Jun 2023 18:58:44 +0300
Message-Id: <20230630155846.29931-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
References: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/6] drm/i915: Remove AUX CH sanitation
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

Stop with the VBT AUX CH sanitation, and instead just check
that the appropriate AUX CH is still available when initializing
a DP/TC port.

The reason being that we want to start initializing ports in
VBT order to deal with VBTs that declare child devices with
seemingly conflicting ports. As the encoder initialization can
fail for other reasons (at least for eDP+AUX) we can't know
upfront which way the conflicts should be resolved.

Note that the old way of sanitizing gave priority to the last
port declared in the VBT, but now we sort of do the opposite by
favoring the first encoder to successfully initialize. The reason
for the old "last port wins" preference was eg. Asrock B250M-HDV
where port A (eDP) and port E (DP->VGA) have an AUX CH conflict
and we need to prefer port E. However with the new way port A (eDP)
will be probed first, but will fail to probe due to HPD and thus
port E will still win in the end.

v2: Pimp the commit message (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c       |  3 ++
 drivers/gpu/drm/i915/display/intel_bios.c   | 53 ---------------------
 drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 51 ++++++++++++++++----
 4 files changed, 50 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 0cab5992e3da..4c7187f7913e 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1378,6 +1378,9 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 		intel_infoframe_init(dig_port);
 
 	dig_port->aux_ch = intel_dp_aux_ch(intel_encoder);
+	if (dig_port->aux_ch == AUX_CH_NONE)
+		goto err_init_connector;
+
 	if (!intel_dp_init_connector(dig_port, intel_connector))
 		goto err_init_connector;
 
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 6aeebd3c97f9..ae83788177ce 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2230,56 +2230,6 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 	return 0;
 }
 
-static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
-{
-	enum port port;
-
-	if (!aux_ch)
-		return PORT_NONE;
-
-	for_each_port(port) {
-		const struct intel_bios_encoder_data *devdata =
-			i915->display.vbt.ports[port];
-
-		if (devdata && aux_ch == devdata->child.aux_channel)
-			return port;
-	}
-
-	return PORT_NONE;
-}
-
-static void sanitize_aux_ch(struct intel_bios_encoder_data *devdata,
-			    enum port port)
-{
-	struct drm_i915_private *i915 = devdata->i915;
-	struct child_device_config *child;
-	enum port p;
-
-	p = get_port_by_aux_ch(i915, devdata->child.aux_channel);
-	if (p == PORT_NONE)
-		return;
-
-	drm_dbg_kms(&i915->drm,
-		    "port %c trying to use the same AUX CH (0x%x) as port %c, "
-		    "disabling port %c DP support\n",
-		    port_name(port), devdata->child.aux_channel,
-		    port_name(p), port_name(p));
-
-	/*
-	 * If we have multiple ports supposedly sharing the aux channel, then DP
-	 * couldn't exist on the shared port. Otherwise they share the same aux
-	 * channel and system couldn't communicate with them separately.
-	 *
-	 * Give inverse child device order the priority, last one wins. Yes,
-	 * there are real machines (eg. Asrock B250M-HDV) where VBT has both
-	 * port A and port E with the same AUX ch and we must pick port E :(
-	 */
-	child = &i915->display.vbt.ports[p]->child;
-
-	child->device_type &= ~DEVICE_TYPE_DISPLAYPORT_OUTPUT;
-	child->aux_channel = 0;
-}
-
 static u8 dvo_port_type(u8 dvo_port)
 {
 	switch (dvo_port) {
@@ -2688,9 +2638,6 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 
 	sanitize_device_type(devdata, port);
 
-	if (intel_bios_encoder_supports_dp(devdata))
-		sanitize_aux_ch(devdata, port);
-
 	i915->display.vbt.ports[port] = devdata;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 662b5ceef3c8..9e4e6482aa26 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4938,8 +4938,11 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	dig_port->dp.output_reg = INVALID_MMIO_REG;
 	dig_port->max_lanes = intel_ddi_max_lanes(dig_port);
 
-	if (need_aux_ch(encoder, init_dp))
+	if (need_aux_ch(encoder, init_dp)) {
 		dig_port->aux_ch = intel_dp_aux_ch(encoder);
+		if (dig_port->aux_ch == AUX_CH_NONE)
+			goto err;
+	}
 
 	if (intel_phy_is_tc(dev_priv, phy)) {
 		bool is_legacy =
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 21b50a5c8a85..2d173bd495a3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -792,25 +792,60 @@ static enum aux_ch default_aux_ch(struct intel_encoder *encoder)
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
2.39.3

