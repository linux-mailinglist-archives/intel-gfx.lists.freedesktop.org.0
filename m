Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA5E62F30A
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 11:55:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3F110E6F9;
	Fri, 18 Nov 2022 10:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A360D10E6C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 10:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668768948; x=1700304948;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YG00hxYSIA5ln3tUbcNv7bCcyGv9JYUPwR43qhGe28c=;
 b=E0VuwGch5f9+Q2uH5qD/iblow6HCUg7PRbaM7YHdRIsubxrAfXDCZmqM
 aJoLmFYzqWEcJIXSaP1ElvqMsrUqd0kBvYX8tklGhJwmybFPNEuuG1cS+
 7GAT4Bz8FR3I66xEtgu1brYbBfpPunVfu7sId9v1hoUxlTnWvp5Ez3+g4
 ZgNlFUdhpjf7oOQTIhXtTY9WjdhcU2Axq8/mp/MTkd84gk3DIeeqdJA1d
 ay1gwX+LE5R89QqxzdqRE1NZPKz86xSbdOom9uY+Cp+gHlQgclF2jBaaT
 kQNFWFsmpySGfCEsf9Qqs9Dp/gyWJHwG8iBGnxzvYML7q40IuHF32yhQ/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="399398167"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="399398167"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 02:55:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="640172163"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="640172163"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 18 Nov 2022 02:55:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Nov 2022 12:55:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Nov 2022 12:55:23 +0200
Message-Id: <20221118105525.27254-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
References: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/9] drm/i915/dvo: s/intel_encoder/encoder/ etc.
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

Remove the pointless intel_ namespace from our encoder/connector
variables.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c | 91 ++++++++++++------------
 1 file changed, 45 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index bccbda50113c..d078cf0d9765 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -219,14 +219,14 @@ static void intel_enable_dvo(struct intel_atomic_state *state,
 }
 
 static enum drm_mode_status
