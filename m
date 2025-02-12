Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1737A32BD2
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:37:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EE3910E914;
	Wed, 12 Feb 2025 16:37:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BClK5Ult";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5536010E914;
 Wed, 12 Feb 2025 16:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378220; x=1770914220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RkSp9/N9Rk+VKn2kHzdOdkza6ZoTlOvMs23EM0dNOwI=;
 b=BClK5UltQbM8FTHyZmVqz/Z2mfu3tYOlw0aryfdhPYurlo03sGgHBcbV
 T4n6QNmAAmjdZ8Wbk2UMovZyppZRbXtsRmxB3REqkWZQme0m8q2csZQV+
 xwDWsqqUAue/pwYqphPthBAOfHD81Fqt+hZ8GnHcAhGmQN65Ddf+nCwe0
 V9xqWWFoMrX8WBSpJSXfMCAYxJnXiejBIFLxOEQe46omUDd2Ipd9bR07y
 o7+4sPfUy5UZmR71yWL6dSjoy9mDMz6TAHOa79rZVIe+DQpOqDQUv3KnH
 Hgtk9reVCYlWoooyemIvIHoi/L3p4WsQq8GOEG8XZhBFCq9OT2o1gpHbL Q==;
X-CSE-ConnectionGUID: YD58rj1PSUOcM/IaQpPEJQ==
X-CSE-MsgGUID: BIh8Fz+zSJ274jC+NvTdIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="50693483"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="50693483"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:00 -0800
X-CSE-ConnectionGUID: +WQ3tB0PT/aKRTq+qP8q7A==
X-CSE-MsgGUID: YVD0Ak4aScOzG/cytcEhyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="143713421"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:36:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 02/14] drm/i915/hdmi: convert g4x_hdmi.[ch] to struct
 intel_display
Date: Wed, 12 Feb 2025 18:36:31 +0200
Message-Id: <4fbaaa4cdab8ec020e5b3fb2f615b3c244c9da2d.1739378095.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1739378095.git.jani.nikula@intel.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
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
pointer. Convert as much as possible of g4x_hdmi.[ch] to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c      | 139 +++++++++----------
 drivers/gpu/drm/i915/display/g4x_hdmi.h      |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c |  16 +--
 3 files changed, 79 insertions(+), 82 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 9e1ca7767392..6670cf101b9a 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -27,8 +27,8 @@
 static void intel_hdmi_prepare(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *crtc_state)
 {
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(encoder);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
@@ -54,13 +54,13 @@ static void intel_hdmi_prepare(struct intel_encoder *encoder,
 
 	if (HAS_PCH_CPT(dev_priv))
 		hdmi_val |= SDVO_PIPE_SEL_CPT(crtc->pipe);
-	else if (IS_CHERRYVIEW(dev_priv))
+	else if (display->platform.cherryview)
 		hdmi_val |= SDVO_PIPE_SEL_CHV(crtc->pipe);
 	else
 		hdmi_val |= SDVO_PIPE_SEL(crtc->pipe);
 
-	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, hdmi_val);
-	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
+	intel_de_write(display, intel_hdmi->hdmi_reg, hdmi_val);
+	intel_de_posting_read(display, intel_hdmi->hdmi_reg);
 }
 
 static bool intel_hdmi_get_hw_state(struct intel_encoder *encoder,
@@ -132,6 +132,7 @@ static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
 				   struct intel_crtc_state *crtc_state,
 				   struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
@@ -142,7 +143,7 @@ static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
 			return -EINVAL;
 	}
 
-	if (IS_G4X(i915))
+	if (display->platform.g4x)
 		crtc_state->has_hdmi_sink = g4x_compute_has_hdmi_sink(state, crtc);
 	else
 		crtc_state->has_hdmi_sink =
@@ -154,15 +155,15 @@ static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
 static void intel_hdmi_get_config(struct intel_encoder *encoder,
 				  struct intel_crtc_state *pipe_config)
 {
+	struct intel_display *display = to_intel_display(encoder);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	u32 tmp, flags = 0;
 	int dotclock;
 
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_HDMI);
 
-	tmp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
+	tmp = intel_de_read(display, intel_hdmi->hdmi_reg);
 
 	if (tmp & SDVO_HSYNC_ACTIVE_HIGH)
 		flags |= DRM_MODE_FLAG_PHSYNC;
