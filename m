Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8BA62F30D
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 11:56:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C6710E6FC;
	Fri, 18 Nov 2022 10:55:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67C9F10E6D1
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 10:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668768951; x=1700304951;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=w0h2T9CezxOywQoYCQ3n/O59u6whCiqqAKD45nA7nx0=;
 b=GWcYMUu0xq6DFuDGLYpk7uBnsMOWgVaqLT5pjRN93mDuC6rSJQ7E6QLq
 x4xsI25uUk/fKBzD1lWlqnkodrrgK/txZwRtIFqdEwb2WnGhp2c7Usldy
 DzfJ7EErIRQNirgUEJkSFrIJHWnyBuFDdRCcW1qvmva4hEpZARbIEWOdH
 160Y9h08zojSRx0peZeSyXHEaIDkAwYckTflH3Vfe2eYXCMe9TG9YglSI
 YL5SAv0NQ+8yX1f/aFXxWOjvEEta9bMXUdsHSi+/gGkXwxbmtNwqAVIMZ
 nnuM3pUcvj6AU7QV4eUanI1zsG902liJr7h/cCAGrKXJ3B8N0qkvSQrIe Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="399398175"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="399398175"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 02:55:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="640172174"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="640172174"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 18 Nov 2022 02:55:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Nov 2022 12:55:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Nov 2022 12:55:24 +0200
Message-Id: <20221118105525.27254-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
References: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/9] drm/i915/dvo: s/dev_priv/i915/
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

Follow the modern style and rename most 'dev_priv' variables
to 'i915'.

intel_dvo_init_dev() is the sole exception since it needs the
magic 'dev_priv' variable for the DPLL register macros.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c | 53 ++++++++++++------------
 1 file changed, 26 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index d078cf0d9765..9462b66e5fb4 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -132,12 +132,11 @@ static struct intel_dvo *intel_attached_dvo(struct intel_connector *connector)
 
 static bool intel_dvo_connector_get_hw_state(struct intel_connector *connector)
 {
-	struct drm_device *dev = connector->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, intel_dvo->dev.dvo_reg);
+	tmp = intel_de_read(i915, intel_dvo->dev.dvo_reg);
 
 	if (!(tmp & DVO_ENABLE))
 		return false;
@@ -148,11 +147,11 @@ static bool intel_dvo_connector_get_hw_state(struct intel_connector *connector)
 static bool intel_dvo_get_hw_state(struct intel_encoder *encoder,
 				   enum pipe *pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, intel_dvo->dev.dvo_reg);
+	tmp = intel_de_read(i915, intel_dvo->dev.dvo_reg);
 
 	*pipe = (tmp & DVO_PIPE_SEL_MASK) >> DVO_PIPE_SEL_SHIFT;
 
@@ -162,13 +161,13 @@ static bool intel_dvo_get_hw_state(struct intel_encoder *encoder,
 static void intel_dvo_get_config(struct intel_encoder *encoder,
 				 struct intel_crtc_state *pipe_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 	u32 tmp, flags = 0;
 
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_DVO);
 
-	tmp = intel_de_read(dev_priv, intel_dvo->dev.dvo_reg);
+	tmp = intel_de_read(i915, intel_dvo->dev.dvo_reg);
 	if (tmp & DVO_HSYNC_ACTIVE_HIGH)
 		flags |= DRM_MODE_FLAG_PHSYNC;
 	else
@@ -188,14 +187,14 @@ static void intel_disable_dvo(struct intel_atomic_state *state,
 			      const struct intel_crtc_state *old_crtc_state,
 			      const struct drm_connector_state *old_conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 	i915_reg_t dvo_reg = intel_dvo->dev.dvo_reg;
-	u32 temp = intel_de_read(dev_priv, dvo_reg);
+	u32 temp = intel_de_read(i915, dvo_reg);
 
 	intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, false);
-	intel_de_write(dev_priv, dvo_reg, temp & ~DVO_ENABLE);
-	intel_de_read(dev_priv, dvo_reg);
+	intel_de_write(i915, dvo_reg, temp & ~DVO_ENABLE);
+	intel_de_read(i915, dvo_reg);
 }
 
 static void intel_enable_dvo(struct intel_atomic_state *state,
@@ -203,17 +202,17 @@ static void intel_enable_dvo(struct intel_atomic_state *state,
 			     const struct intel_crtc_state *pipe_config,
 			     const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 	i915_reg_t dvo_reg = intel_dvo->dev.dvo_reg;
-	u32 temp = intel_de_read(dev_priv, dvo_reg);
+	u32 temp = intel_de_read(i915, dvo_reg);
 
 	intel_dvo->dev.dev_ops->mode_set(&intel_dvo->dev,
 					 &pipe_config->hw.mode,
 					 &pipe_config->hw.adjusted_mode);
 
-	intel_de_write(dev_priv, dvo_reg, temp | DVO_ENABLE);
-	intel_de_read(dev_priv, dvo_reg);
+	intel_de_write(i915, dvo_reg, temp | DVO_ENABLE);
+	intel_de_read(i915, dvo_reg);
 
 	intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, true);
 }
