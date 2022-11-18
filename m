Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C11962F314
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 11:56:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76FE810E233;
	Fri, 18 Nov 2022 10:56:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4581010E6D1
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 10:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668768959; x=1700304959;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4JqIL1QZFKQbQ39Ea0Tgc1nuxBK58zYRPJVEi6TIC9U=;
 b=bzXeRimgkoSxwnVdGsWlkYdzsGlAbytHvAVkTBeUievvmb037OqT1PUY
 NVbUvGge/5OmdzwOHBCwEfC+K3u3o40Cqhn8qjNksqlrF2hIZmJeDHhT9
 +x0E4Zl/gYYvbW1N4NTm435uUAe9aiO9IYS8LY3XC/k+mw0CggUSCUaJP
 FQtUZFoYsqgufi6ohsNHHukjOZBEQymSizHfXr8E030PNbRvmdvP7JmFz
 oqa7m5F+fj8ZKUQ/TSUcy2qb5LgEyLdtZBEOTMzfKyxmzvPY0MXEDYtfz
 l2P7MFhAxvgS6/RSK75XWLymDXgMRPjL229tfxSsZ0HvL7WsjGumuWR6D g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="310741741"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="310741741"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 02:55:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="708994403"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="708994403"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga004.fm.intel.com with SMTP; 18 Nov 2022 02:55:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Nov 2022 12:55:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Nov 2022 12:55:22 +0200
Message-Id: <20221118105525.27254-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
References: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/9] drm/i915/dvo: Flatten intel_dvo_init()
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

The loop over intel_dvo_devices[] makes intel_dvo_init()
an ugly mess. Pull the i2c device probe out to a separate
function so that we can get rid of the loop and flatten
the code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c | 229 ++++++++++++-----------
 1 file changed, 123 insertions(+), 106 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 87ee913cf89b..bccbda50113c 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -415,12 +415,88 @@ static int intel_dvo_connector_type(const struct intel_dvo_device *dvo)
 	}
 }
 
+static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
+			       struct intel_dvo *intel_dvo,
+			       const struct intel_dvo_device *dvo)
+{
+	struct i2c_adapter *i2c;
+	u32 dpll[I915_MAX_PIPES];
+	enum pipe pipe;
+	int gpio;
+	bool ret;
+
+	/*
+	 * Allow the I2C driver info to specify the GPIO to be used in
+	 * special cases, but otherwise default to what's defined
+	 * in the spec.
+	 */
+	if (intel_gmbus_is_valid_pin(dev_priv, dvo->gpio))
+		gpio = dvo->gpio;
+	else if (dvo->type == INTEL_DVO_CHIP_LVDS)
+		gpio = GMBUS_PIN_SSC;
+	else
+		gpio = GMBUS_PIN_DPB;
+
+	/*
+	 * Set up the I2C bus necessary for the chip we're probing.
+	 * It appears that everything is on GPIOE except for panels
+	 * on i830 laptops, which are on GPIOB (DVOA).
+	 */
+	i2c = intel_gmbus_get_adapter(dev_priv, gpio);
+
+	intel_dvo->dev = *dvo;
+
+	/*
+	 * GMBUS NAK handling seems to be unstable, hence let the
+	 * transmitter detection run in bit banging mode for now.
+	 */
+	intel_gmbus_force_bit(i2c, true);
+
+	/*
+	 * ns2501 requires the DVO 2x clock before it will
+	 * respond to i2c accesses, so make sure we have
+	 * the clock enabled before we attempt to initialize
+	 * the device.
+	 */
+	for_each_pipe(dev_priv, pipe) {
+		dpll[pipe] = intel_de_read(dev_priv, DPLL(pipe));
+		intel_de_write(dev_priv, DPLL(pipe),
+			       dpll[pipe] | DPLL_DVO_2X_MODE);
+	}
+
+	ret = dvo->dev_ops->init(&intel_dvo->dev, i2c);
+
+	/* restore the DVO 2x clock state to original */
+	for_each_pipe(dev_priv, pipe) {
+		intel_de_write(dev_priv, DPLL(pipe), dpll[pipe]);
+	}
+
+	intel_gmbus_force_bit(i2c, false);
+
+	return ret;
+}
+
+static bool intel_dvo_probe(struct drm_i915_private *dev_priv,
+			    struct intel_dvo *intel_dvo)
+{
+	int i;
+
+	/* Now, try to find a controller */
+	for (i = 0; i < ARRAY_SIZE(intel_dvo_devices); i++) {
+		if (intel_dvo_init_dev(dev_priv, intel_dvo,
+				       &intel_dvo_devices[i]))
+			return true;
+	}
+
+	return false;
+}
+
 void intel_dvo_init(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *intel_encoder;
 	struct intel_dvo *intel_dvo;
 	struct intel_connector *intel_connector;
-	int i;
+	struct drm_connector *connector;
 
 	intel_dvo = kzalloc(sizeof(*intel_dvo), GFP_KERNEL);
 	if (!intel_dvo)
@@ -432,6 +508,8 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 		return;
 	}
 