-intel_dvo_mode_valid(struct drm_connector *connector,
+intel_dvo_mode_valid(struct drm_connector *_connector,
 		     struct drm_display_mode *mode)
 {
-	struct intel_connector *intel_connector = to_intel_connector(connector);
-	struct intel_dvo *intel_dvo = intel_attached_dvo(intel_connector);
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
 	const struct drm_display_mode *fixed_mode =
-		intel_panel_fixed_mode(intel_connector, mode);
-	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
+		intel_panel_fixed_mode(connector, mode);
+	int max_dotclk = to_i915(connector->base.dev)->max_dotclk_freq;
 	int target_clock = mode->clock;
 
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
@@ -237,7 +237,7 @@ intel_dvo_mode_valid(struct drm_connector *connector,
 	if (fixed_mode) {
 		enum drm_mode_status status;
 
-		status = intel_panel_mode_valid(intel_connector, mode);
+		status = intel_panel_mode_valid(connector, mode);
 		if (status != MODE_OK)
 			return status;
 
@@ -315,13 +315,14 @@ static void intel_dvo_pre_enable(struct intel_atomic_state *state,
 }
 
 static enum drm_connector_status
-intel_dvo_detect(struct drm_connector *connector, bool force)
+intel_dvo_detect(struct drm_connector *_connector, bool force)
 {
-	struct drm_i915_private *i915 = to_i915(connector->dev);
-	struct intel_dvo *intel_dvo = intel_attached_dvo(to_intel_connector(connector));
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
 
 	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
-		      connector->base.id, connector->name);
+		      connector->base.base.id, connector->base.name);
 
 	if (!INTEL_DISPLAY_ENABLED(i915))
 		return connector_status_disconnected;
@@ -329,9 +330,10 @@ intel_dvo_detect(struct drm_connector *connector, bool force)
 	return intel_dvo->dev.dev_ops->detect(&intel_dvo->dev);
 }
 
-static int intel_dvo_get_modes(struct drm_connector *connector)
+static int intel_dvo_get_modes(struct drm_connector *_connector)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	int num_modes;
 
 	/*
@@ -340,12 +342,12 @@ static int intel_dvo_get_modes(struct drm_connector *connector)
 	 * (TV-out, for example), but for now with just TMDS and LVDS,
 	 * that's not the case.
 	 */
-	num_modes = intel_ddc_get_modes(connector,
+	num_modes = intel_ddc_get_modes(&connector->base,
 					intel_gmbus_get_adapter(dev_priv, GMBUS_PIN_DPC));
 	if (num_modes)
 		return num_modes;
 
-	return intel_panel_get_modes(to_intel_connector(connector));
+	return intel_panel_get_modes(connector);
 }
 
 static const struct drm_connector_funcs intel_dvo_connector_funcs = {
@@ -493,68 +495,66 @@ static bool intel_dvo_probe(struct drm_i915_private *dev_priv,
 
 void intel_dvo_init(struct drm_i915_private *dev_priv)
 {
-	struct intel_encoder *intel_encoder;
+	struct intel_connector *connector;
+	struct intel_encoder *encoder;
 	struct intel_dvo *intel_dvo;
-	struct intel_connector *intel_connector;
-	struct drm_connector *connector;
 
 	intel_dvo = kzalloc(sizeof(*intel_dvo), GFP_KERNEL);
 	if (!intel_dvo)
 		return;
 
-	intel_connector = intel_connector_alloc();
-	if (!intel_connector) {
+	connector = intel_connector_alloc();
+	if (!connector) {
 		kfree(intel_dvo);
 		return;
 	}
 
-	connector = &intel_connector->base;
+	intel_dvo->attached_connector = connector;
 
-	intel_dvo->attached_connector = intel_connector;
+	encoder = &intel_dvo->base;
 
-	intel_encoder = &intel_dvo->base;
-
-	intel_encoder->disable = intel_disable_dvo;
-	intel_encoder->enable = intel_enable_dvo;
-	intel_encoder->get_hw_state = intel_dvo_get_hw_state;
-	intel_encoder->get_config = intel_dvo_get_config;
-	intel_encoder->compute_config = intel_dvo_compute_config;
-	intel_encoder->pre_enable = intel_dvo_pre_enable;
-	intel_connector->get_hw_state = intel_dvo_connector_get_hw_state;
+	encoder->disable = intel_disable_dvo;
+	encoder->enable = intel_enable_dvo;
+	encoder->get_hw_state = intel_dvo_get_hw_state;
+	encoder->get_config = intel_dvo_get_config;
+	encoder->compute_config = intel_dvo_compute_config;
+	encoder->pre_enable = intel_dvo_pre_enable;
+	connector->get_hw_state = intel_dvo_connector_get_hw_state;
 
 	if (!intel_dvo_probe(dev_priv, intel_dvo)) {
 		kfree(intel_dvo);
-		intel_connector_free(intel_connector);
+		intel_connector_free(connector);
 		return;
 	}
 
-	intel_encoder->type = INTEL_OUTPUT_DVO;
-	intel_encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
-	intel_encoder->port = intel_dvo_port(intel_dvo->dev.dvo_reg);
-	intel_encoder->pipe_mask = ~0;
+	encoder->type = INTEL_OUTPUT_DVO;
+	encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
+	encoder->port = intel_dvo_port(intel_dvo->dev.dvo_reg);
+	encoder->pipe_mask = ~0;
 
 	if (intel_dvo->dev.type != INTEL_DVO_CHIP_LVDS)
-		intel_encoder->cloneable = BIT(INTEL_OUTPUT_ANALOG) |
+		encoder->cloneable = BIT(INTEL_OUTPUT_ANALOG) |
 			BIT(INTEL_OUTPUT_DVO);
 
-	drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
+	drm_encoder_init(&dev_priv->drm, &encoder->base,
 			 &intel_dvo_enc_funcs,
 			 intel_dvo_encoder_type(&intel_dvo->dev),
-			 "DVO %c", port_name(intel_encoder->port));
+			 "DVO %c", port_name(encoder->port));
 
 	if (intel_dvo->dev.type == INTEL_DVO_CHIP_TMDS)
-		intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT |
+		connector->polled = DRM_CONNECTOR_POLL_CONNECT |
 			DRM_CONNECTOR_POLL_DISCONNECT;
 
-	drm_connector_init(&dev_priv->drm, connector,
+	drm_connector_init(&dev_priv->drm, &connector->base,
 			   &intel_dvo_connector_funcs,
 			   intel_dvo_connector_type(&intel_dvo->dev));
 
-	drm_connector_helper_add(connector,
+	drm_connector_helper_add(&connector->base,
 				 &intel_dvo_connector_helper_funcs);
-	connector->display_info.subpixel_order = SubPixelHorizontalRGB;
+	connector->base.display_info.subpixel_order = SubPixelHorizontalRGB;
+
+	intel_connector_attach_encoder(connector, encoder);
 
-	intel_connector_attach_encoder(intel_connector, intel_encoder);
 	if (intel_dvo->dev.type == INTEL_DVO_CHIP_LVDS) {
 		/*
 		 * For our LVDS chipsets, we should hopefully be able
@@ -564,9 +564,8 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 		 * headers, likely), so for now, just get the current
 		 * mode being output through DVO.
 		 */
-		intel_panel_add_encoder_fixed_mode(intel_connector,
-						   intel_encoder);
+		intel_panel_add_encoder_fixed_mode(connector, encoder);
 
-		intel_panel_init(intel_connector);
+		intel_panel_init(connector);
 	}
 }
-- 
2.37.4

