Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C1385D337
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 10:17:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3CD210E411;
	Wed, 21 Feb 2024 09:17:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A8hgVfCc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5F1D10E42C
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 09:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708507035; x=1740043035;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tzRsBcR5c+XZ+KRY2JM4bg44TjXQrtT1sdOXgJjV23k=;
 b=A8hgVfCcAyiFeN5z1NxFiEwvGm38PYNfQXg8Fa5Nq5qxde7Lja5vkjg3
 spNfI6diDMveME5Odxp+MgCAD3+d/uTsOXT2leW/KU6UeQwzhJdnx95VI
 iTRG5hUKAYZzl+zFixPfAs0xd1dJsgDLSlYmiNSWP6u4U4RtHoDYBrRGh
 5wWrhp6eMdFXSIVcF709fgUcYopklk496d9ik6skHoYKhjviiRtQs2FVP
 9pG9bh2SsPX1dIEp4COUQtuwdEQQtqDyrYW9LgYID7DJPFslUKiuRM5cp
 fP9AjWjqY+xGvypqR0kHIPOMvZ940bwDK8aOq3f8kEqJIq0+oVylCJinU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2795804"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="2795804"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 01:17:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; d="scan'208";a="42554353"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 01:17:15 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [RFC v1 3/3] drm/i915: Apply border adjustments and enable scaler on
 the crtc
Date: Wed, 21 Feb 2024 00:47:56 -0800
Message-ID: <20240221085246.808287-4-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240221085246.808287-1-vivek.kasireddy@intel.com>
References: <20240221085246.808287-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

If the userspace has enabled the border property on a given
connector, then relevant adjustments to position and size are made
in addition to enabling the scaler on the associated crtc.

Similar to how the panel fitter is implemented, the visible area
of the crtc is tracked using a struct drm_rect object that is
part of the crtc_state. This object is added to the state checker
and support for hardware readout is also included.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 .../gpu/drm/i915/display/intel_connector.c    | 29 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_connector.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_display.c  | 17 ++++++++---
 .../drm/i915/display/intel_display_types.h    |  5 ++++
 drivers/gpu/drm/i915/display/intel_dp.c       |  9 ++++++
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  9 ++++++
 drivers/gpu/drm/i915/display/skl_scaler.c     | 20 ++++++++++---
 7 files changed, 83 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 05185db6635e..8c5dfbb98811 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -219,6 +219,35 @@ static const struct drm_prop_enum_list force_audio_names[] = {
 	{ HDMI_AUDIO_ON, "on" },
 };
 
+int intel_connector_apply_border(struct intel_crtc_state *crtc_state,
+				 void *border_data)
+{
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	int width = adjusted_mode->crtc_hdisplay;
+	int height = adjusted_mode->crtc_vdisplay;
+	struct drm_rect *border = border_data;
+	int left = border->x1;
+	int top = border->y1;
+	int right = border->x2;
+	int bottom = border->y2;
+
+	if (left < 0 || top < 0 || right < 0 || bottom < 0)
+		return -EINVAL;
+
+	if (left + right >= width || top + bottom >= height)
+		return -EINVAL;
+
+	width -= (left + right);
+	height -= (top + bottom);
+
+	drm_rect_init(&crtc_state->border.dst,
+		      left, top, width, height);
+	crtc_state->border.enabled = true;
+
+	return 0;
+}
+
 void
 intel_attach_force_audio_property(struct drm_connector *connector)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu/drm/i915/display/intel_connector.h
index ab88b57d475b..93106d855452 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.h
+++ b/drivers/gpu/drm/i915/display/intel_connector.h
@@ -26,6 +26,8 @@ bool intel_connector_get_hw_state(struct intel_connector *connector);
 enum pipe intel_connector_get_pipe(struct intel_connector *connector);
 int intel_connector_update_modes(struct drm_connector *connector,
 				 const struct drm_edid *drm_edid);
