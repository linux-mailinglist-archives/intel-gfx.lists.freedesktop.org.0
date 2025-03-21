Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 781C3A6B923
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 11:53:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F00B010E790;
	Fri, 21 Mar 2025 10:53:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IrHSLcDX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FD5110E78D;
 Fri, 21 Mar 2025 10:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742554407; x=1774090407;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RLovS6LKSwp1y69Ot55UUkeFD/Cx94aiCJgFIUYyMik=;
 b=IrHSLcDX05kiDYZXQ/o/UZJyt07qAwBhsD7LyoT0UkGqPGkESze7CC+u
 pOpH7mO5e8nkuzJ7tKZX3nwX2tLA/u2GgnsxWs/STfwXJplL36ia7zoCz
 Dk468wQAC8Au5M8JZ51geARfcqBMc4tyUEq50wG4sHgCIT+bZRCY3Pevr
 OJcsuOUst0HbXnqHIhKGOjd8B+nOcdmLUBFdnoVHZWSdpJzHXS/qU9IkX
 LzWZFizpGscDtXU5EVSPCT1svkjunEtYmwp8OT5/kWEj43a7YQsV/ZrfQ
 kpyT8642prUP/M+adBzruSsEp/PNiAQaW/GfQ8xf1H71TF4mQghT/rAgh A==;
X-CSE-ConnectionGUID: r298a75gS7i7pFJRjSUGmQ==
X-CSE-MsgGUID: pWxw25jYSQSxGzHl50CteQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="54483913"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="54483913"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:27 -0700
X-CSE-ConnectionGUID: mJsK5YpeRjCgZZSkTbTllg==
X-CSE-MsgGUID: U8hbhjw9TXuW1e+5/PSPOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="123830041"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 06/12] drm/i915/dvo: convert intel_dvo.[ch] to struct
 intel_display
Date: Fri, 21 Mar 2025 12:52:50 +0200
Message-Id: <a78b5c8d0030957523eb467401b06e2d290cf14d.1742554320.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742554320.git.jani.nikula@intel.com>
References: <cover.1742554320.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Going forward, struct intel_display is the main display device data
pointer. Convert intel_dvo.[ch] to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c     | 63 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_dvo.h     |  6 +-
 3 files changed, 34 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 222bc01d4682..d5ac5a7061ce 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7806,7 +7806,7 @@ void intel_setup_outputs(struct intel_display *display)
 			intel_lvds_init(dev_priv);
 
 		intel_crt_init(display);