+	connector = &intel_connector->base;
+
 	intel_dvo->attached_connector = intel_connector;
 
 	intel_encoder = &intel_dvo->base;
@@ -444,112 +522,51 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 	intel_encoder->pre_enable = intel_dvo_pre_enable;
 	intel_connector->get_hw_state = intel_dvo_connector_get_hw_state;
 
-	/* Now, try to find a controller */
-	for (i = 0; i < ARRAY_SIZE(intel_dvo_devices); i++) {
-		struct drm_connector *connector = &intel_connector->base;
-		const struct intel_dvo_device *dvo = &intel_dvo_devices[i];
-		struct i2c_adapter *i2c;
-		int gpio;
-		bool dvoinit;
-		enum pipe pipe;
-		u32 dpll[I915_MAX_PIPES];
-
-		/*
-		 * Allow the I2C driver info to specify the GPIO to be used in
-		 * special cases, but otherwise default to what's defined
-		 * in the spec.
-		 */
-		if (intel_gmbus_is_valid_pin(dev_priv, dvo->gpio))
-			gpio = dvo->gpio;
-		else if (dvo->type == INTEL_DVO_CHIP_LVDS)
-			gpio = GMBUS_PIN_SSC;
-		else
-			gpio = GMBUS_PIN_DPB;
-
-		/*
-		 * Set up the I2C bus necessary for the chip we're probing.
-		 * It appears that everything is on GPIOE except for panels
-		 * on i830 laptops, which are on GPIOB (DVOA).
-		 */
-		i2c = intel_gmbus_get_adapter(dev_priv, gpio);
-
-		intel_dvo->dev = *dvo;
-
-		/*
-		 * GMBUS NAK handling seems to be unstable, hence let the
-		 * transmitter detection run in bit banging mode for now.
-		 */
-		intel_gmbus_force_bit(i2c, true);
-
-		/*
-		 * ns2501 requires the DVO 2x clock before it will
-		 * respond to i2c accesses, so make sure we have
-		 * have the clock enabled before we attempt to
-		 * initialize the device.
-		 */
-		for_each_pipe(dev_priv, pipe) {
-			dpll[pipe] = intel_de_read(dev_priv, DPLL(pipe));
-			intel_de_write(dev_priv, DPLL(pipe),
-				       dpll[pipe] | DPLL_DVO_2X_MODE);
-		}
-
-		dvoinit = dvo->dev_ops->init(&intel_dvo->dev, i2c);
-
-		/* restore the DVO 2x clock state to original */
-		for_each_pipe(dev_priv, pipe) {
-			intel_de_write(dev_priv, DPLL(pipe), dpll[pipe]);
-		}
-
-		intel_gmbus_force_bit(i2c, false);
-
-		if (!dvoinit)
-			continue;
-
-		intel_encoder->type = INTEL_OUTPUT_DVO;
-		intel_encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
-		intel_encoder->port = intel_dvo_port(dvo->dvo_reg);
-		intel_encoder->pipe_mask = ~0;
-
-		if (dvo->type != INTEL_DVO_CHIP_LVDS)
-			intel_encoder->cloneable = BIT(INTEL_OUTPUT_ANALOG) |
-				BIT(INTEL_OUTPUT_DVO);
-
-		drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
-				 &intel_dvo_enc_funcs,
-				 intel_dvo_encoder_type(dvo),
-				 "DVO %c", port_name(intel_encoder->port));
-
-		if (dvo->type == INTEL_DVO_CHIP_TMDS)
-			intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT |
-				DRM_CONNECTOR_POLL_DISCONNECT;
-
-		drm_connector_init(&dev_priv->drm, connector,
-				   &intel_dvo_connector_funcs,
-				   intel_dvo_connector_type(dvo));
-
-		drm_connector_helper_add(connector,
-					 &intel_dvo_connector_helper_funcs);
-		connector->display_info.subpixel_order = SubPixelHorizontalRGB;
-
-		intel_connector_attach_encoder(intel_connector, intel_encoder);
-		if (dvo->type == INTEL_DVO_CHIP_LVDS) {
-			/*
-			 * For our LVDS chipsets, we should hopefully be able
-			 * to dig the fixed panel mode out of the BIOS data.
-			 * However, it's in a different format from the BIOS
-			 * data on chipsets with integrated LVDS (stored in AIM
-			 * headers, likely), so for now, just get the current
-			 * mode being output through DVO.
-			 */
-			intel_panel_add_encoder_fixed_mode(intel_connector,
-							   intel_encoder);
-
-			intel_panel_init(intel_connector);
-		}
-
+	if (!intel_dvo_probe(dev_priv, intel_dvo)) {
+		kfree(intel_dvo);
+		intel_connector_free(intel_connector);
 		return;
 	}
 