@@ -222,33 +223,32 @@ static void intel_hdmi_get_config(struct intel_encoder *encoder,
 static void g4x_hdmi_enable_port(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *pipe_config)
 {
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 	u32 temp;
 
-	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
+	temp = intel_de_read(display, intel_hdmi->hdmi_reg);
 
 	temp |= SDVO_ENABLE;
 
-	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
-	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
+	intel_de_write(display, intel_hdmi->hdmi_reg, temp);
+	intel_de_posting_read(display, intel_hdmi->hdmi_reg);
 }
 
 static void g4x_hdmi_audio_enable(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_hdmi *hdmi = enc_to_intel_hdmi(encoder);
 
 	if (!crtc_state->has_audio)
 		return;
 
-	drm_WARN_ON(&i915->drm, !crtc_state->has_hdmi_sink);
+	drm_WARN_ON(display->drm, !crtc_state->has_hdmi_sink);
 
 	/* Enable audio presence detect */
-	intel_de_rmw(i915, hdmi->hdmi_reg, 0, HDMI_AUDIO_ENABLE);
+	intel_de_rmw(display, hdmi->hdmi_reg, 0, HDMI_AUDIO_ENABLE);
 
 	intel_audio_codec_enable(encoder, crtc_state, conn_state);
 }
@@ -257,7 +257,7 @@ static void g4x_hdmi_audio_disable(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *old_crtc_state,
 				   const struct drm_connector_state *old_conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_hdmi *hdmi = enc_to_intel_hdmi(encoder);
 
 	if (!old_crtc_state->has_audio)
@@ -266,7 +266,7 @@ static void g4x_hdmi_audio_disable(struct intel_encoder *encoder,
 	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
 
 	/* Disable audio presence detect */
-	intel_de_rmw(i915, hdmi->hdmi_reg, HDMI_AUDIO_ENABLE, 0);
+	intel_de_rmw(display, hdmi->hdmi_reg, HDMI_AUDIO_ENABLE, 0);
 }
 
 static void g4x_enable_hdmi(struct intel_atomic_state *state,
@@ -282,12 +282,11 @@ static void ibx_enable_hdmi(struct intel_atomic_state *state,
 			    const struct intel_crtc_state *pipe_config,
 			    const struct drm_connector_state *conn_state)
 {
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 	u32 temp;
 
-	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
+	temp = intel_de_read(display, intel_hdmi->hdmi_reg);
 
 	temp |= SDVO_ENABLE;
 
@@ -295,10 +294,10 @@ static void ibx_enable_hdmi(struct intel_atomic_state *state,
 	 * HW workaround, need to write this twice for issue
 	 * that may result in first write getting masked.
 	 */
-	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
-	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
-	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
-	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
+	intel_de_write(display, intel_hdmi->hdmi_reg, temp);
+	intel_de_posting_read(display, intel_hdmi->hdmi_reg);
+	intel_de_write(display, intel_hdmi->hdmi_reg, temp);
+	intel_de_posting_read(display, intel_hdmi->hdmi_reg);
 
 	/*
 	 * HW workaround, need to toggle enable bit off and on
@@ -309,18 +308,18 @@ static void ibx_enable_hdmi(struct intel_atomic_state *state,
 	 */
 	if (pipe_config->pipe_bpp > 24 &&
 	    pipe_config->pixel_multiplier > 1) {
-		intel_de_write(dev_priv, intel_hdmi->hdmi_reg,
+		intel_de_write(display, intel_hdmi->hdmi_reg,
 			       temp & ~SDVO_ENABLE);
-		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
+		intel_de_posting_read(display, intel_hdmi->hdmi_reg);
 
 		/*
 		 * HW workaround, need to write this twice for issue
 		 * that may result in first write getting masked.
 		 */
-		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
-		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
-		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
-		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
+		intel_de_write(display, intel_hdmi->hdmi_reg, temp);
+		intel_de_posting_read(display, intel_hdmi->hdmi_reg);
+		intel_de_write(display, intel_hdmi->hdmi_reg, temp);
+		intel_de_posting_read(display, intel_hdmi->hdmi_reg);
 	}
 }
 
@@ -329,14 +328,13 @@ static void cpt_enable_hdmi(struct intel_atomic_state *state,
 			    const struct intel_crtc_state *pipe_config,
 			    const struct drm_connector_state *conn_state)
 {
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 	enum pipe pipe = crtc->pipe;
 	u32 temp;
 
-	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
+	temp = intel_de_read(display, intel_hdmi->hdmi_reg);
 
 	temp |= SDVO_ENABLE;
 
@@ -351,24 +349,24 @@ static void cpt_enable_hdmi(struct intel_atomic_state *state,
 	 */
 
 	if (pipe_config->pipe_bpp > 24) {
-		intel_de_rmw(dev_priv, TRANS_CHICKEN1(pipe),
+		intel_de_rmw(display, TRANS_CHICKEN1(pipe),
 			     0, TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
 
 		temp &= ~SDVO_COLOR_FORMAT_MASK;
 		temp |= SDVO_COLOR_FORMAT_8bpc;
 	}
 
-	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
-	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
+	intel_de_write(display, intel_hdmi->hdmi_reg, temp);
+	intel_de_posting_read(display, intel_hdmi->hdmi_reg);
 
 	if (pipe_config->pipe_bpp > 24) {
 		temp &= ~SDVO_COLOR_FORMAT_MASK;
 		temp |= HDMI_COLOR_FORMAT_12bpc;
 
-		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
-		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
+		intel_de_write(display, intel_hdmi->hdmi_reg, temp);
+		intel_de_posting_read(display, intel_hdmi->hdmi_reg);
 
-		intel_de_rmw(dev_priv, TRANS_CHICKEN1(pipe),
+		intel_de_rmw(display, TRANS_CHICKEN1(pipe),
 			     TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE, 0);
 	}
 }
@@ -386,19 +384,18 @@ static void intel_disable_hdmi(struct intel_atomic_state *state,
 			       const struct drm_connector_state *old_conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 	struct intel_digital_port *dig_port =
 		hdmi_to_dig_port(intel_hdmi);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	u32 temp;
 
-	temp = intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
+	temp = intel_de_read(display, intel_hdmi->hdmi_reg);
 
 	temp &= ~SDVO_ENABLE;
-	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
-	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
+	intel_de_write(display, intel_hdmi->hdmi_reg, temp);
+	intel_de_posting_read(display, intel_hdmi->hdmi_reg);
 
 	/*
 	 * HW workaround for IBX, we need to move the port
@@ -419,14 +416,14 @@ static void intel_disable_hdmi(struct intel_atomic_state *state,
 		 * HW workaround, need to write this twice for issue
 		 * that may result in first write getting masked.
 		 */
-		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
-		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
-		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
-		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
+		intel_de_write(display, intel_hdmi->hdmi_reg, temp);
+		intel_de_posting_read(display, intel_hdmi->hdmi_reg);
+		intel_de_write(display, intel_hdmi->hdmi_reg, temp);
+		intel_de_posting_read(display, intel_hdmi->hdmi_reg);
 
 		temp &= ~SDVO_ENABLE;
-		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
-		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
+		intel_de_write(display, intel_hdmi->hdmi_reg, temp);
+		intel_de_posting_read(display, intel_hdmi->hdmi_reg);
 
 		intel_wait_for_vblank_if_active(display, PIPE_A);
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A, true);
@@ -544,8 +541,8 @@ static void chv_hdmi_post_disable(struct intel_atomic_state *state,
 				  const struct intel_crtc_state *old_crtc_state,
 				  const struct drm_connector_state *old_conn_state)
 {
-	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(encoder);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	vlv_dpio_get(dev_priv);
 
@@ -614,7 +611,7 @@ intel_hdmi_hotplug(struct intel_encoder *encoder,
 int g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
 				    struct drm_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_connector_list_iter conn_iter;
 	struct drm_connector *conn;
 	int ret;
@@ -623,7 +620,7 @@ int g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
 	if (ret)
 		return ret;
 
-	if (!IS_G4X(i915))
+	if (!display->platform.g4x)
 		return 0;
 
 	if (!intel_connector_needs_modeset(to_intel_atomic_state(state), connector))
@@ -637,7 +634,7 @@ int g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
 	 *
 	 * See also g4x_compute_has_hdmi_sink().
 	 */
-	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	drm_for_each_connector_iter(conn, &conn_iter) {
 		struct drm_connector_state *conn_state;
 		struct drm_crtc_state *crtc_state;
@@ -646,7 +643,7 @@ int g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
 		if (!connector_is_hdmi(conn))
 			continue;
 
-		drm_dbg_kms(&i915->drm, "Adding [CONNECTOR:%d:%s]\n",
+		drm_dbg_kms(display->drm, "Adding [CONNECTOR:%d:%s]\n",
 			    conn->base.id, conn->name);
 
 		conn_state = drm_atomic_get_connector_state(state, conn);
@@ -671,24 +668,24 @@ int g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
 	return ret;
 }
 
-static bool is_hdmi_port_valid(struct drm_i915_private *i915, enum port port)
+static bool is_hdmi_port_valid(struct intel_display *display, enum port port)
 {
-	if (IS_G4X(i915) || IS_VALLEYVIEW(i915))
+	if (display->platform.g4x || display->platform.valleyview)
 		return port == PORT_B || port == PORT_C;
 	else
 		return port == PORT_B || port == PORT_C || port == PORT_D;
 }
 
-static bool assert_hdmi_port_valid(struct drm_i915_private *i915, enum port port)
+static bool assert_hdmi_port_valid(struct intel_display *display, enum port port)
 {
-	return !drm_WARN(&i915->drm, !is_hdmi_port_valid(i915, port),
+	return !drm_WARN(display->drm, !is_hdmi_port_valid(display, port),
 			 "Platform does not support HDMI %c\n", port_name(port));
 }
 
-bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
+bool g4x_hdmi_init(struct intel_display *display,
 		   i915_reg_t hdmi_reg, enum port port)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	const struct intel_bios_encoder_data *devdata;
 	struct intel_digital_port *dig_port;
 	struct intel_encoder *intel_encoder;
@@ -697,14 +694,14 @@ bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	if (!assert_port_valid(dev_priv, port))
 		return false;
 
-	if (!assert_hdmi_port_valid(dev_priv, port))
+	if (!assert_hdmi_port_valid(display, port))
 		return false;
 
 	devdata = intel_bios_encoder_data_lookup(display, port);
 
 	/* FIXME bail? */
 	if (!devdata)
-		drm_dbg_kms(&dev_priv->drm, "No VBT child device for HDMI-%c\n",
+		drm_dbg_kms(display->drm, "No VBT child device for HDMI-%c\n",
 			    port_name(port));
 
 	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
@@ -723,7 +720,7 @@ bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
 
 	mutex_init(&dig_port->hdcp_mutex);
 
-	if (drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
+	if (drm_encoder_init(display->drm, &intel_encoder->base,
 			     &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
 			     "HDMI %c", port_name(port)))
 		goto err_encoder_init;
@@ -738,13 +735,13 @@ bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	}
 	intel_encoder->get_hw_state = intel_hdmi_get_hw_state;
 	intel_encoder->get_config = intel_hdmi_get_config;
-	if (IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.cherryview) {
 		intel_encoder->pre_pll_enable = chv_hdmi_pre_pll_enable;
 		intel_encoder->pre_enable = chv_hdmi_pre_enable;
 		intel_encoder->enable = vlv_enable_hdmi;
 		intel_encoder->post_disable = chv_hdmi_post_disable;
 		intel_encoder->post_pll_disable = chv_hdmi_post_pll_disable;
-	} else if (IS_VALLEYVIEW(dev_priv)) {
+	} else if (display->platform.valleyview) {
 		intel_encoder->pre_pll_enable = vlv_hdmi_pre_pll_enable;
 		intel_encoder->pre_enable = vlv_hdmi_pre_enable;
 		intel_encoder->enable = vlv_enable_hdmi;
@@ -765,7 +762,7 @@ bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	intel_encoder->type = INTEL_OUTPUT_HDMI;
 	intel_encoder->power_domain = intel_display_power_ddi_lanes_domain(display, port);
 	intel_encoder->port = port;
-	if (IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.cherryview) {
 		if (port == PORT_D)
 			intel_encoder->pipe_mask = BIT(PIPE_C);
 		else
@@ -780,7 +777,7 @@ bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	 * to work on real hardware. And since g4x can send infoframes to
 	 * only one port anyway, nothing is lost by allowing it.
 	 */
-	if (IS_G4X(dev_priv))
+	if (display->platform.g4x)
 		intel_encoder->cloneable |= BIT(INTEL_OUTPUT_HDMI);
 
 	dig_port->hdmi.hdmi_reg = hdmi_reg;
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.h b/drivers/gpu/drm/i915/display/g4x_hdmi.h
index a52e8986ec7a..039d2bdba06c 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.h
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.h
@@ -13,15 +13,15 @@
 enum port;
 struct drm_atomic_state;
 struct drm_connector;
-struct drm_i915_private;
+struct intel_display;
 
 #ifdef I915
-bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
+bool g4x_hdmi_init(struct intel_display *display,
 		   i915_reg_t hdmi_reg, enum port port);
 int g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
 				    struct drm_atomic_state *state);
 #else
-static inline bool g4x_hdmi_init(struct drm_i915_private *dev_priv,
+static inline bool g4x_hdmi_init(struct intel_display *display,
 				 i915_reg_t hdmi_reg, int port)
 {
 	return false;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e5ceedf56335..b8c57a5d26a0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8235,16 +8235,16 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 			/* PCH SDVOB multiplex with HDMIB */
 			found = intel_sdvo_init(dev_priv, PCH_SDVOB, PORT_B);
 			if (!found)
-				g4x_hdmi_init(dev_priv, PCH_HDMIB, PORT_B);
+				g4x_hdmi_init(display, PCH_HDMIB, PORT_B);
 			if (!found && (intel_de_read(dev_priv, PCH_DP_B) & DP_DETECTED))
 				g4x_dp_init(display, PCH_DP_B, PORT_B);
 		}
 
 		if (intel_de_read(dev_priv, PCH_HDMIC) & SDVO_DETECTED)
-			g4x_hdmi_init(dev_priv, PCH_HDMIC, PORT_C);
+			g4x_hdmi_init(display, PCH_HDMIC, PORT_C);
 
 		if (!dpd_is_edp && intel_de_read(dev_priv, PCH_HDMID) & SDVO_DETECTED)
-			g4x_hdmi_init(dev_priv, PCH_HDMID, PORT_D);
+			g4x_hdmi_init(display, PCH_HDMID, PORT_D);
 
 		if (intel_de_read(dev_priv, PCH_DP_C) & DP_DETECTED)
 			g4x_dp_init(display, PCH_DP_C, PORT_C);
@@ -8277,14 +8277,14 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		if (intel_de_read(dev_priv, VLV_DP_B) & DP_DETECTED || has_port)
 			has_edp &= g4x_dp_init(display, VLV_DP_B, PORT_B);
 		if ((intel_de_read(dev_priv, VLV_HDMIB) & SDVO_DETECTED || has_port) && !has_edp)
-			g4x_hdmi_init(dev_priv, VLV_HDMIB, PORT_B);
+			g4x_hdmi_init(display, VLV_HDMIB, PORT_B);
 
 		has_edp = intel_dp_is_port_edp(display, PORT_C);
 		has_port = intel_bios_is_port_present(display, PORT_C);
 		if (intel_de_read(dev_priv, VLV_DP_C) & DP_DETECTED || has_port)
 			has_edp &= g4x_dp_init(display, VLV_DP_C, PORT_C);
 		if ((intel_de_read(dev_priv, VLV_HDMIC) & SDVO_DETECTED || has_port) && !has_edp)
-			g4x_hdmi_init(dev_priv, VLV_HDMIC, PORT_C);
+			g4x_hdmi_init(display, VLV_HDMIC, PORT_C);
 
 		if (IS_CHERRYVIEW(dev_priv)) {
 			/*
@@ -8295,7 +8295,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 			if (intel_de_read(dev_priv, CHV_DP_D) & DP_DETECTED || has_port)
 				g4x_dp_init(display, CHV_DP_D, PORT_D);
 			if (intel_de_read(dev_priv, CHV_HDMID) & SDVO_DETECTED || has_port)
-				g4x_hdmi_init(dev_priv, CHV_HDMID, PORT_D);
+				g4x_hdmi_init(display, CHV_HDMID, PORT_D);
 		}
 
 		vlv_dsi_init(dev_priv);
@@ -8316,7 +8316,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 			if (!found && IS_G4X(dev_priv)) {
 				drm_dbg_kms(&dev_priv->drm,
 					    "probing HDMI on SDVOB\n");
-				g4x_hdmi_init(dev_priv, GEN4_HDMIB, PORT_B);
+				g4x_hdmi_init(display, GEN4_HDMIB, PORT_B);
 			}
 
 			if (!found && IS_G4X(dev_priv))
@@ -8335,7 +8335,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 			if (IS_G4X(dev_priv)) {
 				drm_dbg_kms(&dev_priv->drm,
 					    "probing HDMI on SDVOC\n");
-				g4x_hdmi_init(dev_priv, GEN4_HDMIC, PORT_C);
+				g4x_hdmi_init(display, GEN4_HDMIC, PORT_C);
 			}
 			if (IS_G4X(dev_priv))
 				g4x_dp_init(display, DP_C, PORT_C);
-- 
2.39.5