@@ -287,7 +286,7 @@ static void intel_dvo_pre_enable(struct intel_atomic_state *state,
 				 const struct intel_crtc_state *pipe_config,
 				 const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
@@ -297,7 +296,7 @@ static void intel_dvo_pre_enable(struct intel_atomic_state *state,
 	i915_reg_t dvo_srcdim_reg = intel_dvo->dev.dvo_srcdim_reg;
 
 	/* Save the data order, since I don't know what it should be set to. */
-	dvo_val = intel_de_read(dev_priv, dvo_reg) &
+	dvo_val = intel_de_read(i915, dvo_reg) &
 		  (DVO_PRESERVE_MASK | DVO_DATA_ORDER_GBRG);
 	dvo_val |= DVO_DATA_ORDER_FP | DVO_BORDER_ENABLE |
 		   DVO_BLANK_ACTIVE_HIGH;
@@ -309,9 +308,9 @@ static void intel_dvo_pre_enable(struct intel_atomic_state *state,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
 		dvo_val |= DVO_VSYNC_ACTIVE_HIGH;
 
-	intel_de_write(dev_priv, dvo_srcdim_reg,
+	intel_de_write(i915, dvo_srcdim_reg,
 		       (adjusted_mode->crtc_hdisplay << DVO_SRCDIM_HORIZONTAL_SHIFT) | (adjusted_mode->crtc_vdisplay << DVO_SRCDIM_VERTICAL_SHIFT));
-	intel_de_write(dev_priv, dvo_reg, dvo_val);
+	intel_de_write(i915, dvo_reg, dvo_val);
 }
 
 static enum drm_connector_status
@@ -333,7 +332,7 @@ intel_dvo_detect(struct drm_connector *_connector, bool force)
 static int intel_dvo_get_modes(struct drm_connector *_connector)
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int num_modes;
 
 	/*
@@ -343,7 +342,7 @@ static int intel_dvo_get_modes(struct drm_connector *_connector)
 	 * that's not the case.
 	 */
 	num_modes = intel_ddc_get_modes(&connector->base,
-					intel_gmbus_get_adapter(dev_priv, GMBUS_PIN_DPC));
+					intel_gmbus_get_adapter(i915, GMBUS_PIN_DPC));
 	if (num_modes)
 		return num_modes;
 
@@ -478,14 +477,14 @@ static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
 	return ret;
 }
 
-static bool intel_dvo_probe(struct drm_i915_private *dev_priv,
+static bool intel_dvo_probe(struct drm_i915_private *i915,
 			    struct intel_dvo *intel_dvo)
 {
 	int i;
 
 	/* Now, try to find a controller */
 	for (i = 0; i < ARRAY_SIZE(intel_dvo_devices); i++) {
-		if (intel_dvo_init_dev(dev_priv, intel_dvo,
+		if (intel_dvo_init_dev(i915, intel_dvo,
 				       &intel_dvo_devices[i]))
 			return true;
 	}
@@ -493,7 +492,7 @@ static bool intel_dvo_probe(struct drm_i915_private *dev_priv,
 	return false;
 }
 
-void intel_dvo_init(struct drm_i915_private *dev_priv)
+void intel_dvo_init(struct drm_i915_private *i915)
 {
 	struct intel_connector *connector;
 	struct intel_encoder *encoder;
@@ -521,7 +520,7 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 	encoder->pre_enable = intel_dvo_pre_enable;
 	connector->get_hw_state = intel_dvo_connector_get_hw_state;
 
-	if (!intel_dvo_probe(dev_priv, intel_dvo)) {
+	if (!intel_dvo_probe(i915, intel_dvo)) {
 		kfree(intel_dvo);
 		intel_connector_free(connector);
 		return;
@@ -536,7 +535,7 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 		encoder->cloneable = BIT(INTEL_OUTPUT_ANALOG) |
 			BIT(INTEL_OUTPUT_DVO);
 
-	drm_encoder_init(&dev_priv->drm, &encoder->base,
+	drm_encoder_init(&i915->drm, &encoder->base,
 			 &intel_dvo_enc_funcs,
 			 intel_dvo_encoder_type(&intel_dvo->dev),
 			 "DVO %c", port_name(encoder->port));
@@ -545,7 +544,7 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 		connector->polled = DRM_CONNECTOR_POLL_CONNECT |
 			DRM_CONNECTOR_POLL_DISCONNECT;
 
-	drm_connector_init(&dev_priv->drm, &connector->base,
+	drm_connector_init(&i915->drm, &connector->base,
 			   &intel_dvo_connector_funcs,
 			   intel_dvo_connector_type(&intel_dvo->dev));
 
-- 
2.37.4