+int intel_connector_apply_border(struct intel_crtc_state *crtc_state,
+				 void *border_data);
 int intel_ddc_get_modes(struct drm_connector *c, struct i2c_adapter *ddc);
 void intel_attach_force_audio_property(struct drm_connector *connector);
 void intel_attach_broadcast_rgb_property(struct drm_connector *connector);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0ea62c278948..af615e576fe7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1679,9 +1679,12 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
 
 	if (DISPLAY_VER(dev_priv) >= 9) {
-		const struct drm_rect *dst = &new_crtc_state->pch_pfit.dst;
+		const struct drm_rect *dst = new_crtc_state->pch_pfit.enabled ?
+					     &new_crtc_state->pch_pfit.dst :
+					     &new_crtc_state->border.dst;
 
-		if (new_crtc_state->pch_pfit.enabled)
+		if (new_crtc_state->pch_pfit.enabled ||
+		    new_crtc_state->border.enabled)
 			skl_program_crtc_scaler(new_crtc_state, dst);
 	} else {
 		ilk_pfit_enable(new_crtc_state);
@@ -5196,6 +5199,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_BOOL(pch_pfit.enabled);
 		PIPE_CONF_CHECK_RECT(pch_pfit.dst);
 
+		PIPE_CONF_CHECK_BOOL(border.enabled);
+		PIPE_CONF_CHECK_RECT(border.dst);
+
 		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
 		PIPE_CONF_CHECK_I(pixel_rate);
 
@@ -6564,9 +6570,12 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 
 	/* on skylake this is done by detaching scalers */
 	if (DISPLAY_VER(dev_priv) >= 9) {
-		const struct drm_rect *dst = &new_crtc_state->pch_pfit.dst;
+		const struct drm_rect *dst = new_crtc_state->pch_pfit.enabled ?
+					     &new_crtc_state->pch_pfit.dst :
+					     &new_crtc_state->border.dst;
 
-		if (new_crtc_state->pch_pfit.enabled)
+		if (new_crtc_state->pch_pfit.enabled ||
+		    new_crtc_state->border.enabled)
 			skl_program_crtc_scaler(new_crtc_state, dst);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		if (new_crtc_state->pch_pfit.enabled)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 399ed0867c20..6e46e585a0da 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1419,6 +1419,11 @@ struct intel_crtc_state {
 		u8 pixel_overlap;
 	} splitter;
 
+	struct {
+		struct drm_rect dst;
+		bool enabled;
+	} border;
+
 	/* for loading single buffered registers during vblank */
 	struct drm_vblank_work vblank_work;
 };
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 065e685ada84..0f552537d42c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2842,6 +2842,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 			struct intel_crtc_state *pipe_config,
 			struct drm_connector_state *conn_state)
 {
+	const struct intel_digital_connector_state *intel_conn_state =
+		to_intel_digital_connector_state(conn_state);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -2889,6 +2891,13 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 			return ret;
 	}
 
+	if (intel_conn_state->border) {
+		ret = intel_connector_apply_border(pipe_config,
+					intel_conn_state->border->data);
+		if (ret)
+			return ret;
+	}
+
 	pipe_config->limited_color_range =
 		intel_dp_limited_color_range(pipe_config, conn_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index ac736d708c22..7428ff5d658a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2285,6 +2285,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
 			      struct drm_connector_state *conn_state)
 {
+	const struct intel_digital_connector_state *intel_conn_state =
+		to_intel_digital_connector_state(conn_state);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct drm_connector *connector = conn_state->connector;
@@ -2330,6 +2332,13 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 			return ret;
 	}
 
+	if (intel_conn_state->border) {
+		ret = intel_connector_apply_border(pipe_config,
+					intel_conn_state->border->data);
+		if (ret)
+			return ret;
+	}
+
 	pipe_config->limited_color_range =
 		intel_hdmi_limited_color_range(pipe_config, conn_state);
 
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 67a87cc0411a..a0a26e0b4e98 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -237,11 +237,16 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
 {
 	const struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
+	bool need_scaler = crtc_state->pch_pfit.enabled ||
+			   crtc_state->border.enabled;
 	int width, height;
 
 	if (crtc_state->pch_pfit.enabled) {
 		width = drm_rect_width(&crtc_state->pch_pfit.dst);
 		height = drm_rect_height(&crtc_state->pch_pfit.dst);
+	} else if (crtc_state->border.enabled) {
+		width = drm_rect_width(&crtc_state->border.dst);
+		height = drm_rect_height(&crtc_state->border.dst);
 	} else {
 		width = pipe_mode->crtc_hdisplay;
 		height = pipe_mode->crtc_vdisplay;
@@ -251,8 +256,7 @@ int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
 				 &crtc_state->scaler_state.scaler_id,
 				 drm_rect_width(&crtc_state->pipe_src),
 				 drm_rect_height(&crtc_state->pipe_src),
-				 width, height, NULL, 0,
-				 crtc_state->pch_pfit.enabled);
+				 width, height, NULL, 0, need_scaler);
 }
 
 /**
@@ -859,6 +863,7 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
+	struct drm_rect *dst;
 	int id = -1;
 	int i;
 
@@ -871,12 +876,19 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 			continue;
 
 		id = i;
-		crtc_state->pch_pfit.enabled = true;
 
 		pos = intel_de_read(dev_priv, SKL_PS_WIN_POS(crtc->pipe, i));
 		size = intel_de_read(dev_priv, SKL_PS_WIN_SZ(crtc->pipe, i));
 
-		drm_rect_init(&crtc_state->pch_pfit.dst,
+		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
+			crtc_state->pch_pfit.enabled = true;
+			dst = &crtc_state->pch_pfit.dst;
+		} else {
+			crtc_state->border.enabled = true;
+			dst = &crtc_state->border.dst;
+		}
+
+		drm_rect_init(dst,
 			      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
 			      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
 			      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
-- 
2.43.0

