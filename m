Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 853F4965E5F
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 12:16:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A7CB10E9B5;
	Fri, 30 Aug 2024 10:16:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mnvIqiKa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C89810E9A9;
 Fri, 30 Aug 2024 10:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725012986; x=1756548986;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GyqrOnNPTTO0TAcbW5HPxWesNeVj+Z7lXe6B+07/Be4=;
 b=mnvIqiKadlqv5b5dJwM35MaUsBEeYqj0nU4qfXPNppYaCwjUfHcrAcvS
 dWZAL0vFsMtLgiX3zVR/x5TFIBsRKGYga6YLXujsBxHt2w9c7L7niijH7
 ySgKGqY300SgwyoxbHFxhCmxrZoIS4MrqcCdTHsje3tS23tAQl0mIWylB
 R2/FWlIqn7VqffTZrr+WY7nqRPO9quRbw+cT/fHBPhNWeQgFQrzNdukdo
 94fAGsiIt8oLS21Z/d8JaaWODbRLS+EV0Hncmvkymch5HsHyjD/ZBMM8d
 b2dg3q2v7pBri9nsc4AeYBDs3+VL6vabOHmiW46R6RAY0ItPnfUi4zVEn w==;
X-CSE-ConnectionGUID: Qtb9B21XQDqqKE9eNJf/iQ==
X-CSE-MsgGUID: 9ebWZRFhQsSMDWFDKD1DIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23164429"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="23164429"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:06 -0700
X-CSE-ConnectionGUID: 2t+mYFVDSIux6gBj09nHHQ==
X-CSE-MsgGUID: zALXUlDETcSnedwB9NTW9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68252450"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.88])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 02/11] drm/i915/hdmi: convert to struct intel_display
Date: Fri, 30 Aug 2024 13:15:39 +0300
Message-Id: <fa74b67935eb7e8084f57688a9683a36cb1d1a4c.1725012870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725012870.git.jani.nikula@intel.com>
References: <cover.1725012870.git.jani.nikula@intel.com>
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

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_hdmi.[ch] to struct intel_display. Remove intel_hdmi_to_i915().

Some stragglers are left behind where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 500 +++++++++++-----------
 drivers/gpu/drm/i915/display/intel_hdmi.h |   1 -
 2 files changed, 258 insertions(+), 243 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 19498ee455fa..cd9ee171e0df 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -60,30 +60,25 @@
 #include "intel_panel.h"
 #include "intel_snps_phy.h"
 
-inline struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
-{
-	return to_i915(hdmi_to_dig_port(intel_hdmi)->base.base.dev);
-}
-
 static void
 assert_hdmi_port_disabled(struct intel_hdmi *intel_hdmi)
 {
-	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(intel_hdmi);
+	struct intel_display *display = to_intel_display(intel_hdmi);
 	u32 enabled_bits;
 
-	enabled_bits = HAS_DDI(dev_priv) ? DDI_BUF_CTL_ENABLE : SDVO_ENABLE;
+	enabled_bits = HAS_DDI(display) ? DDI_BUF_CTL_ENABLE : SDVO_ENABLE;
 
-	drm_WARN(&dev_priv->drm,
-		 intel_de_read(dev_priv, intel_hdmi->hdmi_reg) & enabled_bits,
+	drm_WARN(display->drm,
+		 intel_de_read(display, intel_hdmi->hdmi_reg) & enabled_bits,
 		 "HDMI port enabled, expecting disabled\n");
 }
 
 static void
-assert_hdmi_transcoder_func_disabled(struct drm_i915_private *dev_priv,
+assert_hdmi_transcoder_func_disabled(struct intel_display *display,
 				     enum transcoder cpu_transcoder)
 {
-	drm_WARN(&dev_priv->drm,
-		 intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder)) &
+	drm_WARN(display->drm,
+		 intel_de_read(display, TRANS_DDI_FUNC_CTL(display, cpu_transcoder)) &
 		 TRANS_DDI_FUNC_ENABLE,
 		 "HDMI transcoder function enabled, expecting disabled\n");
 }
@@ -158,35 +153,35 @@ static u32 hsw_infoframe_enable(unsigned int type)
 }
 
 static i915_reg_t