-		intel_dvo_init(dev_priv);
+		intel_dvo_init(display);
 	}
 
 	for_each_intel_encoder(display->drm, encoder) {
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index c16fb34b737d..602e76ddf788 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -33,8 +33,8 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_connector.h"
 #include "intel_de.h"
 #include "intel_display_driver.h"
@@ -129,13 +129,13 @@ static struct intel_dvo *intel_attached_dvo(struct intel_connector *connector)
 
 static bool intel_dvo_connector_get_hw_state(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_encoder *encoder = intel_attached_encoder(connector);
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 	enum port port = encoder->port;
 	u32 tmp;
 
-	tmp = intel_de_read(i915, DVO(port));
+	tmp = intel_de_read(display, DVO(port));
 
 	if (!(tmp & DVO_ENABLE))
 		return false;
@@ -146,11 +146,11 @@ static bool intel_dvo_connector_get_hw_state(struct intel_connector *connector)
 static bool intel_dvo_get_hw_state(struct intel_encoder *encoder,
 				   enum pipe *pipe)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 	u32 tmp;
 
-	tmp = intel_de_read(i915, DVO(port));
+	tmp = intel_de_read(display, DVO(port));
 
 	*pipe = REG_FIELD_GET(DVO_PIPE_SEL_MASK, tmp);
 
@@ -160,13 +160,13 @@ static bool intel_dvo_get_hw_state(struct intel_encoder *encoder,
 static void intel_dvo_get_config(struct intel_encoder *encoder,
 				 struct intel_crtc_state *pipe_config)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 	u32 tmp, flags = 0;
 
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_DVO);
 
-	tmp = intel_de_read(i915, DVO(port));
+	tmp = intel_de_read(display, DVO(port));
 	if (tmp & DVO_HSYNC_ACTIVE_HIGH)
 		flags |= DRM_MODE_FLAG_PHSYNC;
 	else
@@ -186,14 +186,14 @@ static void intel_disable_dvo(struct intel_atomic_state *state,
 			      const struct intel_crtc_state *old_crtc_state,
 			      const struct drm_connector_state *old_conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 	enum port port = encoder->port;
 
 	intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, false);
 
-	intel_de_rmw(i915, DVO(port), DVO_ENABLE, 0);
-	intel_de_posting_read(i915, DVO(port));
+	intel_de_rmw(display, DVO(port), DVO_ENABLE, 0);
+	intel_de_posting_read(display, DVO(port));
 }
 
 static void intel_enable_dvo(struct intel_atomic_state *state,
@@ -201,7 +201,7 @@ static void intel_enable_dvo(struct intel_atomic_state *state,
 			     const struct intel_crtc_state *pipe_config,
 			     const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 	enum port port = encoder->port;
 
@@ -209,8 +209,8 @@ static void intel_enable_dvo(struct intel_atomic_state *state,
 					 &pipe_config->hw.mode,
 					 &pipe_config->hw.adjusted_mode);
 
-	intel_de_rmw(i915, DVO(port), 0, DVO_ENABLE);
-	intel_de_posting_read(i915, DVO(port));
+	intel_de_rmw(display, DVO(port), 0, DVO_ENABLE);
+	intel_de_posting_read(display, DVO(port));
 
 	intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, true);
 }
@@ -288,7 +288,7 @@ static void intel_dvo_pre_enable(struct intel_atomic_state *state,
 				 const struct intel_crtc_state *pipe_config,
 				 const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	enum port port = encoder->port;
@@ -296,7 +296,7 @@ static void intel_dvo_pre_enable(struct intel_atomic_state *state,
 	u32 dvo_val;
 
 	/* Save the active data order, since I don't know what it should be set to. */
-	dvo_val = intel_de_read(i915, DVO(port)) &
+	dvo_val = intel_de_read(display, DVO(port)) &
 		  (DVO_DEDICATED_INT_ENABLE |
 		   DVO_PRESERVE_MASK | DVO_ACT_DATA_ORDER_MASK);
 	dvo_val |= DVO_DATA_ORDER_FP | DVO_BORDER_ENABLE |
@@ -309,10 +309,10 @@ static void intel_dvo_pre_enable(struct intel_atomic_state *state,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
 		dvo_val |= DVO_VSYNC_ACTIVE_HIGH;
 
-	intel_de_write(i915, DVO_SRCDIM(port),
+	intel_de_write(display, DVO_SRCDIM(port),
 		       DVO_SRCDIM_HORIZONTAL(adjusted_mode->crtc_hdisplay) |
 		       DVO_SRCDIM_VERTICAL(adjusted_mode->crtc_vdisplay));
-	intel_de_write(i915, DVO(port), dvo_val);
+	intel_de_write(display, DVO(port), dvo_val);
 }
 
 static enum drm_connector_status
@@ -320,10 +320,9 @@ intel_dvo_detect(struct drm_connector *_connector, bool force)
 {
 	struct intel_display *display = to_intel_display(_connector->dev);
 	struct intel_connector *connector = to_intel_connector(_connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.base.id, connector->base.name);
 
 	if (!intel_display_device_enabled(display))
@@ -414,11 +413,10 @@ static int intel_dvo_connector_type(const struct intel_dvo_device *dvo)
 	}
 }
 
-static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
+static bool intel_dvo_init_dev(struct intel_display *display,
 			       struct intel_dvo *intel_dvo,
 			       const struct intel_dvo_device *dvo)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct i2c_adapter *i2c;
 	u32 dpll[I915_MAX_PIPES];
 	enum pipe pipe;
@@ -458,15 +456,15 @@ static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
 	 * the clock enabled before we attempt to initialize
 	 * the device.
 	 */
-	for_each_pipe(dev_priv, pipe)
-		dpll[pipe] = intel_de_rmw(dev_priv, DPLL(dev_priv, pipe), 0,
+	for_each_pipe(display, pipe)
+		dpll[pipe] = intel_de_rmw(display, DPLL(display, pipe), 0,
 					  DPLL_DVO_2X_MODE);
 
 	ret = dvo->dev_ops->init(&intel_dvo->dev, i2c);
 
 	/* restore the DVO 2x clock state to original */
-	for_each_pipe(dev_priv, pipe) {
-		intel_de_write(dev_priv, DPLL(dev_priv, pipe), dpll[pipe]);
+	for_each_pipe(display, pipe) {
+		intel_de_write(display, DPLL(display, pipe), dpll[pipe]);
 	}
 
 	intel_gmbus_force_bit(i2c, false);
@@ -474,14 +472,14 @@ static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
 	return ret;
 }
 
-static bool intel_dvo_probe(struct drm_i915_private *i915,
+static bool intel_dvo_probe(struct intel_display *display,
 			    struct intel_dvo *intel_dvo)
 {
 	int i;
 
 	/* Now, try to find a controller */
 	for (i = 0; i < ARRAY_SIZE(intel_dvo_devices); i++) {
-		if (intel_dvo_init_dev(i915, intel_dvo,
+		if (intel_dvo_init_dev(display, intel_dvo,
 				       &intel_dvo_devices[i]))
 			return true;
 	}
@@ -489,9 +487,8 @@ static bool intel_dvo_probe(struct drm_i915_private *i915,
 	return false;
 }
 
-void intel_dvo_init(struct drm_i915_private *i915)
+void intel_dvo_init(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
 	struct intel_connector *connector;
 	struct intel_encoder *encoder;
 	struct intel_dvo *intel_dvo;
@@ -518,7 +515,7 @@ void intel_dvo_init(struct drm_i915_private *i915)
 	encoder->pre_enable = intel_dvo_pre_enable;
 	connector->get_hw_state = intel_dvo_connector_get_hw_state;
 
-	if (!intel_dvo_probe(i915, intel_dvo)) {
+	if (!intel_dvo_probe(display, intel_dvo)) {
 		kfree(intel_dvo);
 		intel_connector_free(connector);
 		return;
@@ -535,12 +532,12 @@ void intel_dvo_init(struct drm_i915_private *i915)
 		encoder->cloneable = BIT(INTEL_OUTPUT_ANALOG) |
 			BIT(INTEL_OUTPUT_DVO);
 
-	drm_encoder_init(&i915->drm, &encoder->base,
+	drm_encoder_init(display->drm, &encoder->base,
 			 &intel_dvo_enc_funcs,
 			 intel_dvo_encoder_type(&intel_dvo->dev),
 			 "DVO %c", port_name(encoder->port));
 
-	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] detected %s\n",
+	drm_dbg_kms(display->drm, "[ENCODER:%d:%s] detected %s\n",
 		    encoder->base.base.id, encoder->base.name,
 		    intel_dvo->dev.name);
 
@@ -549,7 +546,7 @@ void intel_dvo_init(struct drm_i915_private *i915)
 			DRM_CONNECTOR_POLL_DISCONNECT;
 	connector->base.polled = connector->polled;
 
-	drm_connector_init_with_ddc(&i915->drm, &connector->base,
+	drm_connector_init_with_ddc(display->drm, &connector->base,
 				    &intel_dvo_connector_funcs,
 				    intel_dvo_connector_type(&intel_dvo->dev),
 				    intel_gmbus_get_adapter(display, GMBUS_PIN_DPC));
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.h b/drivers/gpu/drm/i915/display/intel_dvo.h
index bf7a356422ab..83776552fc87 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.h
+++ b/drivers/gpu/drm/i915/display/intel_dvo.h
@@ -6,12 +6,12 @@
 #ifndef __INTEL_DVO_H__
 #define __INTEL_DVO_H__
 
-struct drm_i915_private;
+struct intel_display;
 
 #ifdef I915
-void intel_dvo_init(struct drm_i915_private *dev_priv);
+void intel_dvo_init(struct intel_display *display);
 #else
-static inline void intel_dvo_init(struct drm_i915_private *dev_priv)
+static inline void intel_dvo_init(struct intel_display *display)
 {
 }
 #endif
-- 
2.39.5