-	kfree(intel_dvo);
-	intel_connector_free(intel_connector);
+	intel_encoder->type = INTEL_OUTPUT_DVO;
+	intel_encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
+	intel_encoder->port = intel_dvo_port(intel_dvo->dev.dvo_reg);
+	intel_encoder->pipe_mask = ~0;
+
+	if (intel_dvo->dev.type != INTEL_DVO_CHIP_LVDS)
+		intel_encoder->cloneable = BIT(INTEL_OUTPUT_ANALOG) |
+			BIT(INTEL_OUTPUT_DVO);
+
+	drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
+			 &intel_dvo_enc_funcs,
+			 intel_dvo_encoder_type(&intel_dvo->dev),
+			 "DVO %c", port_name(intel_encoder->port));
+
+	if (intel_dvo->dev.type == INTEL_DVO_CHIP_TMDS)
+		intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT |
+			DRM_CONNECTOR_POLL_DISCONNECT;
+
+	drm_connector_init(&dev_priv->drm, connector,
+			   &intel_dvo_connector_funcs,
+			   intel_dvo_connector_type(&intel_dvo->dev));
+
+	drm_connector_helper_add(connector,
+				 &intel_dvo_connector_helper_funcs);
+	connector->display_info.subpixel_order = SubPixelHorizontalRGB;
+
+	intel_connector_attach_encoder(intel_connector, intel_encoder);
+	if (intel_dvo->dev.type == INTEL_DVO_CHIP_LVDS) {
+		/*
+		 * For our LVDS chipsets, we should hopefully be able
+		 * to dig the fixed panel mode out of the BIOS data.
+		 * However, it's in a different format from the BIOS
+		 * data on chipsets with integrated LVDS (stored in AIM
+		 * headers, likely), so for now, just get the current
+		 * mode being output through DVO.
+		 */
+		intel_panel_add_encoder_fixed_mode(intel_connector,
+						   intel_encoder);
+
+		intel_panel_init(intel_connector);
+	}
 }
-- 
2.37.4