-hsw_dip_data_reg(struct drm_i915_private *dev_priv,
+hsw_dip_data_reg(struct intel_display *display,
 		 enum transcoder cpu_transcoder,
 		 unsigned int type,
 		 int i)
 {
 	switch (type) {
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
-		return HSW_TVIDEO_DIP_GMP_DATA(dev_priv, cpu_transcoder, i);
+		return HSW_TVIDEO_DIP_GMP_DATA(display, cpu_transcoder, i);
 	case DP_SDP_VSC:
-		return HSW_TVIDEO_DIP_VSC_DATA(dev_priv, cpu_transcoder, i);
+		return HSW_TVIDEO_DIP_VSC_DATA(display, cpu_transcoder, i);
 	case DP_SDP_ADAPTIVE_SYNC:
-		return ADL_TVIDEO_DIP_AS_SDP_DATA(dev_priv, cpu_transcoder, i);
+		return ADL_TVIDEO_DIP_AS_SDP_DATA(display, cpu_transcoder, i);
 	case DP_SDP_PPS:
-		return ICL_VIDEO_DIP_PPS_DATA(dev_priv, cpu_transcoder, i);
+		return ICL_VIDEO_DIP_PPS_DATA(display, cpu_transcoder, i);
 	case HDMI_INFOFRAME_TYPE_AVI:
-		return HSW_TVIDEO_DIP_AVI_DATA(dev_priv, cpu_transcoder, i);
+		return HSW_TVIDEO_DIP_AVI_DATA(display, cpu_transcoder, i);
 	case HDMI_INFOFRAME_TYPE_SPD:
-		return HSW_TVIDEO_DIP_SPD_DATA(dev_priv, cpu_transcoder, i);
+		return HSW_TVIDEO_DIP_SPD_DATA(display, cpu_transcoder, i);
 	case HDMI_INFOFRAME_TYPE_VENDOR:
-		return HSW_TVIDEO_DIP_VS_DATA(dev_priv, cpu_transcoder, i);
+		return HSW_TVIDEO_DIP_VS_DATA(display, cpu_transcoder, i);
 	case HDMI_INFOFRAME_TYPE_DRM:
-		return GLK_TVIDEO_DIP_DRM_DATA(dev_priv, cpu_transcoder, i);
+		return GLK_TVIDEO_DIP_DRM_DATA(display, cpu_transcoder, i);
 	default:
 		MISSING_CASE(type);
 		return INVALID_MMIO_REG;
 	}
 }
 
-static int hsw_dip_data_size(struct drm_i915_private *dev_priv,
+static int hsw_dip_data_size(struct intel_display *display,
 			     unsigned int type)
 {
 	switch (type) {
@@ -197,7 +192,7 @@ static int hsw_dip_data_size(struct drm_i915_private *dev_priv,
 	case DP_SDP_PPS:
 		return VIDEO_DIP_PPS_DATA_SIZE;
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
-		if (DISPLAY_VER(dev_priv) >= 11)
+		if (DISPLAY_VER(display) >= 11)
 			return VIDEO_DIP_GMP_DATA_SIZE;
 		else
 			return VIDEO_DIP_DATA_SIZE;
@@ -211,12 +206,12 @@ static void g4x_write_infoframe(struct intel_encoder *encoder,
 				unsigned int type,
 				const void *frame, ssize_t len)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	const u32 *data = frame;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 val = intel_de_read(dev_priv, VIDEO_DIP_CTL);
+	u32 val = intel_de_read(display, VIDEO_DIP_CTL);
 	int i;
 
-	drm_WARN(&dev_priv->drm, !(val & VIDEO_DIP_ENABLE),
+	drm_WARN(display->drm, !(val & VIDEO_DIP_ENABLE),
 		 "Writing DIP with CTL reg disabled\n");
 
 	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
@@ -224,22 +219,22 @@ static void g4x_write_infoframe(struct intel_encoder *encoder,
 
 	val &= ~g4x_infoframe_enable(type);
 
-	intel_de_write(dev_priv, VIDEO_DIP_CTL, val);
+	intel_de_write(display, VIDEO_DIP_CTL, val);
 
 	for (i = 0; i < len; i += 4) {
-		intel_de_write(dev_priv, VIDEO_DIP_DATA, *data);
+		intel_de_write(display, VIDEO_DIP_DATA, *data);
 		data++;
 	}
 	/* Write every possible data byte to force correct ECC calculation. */
 	for (; i < VIDEO_DIP_DATA_SIZE; i += 4)
-		intel_de_write(dev_priv, VIDEO_DIP_DATA, 0);
+		intel_de_write(display, VIDEO_DIP_DATA, 0);
 
 	val |= g4x_infoframe_enable(type);
 	val &= ~VIDEO_DIP_FREQ_MASK;
 	val |= VIDEO_DIP_FREQ_VSYNC;
 
-	intel_de_write(dev_priv, VIDEO_DIP_CTL, val);
-	intel_de_posting_read(dev_priv, VIDEO_DIP_CTL);
+	intel_de_write(display, VIDEO_DIP_CTL, val);
+	intel_de_posting_read(display, VIDEO_DIP_CTL);
 }
 
 static void g4x_read_infoframe(struct intel_encoder *encoder,
@@ -247,22 +242,22 @@ static void g4x_read_infoframe(struct intel_encoder *encoder,
 			       unsigned int type,
 			       void *frame, ssize_t len)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	u32 *data = frame;
 	int i;
 
-	intel_de_rmw(dev_priv, VIDEO_DIP_CTL,
+	intel_de_rmw(display, VIDEO_DIP_CTL,
 		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
 
 	for (i = 0; i < len; i += 4)
-		*data++ = intel_de_read(dev_priv, VIDEO_DIP_DATA);
+		*data++ = intel_de_read(display, VIDEO_DIP_DATA);
 }
 
 static u32 g4x_infoframes_enabled(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *pipe_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 val = intel_de_read(dev_priv, VIDEO_DIP_CTL);
+	struct intel_display *display = to_intel_display(encoder);
+	u32 val = intel_de_read(display, VIDEO_DIP_CTL);
 
 	if ((val & VIDEO_DIP_ENABLE) == 0)
 		return 0;
@@ -279,14 +274,14 @@ static void ibx_write_infoframe(struct intel_encoder *encoder,
 				unsigned int type,
 				const void *frame, ssize_t len)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	const u32 *data = frame;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	i915_reg_t reg = TVIDEO_DIP_CTL(crtc->pipe);
-	u32 val = intel_de_read(dev_priv, reg);
+	u32 val = intel_de_read(display, reg);
 	int i;
 
-	drm_WARN(&dev_priv->drm, !(val & VIDEO_DIP_ENABLE),
+	drm_WARN(display->drm, !(val & VIDEO_DIP_ENABLE),
 		 "Writing DIP with CTL reg disabled\n");
 
 	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
@@ -294,23 +289,23 @@ static void ibx_write_infoframe(struct intel_encoder *encoder,
 
 	val &= ~g4x_infoframe_enable(type);
 
-	intel_de_write(dev_priv, reg, val);
+	intel_de_write(display, reg, val);
 
 	for (i = 0; i < len; i += 4) {
-		intel_de_write(dev_priv, TVIDEO_DIP_DATA(crtc->pipe),
+		intel_de_write(display, TVIDEO_DIP_DATA(crtc->pipe),
 			       *data);
 		data++;
 	}
 	/* Write every possible data byte to force correct ECC calculation. */
 	for (; i < VIDEO_DIP_DATA_SIZE; i += 4)
-		intel_de_write(dev_priv, TVIDEO_DIP_DATA(crtc->pipe), 0);
+		intel_de_write(display, TVIDEO_DIP_DATA(crtc->pipe), 0);
 
 	val |= g4x_infoframe_enable(type);
 	val &= ~VIDEO_DIP_FREQ_MASK;
 	val |= VIDEO_DIP_FREQ_VSYNC;
 
-	intel_de_write(dev_priv, reg, val);
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_write(display, reg, val);
+	intel_de_posting_read(display, reg);
 }
 
 static void ibx_read_infoframe(struct intel_encoder *encoder,
@@ -318,25 +313,25 @@ static void ibx_read_infoframe(struct intel_encoder *encoder,
 			       unsigned int type,
 			       void *frame, ssize_t len)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	u32 *data = frame;
 	int i;
 
-	intel_de_rmw(dev_priv, TVIDEO_DIP_CTL(crtc->pipe),
+	intel_de_rmw(display, TVIDEO_DIP_CTL(crtc->pipe),
 		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
 
 	for (i = 0; i < len; i += 4)
-		*data++ = intel_de_read(dev_priv, TVIDEO_DIP_DATA(crtc->pipe));
+		*data++ = intel_de_read(display, TVIDEO_DIP_DATA(crtc->pipe));
 }
 
 static u32 ibx_infoframes_enabled(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *pipe_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum pipe pipe = to_intel_crtc(pipe_config->uapi.crtc)->pipe;
 	i915_reg_t reg = TVIDEO_DIP_CTL(pipe);
-	u32 val = intel_de_read(dev_priv, reg);
+	u32 val = intel_de_read(display, reg);
 
 	if ((val & VIDEO_DIP_ENABLE) == 0)
 		return 0;
@@ -354,14 +349,14 @@ static void cpt_write_infoframe(struct intel_encoder *encoder,
 				unsigned int type,
 				const void *frame, ssize_t len)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	const u32 *data = frame;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	i915_reg_t reg = TVIDEO_DIP_CTL(crtc->pipe);
-	u32 val = intel_de_read(dev_priv, reg);
+	u32 val = intel_de_read(display, reg);
 	int i;
 
-	drm_WARN(&dev_priv->drm, !(val & VIDEO_DIP_ENABLE),
+	drm_WARN(display->drm, !(val & VIDEO_DIP_ENABLE),
 		 "Writing DIP with CTL reg disabled\n");
 
 	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
@@ -372,23 +367,23 @@ static void cpt_write_infoframe(struct intel_encoder *encoder,
 	if (type != HDMI_INFOFRAME_TYPE_AVI)
 		val &= ~g4x_infoframe_enable(type);
 
-	intel_de_write(dev_priv, reg, val);
+	intel_de_write(display, reg, val);
 
 	for (i = 0; i < len; i += 4) {
-		intel_de_write(dev_priv, TVIDEO_DIP_DATA(crtc->pipe),
+		intel_de_write(display, TVIDEO_DIP_DATA(crtc->pipe),
 			       *data);
 		data++;
 	}
 	/* Write every possible data byte to force correct ECC calculation. */
 	for (; i < VIDEO_DIP_DATA_SIZE; i += 4)
-		intel_de_write(dev_priv, TVIDEO_DIP_DATA(crtc->pipe), 0);
+		intel_de_write(display, TVIDEO_DIP_DATA(crtc->pipe), 0);
 
 	val |= g4x_infoframe_enable(type);
 	val &= ~VIDEO_DIP_FREQ_MASK;
 	val |= VIDEO_DIP_FREQ_VSYNC;
 
-	intel_de_write(dev_priv, reg, val);
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_write(display, reg, val);
+	intel_de_posting_read(display, reg);
 }
 
 static void cpt_read_infoframe(struct intel_encoder *encoder,
@@ -396,24 +391,24 @@ static void cpt_read_infoframe(struct intel_encoder *encoder,
 			       unsigned int type,
 			       void *frame, ssize_t len)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	u32 *data = frame;
 	int i;
 
-	intel_de_rmw(dev_priv, TVIDEO_DIP_CTL(crtc->pipe),
+	intel_de_rmw(display, TVIDEO_DIP_CTL(crtc->pipe),
 		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
 
 	for (i = 0; i < len; i += 4)
-		*data++ = intel_de_read(dev_priv, TVIDEO_DIP_DATA(crtc->pipe));
+		*data++ = intel_de_read(display, TVIDEO_DIP_DATA(crtc->pipe));
 }
 
 static u32 cpt_infoframes_enabled(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *pipe_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum pipe pipe = to_intel_crtc(pipe_config->uapi.crtc)->pipe;
-	u32 val = intel_de_read(dev_priv, TVIDEO_DIP_CTL(pipe));
+	u32 val = intel_de_read(display, TVIDEO_DIP_CTL(pipe));
 
 	if ((val & VIDEO_DIP_ENABLE) == 0)
 		return 0;
@@ -428,14 +423,14 @@ static void vlv_write_infoframe(struct intel_encoder *encoder,
 				unsigned int type,
 				const void *frame, ssize_t len)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	const u32 *data = frame;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	i915_reg_t reg = VLV_TVIDEO_DIP_CTL(crtc->pipe);
-	u32 val = intel_de_read(dev_priv, reg);
+	u32 val = intel_de_read(display, reg);
 	int i;
 
-	drm_WARN(&dev_priv->drm, !(val & VIDEO_DIP_ENABLE),
+	drm_WARN(display->drm, !(val & VIDEO_DIP_ENABLE),
 		 "Writing DIP with CTL reg disabled\n");
 
 	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
@@ -443,24 +438,24 @@ static void vlv_write_infoframe(struct intel_encoder *encoder,
 
 	val &= ~g4x_infoframe_enable(type);
 
-	intel_de_write(dev_priv, reg, val);
+	intel_de_write(display, reg, val);
 
 	for (i = 0; i < len; i += 4) {
-		intel_de_write(dev_priv,
+		intel_de_write(display,
 			       VLV_TVIDEO_DIP_DATA(crtc->pipe), *data);
 		data++;
 	}
 	/* Write every possible data byte to force correct ECC calculation. */
 	for (; i < VIDEO_DIP_DATA_SIZE; i += 4)
-		intel_de_write(dev_priv,
+		intel_de_write(display,
 			       VLV_TVIDEO_DIP_DATA(crtc->pipe), 0);
 
 	val |= g4x_infoframe_enable(type);
 	val &= ~VIDEO_DIP_FREQ_MASK;
 	val |= VIDEO_DIP_FREQ_VSYNC;
 
-	intel_de_write(dev_priv, reg, val);
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_write(display, reg, val);
+	intel_de_posting_read(display, reg);
 }
 
 static void vlv_read_infoframe(struct intel_encoder *encoder,
@@ -468,25 +463,25 @@ static void vlv_read_infoframe(struct intel_encoder *encoder,
 			       unsigned int type,
 			       void *frame, ssize_t len)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	u32 *data = frame;
 	int i;
 
-	intel_de_rmw(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe),
+	intel_de_rmw(display, VLV_TVIDEO_DIP_CTL(crtc->pipe),
 		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
 
 	for (i = 0; i < len; i += 4)
-		*data++ = intel_de_read(dev_priv,
+		*data++ = intel_de_read(display,
 				        VLV_TVIDEO_DIP_DATA(crtc->pipe));
 }
 
 static u32 vlv_infoframes_enabled(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *pipe_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum pipe pipe = to_intel_crtc(pipe_config->uapi.crtc)->pipe;
-	u32 val = intel_de_read(dev_priv, VLV_TVIDEO_DIP_CTL(pipe));
+	u32 val = intel_de_read(display, VLV_TVIDEO_DIP_CTL(pipe));
 
 	if ((val & VIDEO_DIP_ENABLE) == 0)
 		return 0;
@@ -504,75 +499,75 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
 			 unsigned int type,
 			 const void *frame, ssize_t len)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	const u32 *data = frame;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	i915_reg_t ctl_reg = HSW_TVIDEO_DIP_CTL(dev_priv, cpu_transcoder);
+	i915_reg_t ctl_reg = HSW_TVIDEO_DIP_CTL(display, cpu_transcoder);
 	int data_size;
 	int i;
-	u32 val = intel_de_read(dev_priv, ctl_reg);
+	u32 val = intel_de_read(display, ctl_reg);
 
-	data_size = hsw_dip_data_size(dev_priv, type);
+	data_size = hsw_dip_data_size(display, type);
 
-	drm_WARN_ON(&dev_priv->drm, len > data_size);
+	drm_WARN_ON(display->drm, len > data_size);
 
 	val &= ~hsw_infoframe_enable(type);
-	intel_de_write(dev_priv, ctl_reg, val);
+	intel_de_write(display, ctl_reg, val);
 
 	for (i = 0; i < len; i += 4) {
-		intel_de_write(dev_priv,
-			       hsw_dip_data_reg(dev_priv, cpu_transcoder, type, i >> 2),
+		intel_de_write(display,
+			       hsw_dip_data_reg(display, cpu_transcoder, type, i >> 2),
 			       *data);
 		data++;
 	}
 	/* Write every possible data byte to force correct ECC calculation. */
 	for (; i < data_size; i += 4)
-		intel_de_write(dev_priv,
-			       hsw_dip_data_reg(dev_priv, cpu_transcoder, type, i >> 2),
+		intel_de_write(display,
+			       hsw_dip_data_reg(display, cpu_transcoder, type, i >> 2),
 			       0);
 
 	/* Wa_14013475917 */
-	if (!(IS_DISPLAY_VER(dev_priv, 13, 14) && crtc_state->has_psr &&
+	if (!(IS_DISPLAY_VER(display, 13, 14) && crtc_state->has_psr &&
 	      !crtc_state->has_panel_replay && type == DP_SDP_VSC))
 		val |= hsw_infoframe_enable(type);
 
 	if (type == DP_SDP_VSC)
 		val |= VSC_DIP_HW_DATA_SW_HEA;
 
-	intel_de_write(dev_priv, ctl_reg, val);
-	intel_de_posting_read(dev_priv, ctl_reg);
+	intel_de_write(display, ctl_reg, val);
+	intel_de_posting_read(display, ctl_reg);
 }
 
 void hsw_read_infoframe(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state,
 			unsigned int type, void *frame, ssize_t len)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 *data = frame;
 	int i;
 
 	for (i = 0; i < len; i += 4)
-		*data++ = intel_de_read(dev_priv,
-				        hsw_dip_data_reg(dev_priv, cpu_transcoder, type, i >> 2));
+		*data++ = intel_de_read(display,
+					hsw_dip_data_reg(display, cpu_transcoder, type, i >> 2));
 }
 
 static u32 hsw_infoframes_enabled(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *pipe_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 val = intel_de_read(dev_priv,
-				HSW_TVIDEO_DIP_CTL(dev_priv, pipe_config->cpu_transcoder));
+	struct intel_display *display = to_intel_display(encoder);
+	u32 val = intel_de_read(display,
+				HSW_TVIDEO_DIP_CTL(display, pipe_config->cpu_transcoder));
 	u32 mask;
 
 	mask = (VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
 		VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
 		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW);
 
-	if (DISPLAY_VER(dev_priv) >= 10)
+	if (DISPLAY_VER(display) >= 10)
 		mask |= VIDEO_DIP_ENABLE_DRM_GLK;
 
-	if (HAS_AS_SDP(dev_priv))
+	if (HAS_AS_SDP(display))
 		mask |= VIDEO_DIP_ENABLE_AS_ADL;
 
 	return val & mask;
@@ -604,7 +599,7 @@ u32 intel_hdmi_infoframe_enable(unsigned int type)
 u32 intel_hdmi_infoframes_enabled(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	u32 val, ret = 0;
 	int i;
@@ -615,7 +610,7 @@ u32 intel_hdmi_infoframes_enabled(struct intel_encoder *encoder,
 	for (i = 0; i < ARRAY_SIZE(infoframe_type_to_idx); i++) {
 		unsigned int type = infoframe_type_to_idx[i];
 
-		if (HAS_DDI(dev_priv)) {
+		if (HAS_DDI(display)) {
 			if (val & hsw_infoframe_enable(type))
 				ret |= BIT(i);
 		} else {
@@ -830,11 +825,11 @@ intel_hdmi_compute_drm_infoframe(struct intel_encoder *encoder,
 				 struct intel_crtc_state *crtc_state,
 				 struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct hdmi_drm_infoframe *frame = &crtc_state->infoframes.drm.drm;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	int ret;
 
-	if (DISPLAY_VER(dev_priv) < 10)
+	if (DISPLAY_VER(display) < 10)
 		return true;
 
 	if (!crtc_state->has_infoframe)
@@ -848,13 +843,13 @@ intel_hdmi_compute_drm_infoframe(struct intel_encoder *encoder,
 
 	ret = drm_hdmi_infoframe_set_hdr_metadata(frame, conn_state);
 	if (ret < 0) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "couldn't set HDR metadata in infoframe\n");
 		return false;
 	}
 
 	ret = hdmi_drm_infoframe_check(frame);
-	if (drm_WARN_ON(&dev_priv->drm, ret))
+	if (drm_WARN_ON(display->drm, ret))
 		return false;
 
 	return true;
@@ -865,11 +860,11 @@ static void g4x_set_infoframes(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *crtc_state,
 			       const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
 	i915_reg_t reg = VIDEO_DIP_CTL;
-	u32 val = intel_de_read(dev_priv, reg);
+	u32 val = intel_de_read(display, reg);
 	u32 port = VIDEO_DIP_PORT(encoder->port);
 
 	assert_hdmi_port_disabled(intel_hdmi);
@@ -889,21 +884,21 @@ static void g4x_set_infoframes(struct intel_encoder *encoder,
 		if (!(val & VIDEO_DIP_ENABLE))
 			return;
 		if (port != (val & VIDEO_DIP_PORT_MASK)) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "video DIP still enabled on port %c\n",
 				    (val & VIDEO_DIP_PORT_MASK) >> 29);
 			return;
 		}
 		val &= ~(VIDEO_DIP_ENABLE | VIDEO_DIP_ENABLE_AVI |
 			 VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_SPD);
-		intel_de_write(dev_priv, reg, val);
-		intel_de_posting_read(dev_priv, reg);
+		intel_de_write(display, reg, val);
+		intel_de_posting_read(display, reg);
 		return;
 	}
 
 	if (port != (val & VIDEO_DIP_PORT_MASK)) {
 		if (val & VIDEO_DIP_ENABLE) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "video DIP already enabled on port %c\n",
 				    (val & VIDEO_DIP_PORT_MASK) >> 29);
 			return;
@@ -916,8 +911,8 @@ static void g4x_set_infoframes(struct intel_encoder *encoder,
 	val &= ~(VIDEO_DIP_ENABLE_AVI |
 		 VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_SPD);
 
-	intel_de_write(dev_priv, reg, val);
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_write(display, reg, val);
+	intel_de_posting_read(display, reg);
 
 	intel_write_infoframe(encoder, crtc_state,
 			      HDMI_INFOFRAME_TYPE_AVI,
@@ -977,6 +972,7 @@ static bool intel_hdmi_set_gcp_infoframe(struct intel_encoder *encoder,
 					 const struct intel_crtc_state *crtc_state,
 					 const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	i915_reg_t reg;
@@ -985,8 +981,8 @@ static bool intel_hdmi_set_gcp_infoframe(struct intel_encoder *encoder,
 	     intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GENERAL_CONTROL)) == 0)
 		return false;
 
-	if (HAS_DDI(dev_priv))
-		reg = HSW_TVIDEO_DIP_GCP(dev_priv, crtc_state->cpu_transcoder);
+	if (HAS_DDI(display))
+		reg = HSW_TVIDEO_DIP_GCP(display, crtc_state->cpu_transcoder);
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		reg = VLV_TVIDEO_DIP_GCP(crtc->pipe);
 	else if (HAS_PCH_SPLIT(dev_priv))
@@ -994,7 +990,7 @@ static bool intel_hdmi_set_gcp_infoframe(struct intel_encoder *encoder,
 	else
 		return false;
 
-	intel_de_write(dev_priv, reg, crtc_state->infoframes.gcp);
+	intel_de_write(display, reg, crtc_state->infoframes.gcp);
 
 	return true;
 }
@@ -1002,6 +998,7 @@ static bool intel_hdmi_set_gcp_infoframe(struct intel_encoder *encoder,
 void intel_hdmi_read_gcp_infoframe(struct intel_encoder *encoder,
 				   struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	i915_reg_t reg;
@@ -1010,8 +1007,8 @@ void intel_hdmi_read_gcp_infoframe(struct intel_encoder *encoder,
 	     intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GENERAL_CONTROL)) == 0)
 		return;
 
-	if (HAS_DDI(dev_priv))
-		reg = HSW_TVIDEO_DIP_GCP(dev_priv, crtc_state->cpu_transcoder);
+	if (HAS_DDI(display))
+		reg = HSW_TVIDEO_DIP_GCP(display, crtc_state->cpu_transcoder);
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		reg = VLV_TVIDEO_DIP_GCP(crtc->pipe);
 	else if (HAS_PCH_SPLIT(dev_priv))
@@ -1019,7 +1016,7 @@ void intel_hdmi_read_gcp_infoframe(struct intel_encoder *encoder,
 	else
 		return;
 
-	crtc_state->infoframes.gcp = intel_de_read(dev_priv, reg);
+	crtc_state->infoframes.gcp = intel_de_read(display, reg);
 }
 
 static void intel_hdmi_compute_gcp_infoframe(struct intel_encoder *encoder,
@@ -1049,12 +1046,12 @@ static void ibx_set_infoframes(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *crtc_state,
 			       const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
 	i915_reg_t reg = TVIDEO_DIP_CTL(crtc->pipe);
-	u32 val = intel_de_read(dev_priv, reg);
+	u32 val = intel_de_read(display, reg);
 	u32 port = VIDEO_DIP_PORT(encoder->port);
 
 	assert_hdmi_port_disabled(intel_hdmi);
@@ -1068,13 +1065,13 @@ static void ibx_set_infoframes(struct intel_encoder *encoder,
 		val &= ~(VIDEO_DIP_ENABLE | VIDEO_DIP_ENABLE_AVI |
 			 VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_GAMUT |
 			 VIDEO_DIP_ENABLE_SPD | VIDEO_DIP_ENABLE_GCP);
-		intel_de_write(dev_priv, reg, val);
-		intel_de_posting_read(dev_priv, reg);
+		intel_de_write(display, reg, val);
+		intel_de_posting_read(display, reg);
 		return;
 	}
 
 	if (port != (val & VIDEO_DIP_PORT_MASK)) {
-		drm_WARN(&dev_priv->drm, val & VIDEO_DIP_ENABLE,
+		drm_WARN(display->drm, val & VIDEO_DIP_ENABLE,
 			 "DIP already enabled on port %c\n",
 			 (val & VIDEO_DIP_PORT_MASK) >> 29);
 		val &= ~VIDEO_DIP_PORT_MASK;
@@ -1089,8 +1086,8 @@ static void ibx_set_infoframes(struct intel_encoder *encoder,
 	if (intel_hdmi_set_gcp_infoframe(encoder, crtc_state, conn_state))
 		val |= VIDEO_DIP_ENABLE_GCP;
 
-	intel_de_write(dev_priv, reg, val);
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_write(display, reg, val);
+	intel_de_posting_read(display, reg);
 
 	intel_write_infoframe(encoder, crtc_state,
 			      HDMI_INFOFRAME_TYPE_AVI,
@@ -1108,11 +1105,11 @@ static void cpt_set_infoframes(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *crtc_state,
 			       const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 	i915_reg_t reg = TVIDEO_DIP_CTL(crtc->pipe);
-	u32 val = intel_de_read(dev_priv, reg);
+	u32 val = intel_de_read(display, reg);
 
 	assert_hdmi_port_disabled(intel_hdmi);
 
@@ -1125,8 +1122,8 @@ static void cpt_set_infoframes(struct intel_encoder *encoder,
 		val &= ~(VIDEO_DIP_ENABLE | VIDEO_DIP_ENABLE_AVI |
 			 VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_GAMUT |
 			 VIDEO_DIP_ENABLE_SPD | VIDEO_DIP_ENABLE_GCP);
-		intel_de_write(dev_priv, reg, val);
-		intel_de_posting_read(dev_priv, reg);
+		intel_de_write(display, reg, val);
+		intel_de_posting_read(display, reg);
 		return;
 	}
 
@@ -1138,8 +1135,8 @@ static void cpt_set_infoframes(struct intel_encoder *encoder,
 	if (intel_hdmi_set_gcp_infoframe(encoder, crtc_state, conn_state))
 		val |= VIDEO_DIP_ENABLE_GCP;
 
-	intel_de_write(dev_priv, reg, val);
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_write(display, reg, val);
+	intel_de_posting_read(display, reg);
 
 	intel_write_infoframe(encoder, crtc_state,
 			      HDMI_INFOFRAME_TYPE_AVI,
@@ -1157,11 +1154,11 @@ static void vlv_set_infoframes(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *crtc_state,
 			       const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 	i915_reg_t reg = VLV_TVIDEO_DIP_CTL(crtc->pipe);
-	u32 val = intel_de_read(dev_priv, reg);
+	u32 val = intel_de_read(display, reg);
 	u32 port = VIDEO_DIP_PORT(encoder->port);
 
 	assert_hdmi_port_disabled(intel_hdmi);
@@ -1175,13 +1172,13 @@ static void vlv_set_infoframes(struct intel_encoder *encoder,
 		val &= ~(VIDEO_DIP_ENABLE | VIDEO_DIP_ENABLE_AVI |
 			 VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_GAMUT |
 			 VIDEO_DIP_ENABLE_SPD | VIDEO_DIP_ENABLE_GCP);
-		intel_de_write(dev_priv, reg, val);
-		intel_de_posting_read(dev_priv, reg);
+		intel_de_write(display, reg, val);
+		intel_de_posting_read(display, reg);
 		return;
 	}
 
 	if (port != (val & VIDEO_DIP_PORT_MASK)) {
-		drm_WARN(&dev_priv->drm, val & VIDEO_DIP_ENABLE,
+		drm_WARN(display->drm, val & VIDEO_DIP_ENABLE,
 			 "DIP already enabled on port %c\n",
 			 (val & VIDEO_DIP_PORT_MASK) >> 29);
 		val &= ~VIDEO_DIP_PORT_MASK;
@@ -1196,8 +1193,8 @@ static void vlv_set_infoframes(struct intel_encoder *encoder,
 	if (intel_hdmi_set_gcp_infoframe(encoder, crtc_state, conn_state))
 		val |= VIDEO_DIP_ENABLE_GCP;
 
-	intel_de_write(dev_priv, reg, val);
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_write(display, reg, val);
+	intel_de_posting_read(display, reg);
 
 	intel_write_infoframe(encoder, crtc_state,
 			      HDMI_INFOFRAME_TYPE_AVI,
@@ -1215,12 +1212,12 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *crtc_state,
 			       const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(dev_priv,
+	struct intel_display *display = to_intel_display(encoder);
+	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(display,
 					    crtc_state->cpu_transcoder);
-	u32 val = intel_de_read(dev_priv, reg);
+	u32 val = intel_de_read(display, reg);
 
-	assert_hdmi_transcoder_func_disabled(dev_priv,
+	assert_hdmi_transcoder_func_disabled(display,
 					     crtc_state->cpu_transcoder);
 
 	val &= ~(VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
@@ -1229,16 +1226,16 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
 		 VIDEO_DIP_ENABLE_DRM_GLK | VIDEO_DIP_ENABLE_AS_ADL);
 
 	if (!enable) {
-		intel_de_write(dev_priv, reg, val);
-		intel_de_posting_read(dev_priv, reg);
+		intel_de_write(display, reg, val);
+		intel_de_posting_read(display, reg);
 		return;
 	}
 
 	if (intel_hdmi_set_gcp_infoframe(encoder, crtc_state, conn_state))
 		val |= VIDEO_DIP_ENABLE_GCP_HSW;
 
-	intel_de_write(dev_priv, reg, val);
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_write(display, reg, val);
+	intel_de_posting_read(display, reg);
 
 	intel_write_infoframe(encoder, crtc_state,
 			      HDMI_INFOFRAME_TYPE_AVI,
@@ -1256,16 +1253,16 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
 
 void intel_dp_dual_mode_set_tmds_output(struct intel_hdmi *hdmi, bool enable)
 {
-	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(hdmi);
+	struct intel_display *display = to_intel_display(hdmi);
 	struct i2c_adapter *ddc = hdmi->attached_connector->base.ddc;
 
 	if (hdmi->dp_dual_mode.type < DRM_DP_DUAL_MODE_TYPE2_DVI)
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "%s DP dual mode adaptor TMDS output\n",
+	drm_dbg_kms(display->drm, "%s DP dual mode adaptor TMDS output\n",
 		    enable ? "Enabling" : "Disabling");
 
-	drm_dp_dual_mode_set_tmds_output(&dev_priv->drm,
+	drm_dp_dual_mode_set_tmds_output(display->drm,
 					 hdmi->dp_dual_mode.type, ddc, enable);
 }
 
@@ -1331,7 +1328,7 @@ static
 int intel_hdmi_hdcp_write_an_aksv(struct intel_digital_port *dig_port,
 				  u8 *an)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_hdmi *hdmi = &dig_port->hdmi;
 	struct i2c_adapter *ddc = hdmi->attached_connector->base.ddc;
 	int ret;
@@ -1339,14 +1336,14 @@ int intel_hdmi_hdcp_write_an_aksv(struct intel_digital_port *dig_port,
 	ret = intel_hdmi_hdcp_write(dig_port, DRM_HDCP_DDC_AN, an,
 				    DRM_HDCP_AN_LEN);
 	if (ret) {
-		drm_dbg_kms(&i915->drm, "Write An over DDC failed (%d)\n",
+		drm_dbg_kms(display->drm, "Write An over DDC failed (%d)\n",
 			    ret);
 		return ret;
 	}
 
 	ret = intel_gmbus_output_aksv(ddc);
 	if (ret < 0) {
-		drm_dbg_kms(&i915->drm, "Failed to output aksv (%d)\n", ret);
+		drm_dbg_kms(display->drm, "Failed to output aksv (%d)\n", ret);
 		return ret;
 	}
 	return 0;
@@ -1355,13 +1352,13 @@ int intel_hdmi_hdcp_write_an_aksv(struct intel_digital_port *dig_port,
 static int intel_hdmi_hdcp_read_bksv(struct intel_digital_port *dig_port,
 				     u8 *bksv)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 
 	int ret;
 	ret = intel_hdmi_hdcp_read(dig_port, DRM_HDCP_DDC_BKSV, bksv,
 				   DRM_HDCP_KSV_LEN);
 	if (ret)
-		drm_dbg_kms(&i915->drm, "Read Bksv over DDC failed (%d)\n",
+		drm_dbg_kms(display->drm, "Read Bksv over DDC failed (%d)\n",
 			    ret);
 	return ret;
 }
@@ -1370,13 +1367,14 @@ static
 int intel_hdmi_hdcp_read_bstatus(struct intel_digital_port *dig_port,
 				 u8 *bstatus)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 
 	int ret;
 	ret = intel_hdmi_hdcp_read(dig_port, DRM_HDCP_DDC_BSTATUS,
 				   bstatus, DRM_HDCP_BSTATUS_LEN);
 	if (ret)
-		drm_dbg_kms(&i915->drm, "Read bstatus over DDC failed (%d)\n",
+		drm_dbg_kms(display->drm,
+			    "Read bstatus over DDC failed (%d)\n",
 			    ret);
 	return ret;
 }
@@ -1385,13 +1383,13 @@ static
 int intel_hdmi_hdcp_repeater_present(struct intel_digital_port *dig_port,
 				     bool *repeater_present)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	int ret;
 	u8 val;
 
 	ret = intel_hdmi_hdcp_read(dig_port, DRM_HDCP_DDC_BCAPS, &val, 1);
 	if (ret) {
-		drm_dbg_kms(&i915->drm, "Read bcaps over DDC failed (%d)\n",
+		drm_dbg_kms(display->drm, "Read bcaps over DDC failed (%d)\n",
 			    ret);
 		return ret;
 	}
@@ -1403,13 +1401,13 @@ static
 int intel_hdmi_hdcp_read_ri_prime(struct intel_digital_port *dig_port,
 				  u8 *ri_prime)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 
 	int ret;
 	ret = intel_hdmi_hdcp_read(dig_port, DRM_HDCP_DDC_RI_PRIME,
 				   ri_prime, DRM_HDCP_RI_LEN);
 	if (ret)
-		drm_dbg_kms(&i915->drm, "Read Ri' over DDC failed (%d)\n",
+		drm_dbg_kms(display->drm, "Read Ri' over DDC failed (%d)\n",
 			    ret);
 	return ret;
 }
@@ -1418,13 +1416,13 @@ static
 int intel_hdmi_hdcp_read_ksv_ready(struct intel_digital_port *dig_port,
 				   bool *ksv_ready)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	int ret;
 	u8 val;
 
 	ret = intel_hdmi_hdcp_read(dig_port, DRM_HDCP_DDC_BCAPS, &val, 1);
 	if (ret) {
-		drm_dbg_kms(&i915->drm, "Read bcaps over DDC failed (%d)\n",
+		drm_dbg_kms(display->drm, "Read bcaps over DDC failed (%d)\n",
 			    ret);
 		return ret;
 	}
@@ -1436,12 +1434,12 @@ static
 int intel_hdmi_hdcp_read_ksv_fifo(struct intel_digital_port *dig_port,
 				  int num_downstream, u8 *ksv_fifo)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	int ret;
 	ret = intel_hdmi_hdcp_read(dig_port, DRM_HDCP_DDC_KSV_FIFO,
 				   ksv_fifo, num_downstream * DRM_HDCP_KSV_LEN);
 	if (ret) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Read ksv fifo over DDC failed (%d)\n", ret);
 		return ret;
 	}
@@ -1452,7 +1450,7 @@ static
 int intel_hdmi_hdcp_read_v_prime_part(struct intel_digital_port *dig_port,
 				      int i, u32 *part)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	int ret;
 
 	if (i >= DRM_HDCP_V_PRIME_NUM_PARTS)
@@ -1461,7 +1459,8 @@ int intel_hdmi_hdcp_read_v_prime_part(struct intel_digital_port *dig_port,
 	ret = intel_hdmi_hdcp_read(dig_port, DRM_HDCP_DDC_V_PRIME(i),
 				   part, DRM_HDCP_V_PRIME_PART_LEN);
 	if (ret)
-		drm_dbg_kms(&i915->drm, "Read V'[%d] over DDC failed (%d)\n",
+		drm_dbg_kms(display->drm,
+			    "Read V'[%d] over DDC failed (%d)\n",
 			    i, ret);
 	return ret;
 }
@@ -1469,15 +1468,15 @@ int intel_hdmi_hdcp_read_v_prime_part(struct intel_digital_port *dig_port,
 static int kbl_repositioning_enc_en_signal(struct intel_connector *connector,
 					   enum transcoder cpu_transcoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct intel_crtc *crtc = to_intel_crtc(connector->base.state->crtc);
 	u32 scanline;
 	int ret;
 
 	for (;;) {
-		scanline = intel_de_read(dev_priv,
-					 PIPEDSL(dev_priv, crtc->pipe));
+		scanline = intel_de_read(display,
+					 PIPEDSL(display, crtc->pipe));
 		if (scanline > 100 && scanline < 200)
 			break;
 		usleep_range(25, 50);
@@ -1486,7 +1485,7 @@ static int kbl_repositioning_enc_en_signal(struct intel_connector *connector,
 	ret = intel_ddi_toggle_hdcp_bits(&dig_port->base, cpu_transcoder,
 					 false, TRANS_DDI_HDCP_SIGNALLING);
 	if (ret) {
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Disable HDCP signalling failed (%d)\n", ret);
 		return ret;
 	}
@@ -1494,7 +1493,7 @@ static int kbl_repositioning_enc_en_signal(struct intel_connector *connector,
 	ret = intel_ddi_toggle_hdcp_bits(&dig_port->base, cpu_transcoder,
 					 true, TRANS_DDI_HDCP_SIGNALLING);
 	if (ret) {
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Enable HDCP signalling failed (%d)\n", ret);
 		return ret;
 	}
@@ -1507,6 +1506,7 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *dig_port,
 				      enum transcoder cpu_transcoder,
 				      bool enable)
 {
+	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_hdmi *hdmi = &dig_port->hdmi;
 	struct intel_connector *connector = hdmi->attached_connector;
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
@@ -1519,7 +1519,7 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *dig_port,
 					 cpu_transcoder, enable,
 					 TRANS_DDI_HDCP_SIGNALLING);
 	if (ret) {
-		drm_err(&dev_priv->drm, "%s HDCP signalling failed (%d)\n",
+		drm_err(display->drm, "%s HDCP signalling failed (%d)\n",
 			enable ? "Enable" : "Disable", ret);
 		return ret;
 	}
@@ -1539,6 +1539,7 @@ static
 bool intel_hdmi_hdcp_check_link_once(struct intel_digital_port *dig_port,
 				     struct intel_connector *connector)
 {
+	struct intel_display *display = to_intel_display(dig_port);
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder = connector->hdcp.cpu_transcoder;
@@ -1558,9 +1559,9 @@ bool intel_hdmi_hdcp_check_link_once(struct intel_digital_port *dig_port,
 	if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
 		      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
 		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
-		drm_dbg_kms(&i915->drm, "Ri' mismatch detected (%x)\n",
-			intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
-							port)));
+		drm_dbg_kms(display->drm, "Ri' mismatch detected (%x)\n",
+			    intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
+							    port)));
 		return false;
 	}
 	return true;
@@ -1570,14 +1571,14 @@ static
 bool intel_hdmi_hdcp_check_link(struct intel_digital_port *dig_port,
 				struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	int retry;
 
 	for (retry = 0; retry < 3; retry++)
 		if (intel_hdmi_hdcp_check_link_once(dig_port, connector))
 			return true;
 
-	drm_err(&i915->drm, "Link check failed\n");
+	drm_err(display->drm, "Link check failed\n");
 	return false;
 }
 
@@ -1628,13 +1629,13 @@ hdcp2_detect_msg_availability(struct intel_digital_port *dig_port,
 			      u8 msg_id, bool *msg_ready,
 			      ssize_t *msg_sz)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	u8 rx_status[HDCP_2_2_HDMI_RXSTATUS_LEN];
 	int ret;
 
 	ret = intel_hdmi_hdcp2_read_rx_status(dig_port, rx_status);
 	if (ret < 0) {
-		drm_dbg_kms(&i915->drm, "rx_status read failed. Err %d\n",
+		drm_dbg_kms(display->drm, "rx_status read failed. Err %d\n",
 			    ret);
 		return ret;
 	}
@@ -1655,7 +1656,7 @@ static ssize_t
 intel_hdmi_hdcp2_wait_for_msg(struct intel_digital_port *dig_port,
 			      u8 msg_id, bool paired)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	bool msg_ready = false;
 	int timeout, ret;
 	ssize_t msg_sz = 0;
@@ -1670,7 +1671,8 @@ intel_hdmi_hdcp2_wait_for_msg(struct intel_digital_port *dig_port,
 			 !ret && msg_ready && msg_sz, timeout * 1000,
 			 1000, 5 * 1000);
 	if (ret)
-		drm_dbg_kms(&i915->drm, "msg_id: %d, ret: %d, timeout: %d\n",
+		drm_dbg_kms(display->drm,
+			    "msg_id: %d, ret: %d, timeout: %d\n",
 			    msg_id, ret, timeout);
 
 	return ret ? ret : msg_sz;
@@ -1691,8 +1693,8 @@ static
 int intel_hdmi_hdcp2_read_msg(struct intel_connector *connector,
 			      u8 msg_id, void *buf, size_t size)
 {
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_hdmi *hdmi = &dig_port->hdmi;
 	struct intel_hdcp *hdcp = &hdmi->attached_connector->hdcp;
 	unsigned int offset;
@@ -1708,7 +1710,7 @@ int intel_hdmi_hdcp2_read_msg(struct intel_connector *connector,
 	 * available buffer.
 	 */
 	if (ret > size) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "msg_sz(%zd) is more than exp size(%zu)\n",
 			    ret, size);
 		return -EINVAL;
@@ -1717,7 +1719,7 @@ int intel_hdmi_hdcp2_read_msg(struct intel_connector *connector,
 	offset = HDCP_2_2_HDMI_REG_RD_MSG_OFFSET;
 	ret = intel_hdmi_hdcp_read(dig_port, offset, buf, ret);
 	if (ret)
-		drm_dbg_kms(&i915->drm, "Failed to read msg_id: %d(%zd)\n",
+		drm_dbg_kms(display->drm, "Failed to read msg_id: %d(%zd)\n",
 			    msg_id, ret);
 
 	return ret;
@@ -1783,16 +1785,17 @@ static const struct intel_hdcp_shim intel_hdmi_hdcp_shim = {
 
 static int intel_hdmi_source_max_tmds_clock(struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	int max_tmds_clock, vbt_max_tmds_clock;
 
-	if (DISPLAY_VER(dev_priv) >= 13 || IS_ALDERLAKE_S(dev_priv))
+	if (DISPLAY_VER(display) >= 13 || IS_ALDERLAKE_S(dev_priv))
 		max_tmds_clock = 600000;
-	else if (DISPLAY_VER(dev_priv) >= 10)
+	else if (DISPLAY_VER(display) >= 10)
 		max_tmds_clock = 594000;
-	else if (DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL(dev_priv))
+	else if (DISPLAY_VER(display) >= 8 || IS_HASWELL(dev_priv))
 		max_tmds_clock = 300000;
-	else if (DISPLAY_VER(dev_priv) >= 5)
+	else if (DISPLAY_VER(display) >= 5)
 		max_tmds_clock = 225000;
 	else
 		max_tmds_clock = 165000;
@@ -1848,7 +1851,8 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 		      int clock, bool respect_downstream_limits,
 		      bool has_hdmi_sink)
 {
-	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(hdmi);
+	struct intel_display *display = to_intel_display(hdmi);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder = &hdmi_to_dig_port(hdmi)->base;
 
 	if (clock < 25000)
@@ -1885,7 +1889,7 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 	 * FIXME: We will hopefully get an algorithmic way of programming
 	 * the MPLLB for HDMI in the future.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		return intel_cx0_phy_check_hdmi_link_rate(hdmi, clock);
 	else if (IS_DG2(dev_priv))
 		return intel_snps_phy_check_hdmi_link_rate(clock);
@@ -1908,13 +1912,13 @@ int intel_hdmi_tmds_clock(int clock, int bpc,
 	return DIV_ROUND_CLOSEST(clock * bpc, 8);
 }
 
-static bool intel_hdmi_source_bpc_possible(struct drm_i915_private *i915, int bpc)
+static bool intel_hdmi_source_bpc_possible(struct intel_display *display, int bpc)
 {
 	switch (bpc) {
 	case 12:
-		return !HAS_GMCH(i915);
+		return !HAS_GMCH(display);
 	case 10:
-		return DISPLAY_VER(i915) >= 11;
+		return DISPLAY_VER(display) >= 11;
 	case 8:
 		return true;
 	default:
@@ -1960,7 +1964,7 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
 			    bool has_hdmi_sink,
 			    enum intel_output_format sink_format)
 {
-	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
 	enum drm_mode_status status = MODE_OK;
 	int bpc;
@@ -1973,7 +1977,7 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
 	for (bpc = 12; bpc >= 8; bpc -= 2) {
 		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc, sink_format);
 
-		if (!intel_hdmi_source_bpc_possible(i915, bpc))
+		if (!intel_hdmi_source_bpc_possible(display, bpc))
 			continue;
 
 		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, sink_format))
@@ -1985,7 +1989,7 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
 	}
 
 	/* can never happen */
-	drm_WARN_ON(&i915->drm, status == MODE_OK);
+	drm_WARN_ON(display->drm, status == MODE_OK);
 
 	return status;
 }
@@ -1994,8 +1998,9 @@ static enum drm_mode_status
 intel_hdmi_mode_valid(struct drm_connector *connector,
 		      struct drm_display_mode *mode)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
-	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(hdmi);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum drm_mode_status status;
 	int clock = mode->clock;
 	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
@@ -2073,17 +2078,16 @@ bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
 
 static bool hdmi_bpc_possible(const struct intel_crtc_state *crtc_state, int bpc)
 {
-	struct drm_i915_private *dev_priv =
-		to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!intel_hdmi_source_bpc_possible(dev_priv, bpc))
+	if (!intel_hdmi_source_bpc_possible(display, bpc))
 		return false;
 
 	/* Display Wa_1405510057:icl,ehl */
 	if (intel_hdmi_is_ycbcr420(crtc_state) &&
-	    bpc == 10 && DISPLAY_VER(dev_priv) == 11 &&
+	    bpc == 10 && DISPLAY_VER(display) == 11 &&
 	    (adjusted_mode->crtc_hblank_end -
 	     adjusted_mode->crtc_hblank_start) % 8 == 2)
 		return false;
@@ -2130,7 +2134,7 @@ static int intel_hdmi_compute_clock(struct intel_encoder *encoder,
 				    struct intel_crtc_state *crtc_state,
 				    bool respect_downstream_limits)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	int bpc, clock = adjusted_mode->crtc_clock;
@@ -2153,7 +2157,7 @@ static int intel_hdmi_compute_clock(struct intel_encoder *encoder,
 	 */
 	crtc_state->pipe_bpp = min(crtc_state->pipe_bpp, bpc * 3);
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "picking %d bpc for HDMI output (pipe bpp: %d)\n",
 		    bpc, crtc_state->pipe_bpp);
 
@@ -2230,10 +2234,10 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 					    const struct drm_connector_state *conn_state,
 					    bool respect_downstream_limits)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	const struct drm_display_info *info = &connector->base.display_info;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	bool ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
 	int ret;
 
@@ -2241,7 +2245,7 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 		intel_hdmi_sink_format(crtc_state, connector, ycbcr_420_only);
 
 	if (ycbcr_420_only && crtc_state->sink_format != INTEL_OUTPUT_FORMAT_YCBCR420) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
 		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	}
@@ -2302,7 +2306,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
 			      struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct drm_connector *connector = conn_state->connector;
 	struct drm_scdc *scdc = &connector->display_info.hdmi.scdc;
@@ -2335,7 +2339,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		ret = intel_hdmi_compute_output_format(encoder, pipe_config, conn_state, false);
 	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "unsupported HDMI clock (%d kHz), rejecting mode\n",
 			    pipe_config->hw.adjusted_mode.crtc_clock);
 		return ret;
@@ -2370,22 +2374,22 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 					 conn_state);
 
 	if (!intel_hdmi_compute_avi_infoframe(encoder, pipe_config, conn_state)) {
-		drm_dbg_kms(&dev_priv->drm, "bad AVI infoframe\n");
+		drm_dbg_kms(display->drm, "bad AVI infoframe\n");
 		return -EINVAL;
 	}
 
 	if (!intel_hdmi_compute_spd_infoframe(encoder, pipe_config, conn_state)) {
-		drm_dbg_kms(&dev_priv->drm, "bad SPD infoframe\n");
+		drm_dbg_kms(display->drm, "bad SPD infoframe\n");
 		return -EINVAL;
 	}
 
 	if (!intel_hdmi_compute_hdmi_infoframe(encoder, pipe_config, conn_state)) {
-		drm_dbg_kms(&dev_priv->drm, "bad HDMI infoframe\n");
+		drm_dbg_kms(display->drm, "bad HDMI infoframe\n");
 		return -EINVAL;
 	}
 
 	if (!intel_hdmi_compute_drm_infoframe(encoder, pipe_config, conn_state)) {
-		drm_dbg_kms(&dev_priv->drm, "bad DRM infoframe\n");
+		drm_dbg_kms(display->drm, "bad DRM infoframe\n");
 		return -EINVAL;
 	}
 
@@ -2418,13 +2422,14 @@ intel_hdmi_unset_edid(struct drm_connector *connector)
 static void
 intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
 	struct intel_encoder *encoder = &hdmi_to_dig_port(hdmi)->base;
 	struct i2c_adapter *ddc = connector->ddc;
 	enum drm_dp_dual_mode_type type;
 
-	type = drm_dp_dual_mode_detect(&dev_priv->drm, ddc);
+	type = drm_dp_dual_mode_detect(display->drm, ddc);
 
 	/*
 	 * Type 1 DVI adaptors are not required to implement any
@@ -2438,7 +2443,7 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 	if (type == DRM_DP_DUAL_MODE_UNKNOWN) {
 		if (!connector->force &&
 		    intel_bios_encoder_supports_dp_dual_mode(encoder->devdata)) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "Assuming DP dual mode adaptor presence based on VBT\n");
 			type = DRM_DP_DUAL_MODE_TYPE1_DVI;
 		} else {
@@ -2451,17 +2456,17 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 
 	hdmi->dp_dual_mode.type = type;
 	hdmi->dp_dual_mode.max_tmds_clock =
-		drm_dp_dual_mode_max_tmds_clock(&dev_priv->drm, type, ddc);
+		drm_dp_dual_mode_max_tmds_clock(display->drm, type, ddc);
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "DP dual mode adaptor (%s) detected (max TMDS clock: %d kHz)\n",
 		    drm_dp_get_dual_mode_type_name(type),
 		    hdmi->dp_dual_mode.max_tmds_clock);
 
 	/* Older VBTs are often buggy and can't be trusted :( Play it safe. */
-	if ((DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL(dev_priv)) &&
+	if ((DISPLAY_VER(display) >= 8 || IS_HASWELL(dev_priv)) &&
 	    !intel_bios_encoder_supports_dp_dual_mode(encoder->devdata)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Ignoring DP dual mode adaptor max TMDS clock for native HDMI port\n");
 		hdmi->dp_dual_mode.max_tmds_clock = 0;
 	}
@@ -2470,6 +2475,7 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 static bool
 intel_hdmi_set_edid(struct drm_connector *connector)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
 	struct i2c_adapter *ddc = connector->ddc;
@@ -2482,7 +2488,7 @@ intel_hdmi_set_edid(struct drm_connector *connector)
 	drm_edid = drm_edid_read_ddc(connector, ddc);
 
 	if (!drm_edid && !intel_gmbus_is_forced_bit(ddc)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "HDMI GMBUS EDID read failed, retry using GPIO bit-banging\n");
 		intel_gmbus_force_bit(ddc, true);
 		drm_edid = drm_edid_read_ddc(connector, ddc);
@@ -2511,13 +2517,14 @@ intel_hdmi_set_edid(struct drm_connector *connector)
 static enum drm_connector_status
 intel_hdmi_detect(struct drm_connector *connector, bool force)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	enum drm_connector_status status = connector_status_disconnected;
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
 	struct intel_encoder *encoder = &hdmi_to_dig_port(intel_hdmi)->base;
 	intel_wakeref_t wakeref;
 
-	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
 	if (!intel_display_device_enabled(dev_priv))
@@ -2528,7 +2535,7 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);
 
-	if (DISPLAY_VER(dev_priv) >= 11 &&
+	if (DISPLAY_VER(display) >= 11 &&
 	    !intel_digital_port_connected(encoder))
 		goto out;
 
@@ -2549,9 +2556,10 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 static void
 intel_hdmi_force(struct drm_connector *connector)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
 	if (!intel_display_driver_check_access(i915))
@@ -2608,9 +2616,9 @@ static const struct drm_connector_funcs intel_hdmi_connector_funcs = {
 static int intel_hdmi_connector_atomic_check(struct drm_connector *connector,
 					     struct drm_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 
-	if (HAS_DDI(i915))
+	if (HAS_DDI(display))
 		return intel_digital_connector_atomic_check(connector, state);
 	else
 		return g4x_hdmi_connector_atomic_check(connector, state);
@@ -2625,7 +2633,7 @@ static const struct drm_connector_helper_funcs intel_hdmi_connector_helper_funcs
 static void
 intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *connector)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	struct intel_display *display = to_intel_display(intel_hdmi);
 
 	intel_attach_force_audio_property(connector);
 	intel_attach_broadcast_rgb_property(connector);
@@ -2634,10 +2642,10 @@ intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *c
 	intel_attach_hdmi_colorspace_property(connector);
 	drm_connector_attach_content_type_property(connector);
 
-	if (DISPLAY_VER(dev_priv) >= 10)
+	if (DISPLAY_VER(display) >= 10)
 		drm_connector_attach_hdr_output_metadata_property(connector);
 
-	if (!HAS_GMCH(dev_priv))
+	if (!HAS_GMCH(display))
 		drm_connector_attach_max_bpc_property(connector, 8, 12);
 }
 
@@ -2664,14 +2672,14 @@ bool intel_hdmi_handle_sink_scrambling(struct intel_encoder *encoder,
 				       bool high_tmds_clock_ratio,
 				       bool scrambling)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_scrambling *sink_scrambling =
 		&connector->display_info.hdmi.scdc.scrambling;
 
 	if (!sink_scrambling->supported)
 		return true;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] scrambling=%s, TMDS bit clock ratio=1/%d\n",
 		    connector->base.id, connector->name,
 		    str_yes_no(scrambling), high_tmds_clock_ratio ? 40 : 10);
@@ -2752,7 +2760,7 @@ static u8 cnp_encoder_to_ddc_pin(struct intel_encoder *encoder)
 
 static u8 icl_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 
 	if (intel_encoder_is_combo(encoder))
@@ -2760,7 +2768,7 @@ static u8 icl_encoder_to_ddc_pin(struct intel_encoder *encoder)
 	else if (intel_encoder_is_tc(encoder))
 		return GMBUS_PIN_9_TC1_ICP + intel_encoder_to_tc(encoder);
 
-	drm_WARN(&dev_priv->drm, 1, "Unknown port:%c\n", port_name(port));
+	drm_WARN(display->drm, 1, "Unknown port:%c\n", port_name(port));
 	return GMBUS_PIN_2_BXT;
 }
 
@@ -2808,10 +2816,11 @@ static u8 rkl_encoder_to_ddc_pin(struct intel_encoder *encoder)
 
 static u8 gen9bc_tgp_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	drm_WARN_ON(&i915->drm, encoder->port == PORT_A);
+	drm_WARN_ON(display->drm, encoder->port == PORT_A);
 
 	/*
 	 * Pin mapping for GEN9 BC depends on which PCH is present.  With TGP,
@@ -2871,6 +2880,7 @@ static u8 g4x_encoder_to_ddc_pin(struct intel_encoder *encoder)
 
 static u8 intel_hdmi_default_ddc_pin(struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u8 ddc_pin;
 
@@ -2880,7 +2890,7 @@ static u8 intel_hdmi_default_ddc_pin(struct intel_encoder *encoder)
 		ddc_pin = dg1_encoder_to_ddc_pin(encoder);
 	else if (IS_ROCKETLAKE(dev_priv))
 		ddc_pin = rkl_encoder_to_ddc_pin(encoder);
-	else if (DISPLAY_VER(dev_priv) == 9 && HAS_PCH_TGP(dev_priv))
+	else if (DISPLAY_VER(display) == 9 && HAS_PCH_TGP(dev_priv))
 		ddc_pin = gen9bc_tgp_encoder_to_ddc_pin(encoder);
 	else if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
 		 HAS_PCH_TGP(dev_priv))
@@ -2902,10 +2912,11 @@ static u8 intel_hdmi_default_ddc_pin(struct intel_encoder *encoder)
 static struct intel_encoder *
 get_encoder_by_ddc_pin(struct intel_encoder *encoder, u8 ddc_pin)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_encoder *other;
 
-	for_each_intel_encoder(&i915->drm, other) {
+	for_each_intel_encoder(display->drm, other) {
 		struct intel_connector *connector;
 
 		if (other == encoder)
@@ -2925,6 +2936,7 @@ get_encoder_by_ddc_pin(struct intel_encoder *encoder, u8 ddc_pin)
 
 static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_encoder *other;
 	const char *source;
@@ -2939,20 +2951,22 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 	}
 
 	if (!intel_gmbus_is_valid_pin(i915, ddc_pin)) {
-		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Invalid DDC pin %d\n",
+		drm_dbg_kms(display->drm,
+			    "[ENCODER:%d:%s] Invalid DDC pin %d\n",
 			    encoder->base.base.id, encoder->base.name, ddc_pin);
 		return 0;
 	}
 
 	other = get_encoder_by_ddc_pin(encoder, ddc_pin);
 	if (other) {
-		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] DDC pin %d already claimed by [ENCODER:%d:%s]\n",
+		drm_dbg_kms(display->drm,
+			    "[ENCODER:%d:%s] DDC pin %d already claimed by [ENCODER:%d:%s]\n",
 			    encoder->base.base.id, encoder->base.name, ddc_pin,
 			    other->base.base.id, other->base.name);
 		return 0;
 	}
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[ENCODER:%d:%s] Using DDC pin 0x%x (%s)\n",
 		    encoder->base.base.id, encoder->base.name,
 		    ddc_pin, source);
@@ -2962,6 +2976,7 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 
 void intel_infoframe_init(struct intel_digital_port *dig_port)
 {
+	struct intel_display *display = to_intel_display(dig_port);
 	struct drm_i915_private *dev_priv =
 		to_i915(dig_port->base.base.dev);
 
@@ -2975,7 +2990,7 @@ void intel_infoframe_init(struct intel_digital_port *dig_port)
 		dig_port->read_infoframe = g4x_read_infoframe;
 		dig_port->set_infoframes = g4x_set_infoframes;
 		dig_port->infoframes_enabled = g4x_infoframes_enabled;
-	} else if (HAS_DDI(dev_priv)) {
+	} else if (HAS_DDI(display)) {
 		if (intel_bios_encoder_is_lspcon(dig_port->base.devdata)) {
 			dig_port->write_infoframe = lspcon_write_infoframe;
 			dig_port->read_infoframe = lspcon_read_infoframe;
@@ -3003,6 +3018,7 @@ void intel_infoframe_init(struct intel_digital_port *dig_port)
 void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 			       struct intel_connector *intel_connector)
 {
+	struct intel_display *display = to_intel_display(dig_port);
 	struct drm_connector *connector = &intel_connector->base;
 	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
 	struct intel_encoder *intel_encoder = &dig_port->base;
@@ -3012,11 +3028,11 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 	struct cec_connector_info conn_info;
 	u8 ddc_pin;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "Adding HDMI connector on [ENCODER:%d:%s]\n",
 		    intel_encoder->base.base.id, intel_encoder->base.name);
 
-	if (DISPLAY_VER(dev_priv) < 12 && drm_WARN_ON(dev, port == PORT_A))
+	if (DISPLAY_VER(display) < 12 && drm_WARN_ON(dev, port == PORT_A))
 		return;
 
 	if (drm_WARN(dev, dig_port->max_lanes < 4,
@@ -3036,18 +3052,18 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 
 	drm_connector_helper_add(connector, &intel_hdmi_connector_helper_funcs);
 
-	if (DISPLAY_VER(dev_priv) < 12)
+	if (DISPLAY_VER(display) < 12)
 		connector->interlace_allowed = true;
 
 	connector->stereo_allowed = true;
 
-	if (DISPLAY_VER(dev_priv) >= 10)
+	if (DISPLAY_VER(display) >= 10)
 		connector->ycbcr_420_allowed = true;
 
 	intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
 	intel_connector->base.polled = intel_connector->polled;
 
-	if (HAS_DDI(dev_priv))
+	if (HAS_DDI(display))
 		intel_connector->get_hw_state = intel_ddi_connector_get_hw_state;
 	else
 		intel_connector->get_hw_state = intel_connector_get_hw_state;
@@ -3061,7 +3077,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 		int ret = intel_hdcp_init(intel_connector, dig_port,
 					  &intel_hdmi_hdcp_shim);
 		if (ret)
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "HDCP init failed, skipping.\n");
 	}
 
@@ -3071,7 +3087,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 		cec_notifier_conn_register(dev->dev, port_identifier(port),
 					   &conn_info);
 	if (!intel_hdmi->cec_notifier)
-		drm_dbg_kms(&dev_priv->drm, "CEC notifier get failed\n");
+		drm_dbg_kms(display->drm, "CEC notifier get failed\n");
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index 6b39df38d57a..9b97623665c5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -58,6 +58,5 @@ int intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
 				  int src_max_slices, int src_max_slice_width,
 				  int hdmi_max_slices, int hdmi_throughput);
 int intel_hdmi_dsc_get_slice_height(int vactive);
-struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi);
 
 #endif /* __INTEL_HDMI_H__ */
-- 
2.39.2

