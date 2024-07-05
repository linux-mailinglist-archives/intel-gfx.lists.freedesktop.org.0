Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F5C92855A
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 11:43:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C4B310E94A;
	Fri,  5 Jul 2024 09:43:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bgyyyZuQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D01810E923
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2024 09:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720172627; x=1751708627;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aXBE4IYmubJEyPECsnmlzYy3wh6rMcpPmWvZBdRutk8=;
 b=bgyyyZuQRZhC/1hx9Yu8yAFmnM90BEQCZ+2YeCeiPLqv/6qagEIvn+pP
 9xYp+gtE0UDKJvMjxhuj5csyu9QpnrZWkLeDTKL/QHRS75Jl0aXIbTuAv
 CJt7xpYEopJROt6RbfMmwVe5eeDDuRwm8OGXV06h6SgSrH9C073VB//5U
 I4V9NDFHfBuuozg8YYW1h1ylGEP7xnqQ4q8DC5IfWPouKm23WuBm2OfQ2
 335TIYkOnCjF+xRQvxIYAe8PCXQVxCXZ94S2a7HwKIi0EGp5CxDQ8Ih9a
 kTDXjZVv02Uhw2qanrUA5wCw+5NFzR9H3O8Z3+YJLHfrewY1U5hZY6wlA g==;
X-CSE-ConnectionGUID: VYVpKxbwRJCVjd9rpdXMKg==
X-CSE-MsgGUID: VcC9753ORUG+94h2vlA+Bw==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="34903231"
X-IronPort-AV: E=Sophos;i="6.09,184,1716274800"; d="scan'208";a="34903231"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 02:43:47 -0700
X-CSE-ConnectionGUID: NxOkR4fXSSGjbGoIaBxQPw==
X-CSE-MsgGUID: 7OrXxRDBRb2J+gqrIidl4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,184,1716274800"; d="scan'208";a="52015235"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa004.jf.intel.com with ESMTP; 05 Jul 2024 02:43:45 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/display: Call panel_fitting function from pipe_config
Date: Fri,  5 Jul 2024 15:13:08 +0530
Message-Id: <20240705094308.73498-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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

In panel fitter/pipe scaler scenario the pch_pfit configuration
currently takes place before we account for bigjoiner.
So once the calculation for bigjoiner is done, proper values
of width and height can be used for panel fitting.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 11 +++++
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  6 +--
 drivers/gpu/drm/i915/display/intel_panel.c    | 42 ++++++++++++++-----
 4 files changed, 45 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c2c388212e2e..182ffd17a365 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4774,6 +4774,17 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		    crtc->base.base.id, crtc->base.name,
 		    base_bpp, crtc_state->pipe_bpp, crtc_state->dither);
 
+	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
+		if (connector_state->crtc != &crtc->base)
+			continue;
+
+		if (crtc_state->pch_pfit.is_pch_required) {
+			ret = intel_panel_fitting(crtc_state, connector_state);
+			if (ret)
+				return ret;
+		}
+	}
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8713835e2307..067b123408bf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1251,6 +1251,7 @@ struct intel_crtc_state {
 		struct drm_rect dst;
 		bool enabled;
 		bool force_thru;
+		bool is_pch_required;
 	} pch_pfit;
 
 	/* FDI configuration, only valid if has_pch_encoder is set. */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3903f6ead6e6..d424a328cfca 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2952,10 +2952,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		return ret;
 
 	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
-	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
-		ret = intel_panel_fitting(pipe_config, conn_state);
-		if (ret)
-			return ret;
+	     pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+		pipe_config->pch_pfit.is_pch_required = true;
 	}
 
 	pipe_config->limited_color_range =
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 71454ddef20f..69b4c09c634b 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -403,8 +403,11 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	case DRM_MODE_SCALE_CENTER:
 		width = pipe_src_w;
 		height = pipe_src_h;
-		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
-		y = (adjusted_mode->crtc_vdisplay - height + 1)/2;
+		if (crtc_state->joiner_pipes)
+			x = (adjusted_mode->crtc_hdisplay / 2 - width + 1) / 2;
+		else
+			x = (adjusted_mode->crtc_hdisplay - width + 1) / 2;
+		y = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
 		break;
 
 	case DRM_MODE_SCALE_ASPECT:
@@ -412,11 +415,18 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 		{
 			u32 scaled_width = adjusted_mode->crtc_hdisplay * pipe_src_h;
 			u32 scaled_height = pipe_src_w * adjusted_mode->crtc_vdisplay;
+			int adjusted_crtc_hdisplay = adjusted_mode->crtc_hdisplay;
+
+			if (crtc_state->joiner_pipes) {
+				scaled_width = adjusted_mode->crtc_hdisplay / 2 * pipe_src_h;
+				adjusted_crtc_hdisplay = adjusted_mode->crtc_hdisplay / 2;
+			}
+
 			if (scaled_width > scaled_height) { /* pillar */
 				width = scaled_height / pipe_src_h;
 				if (width & 1)
 					width++;
-				x = (adjusted_mode->crtc_hdisplay - width + 1) / 2;
+				x = (adjusted_crtc_hdisplay - width + 1) / 2;
 				y = 0;
 				height = adjusted_mode->crtc_vdisplay;
 			} else if (scaled_width < scaled_height) { /* letter */
@@ -425,25 +435,35 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 				    height++;
 				y = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
 				x = 0;
-				width = adjusted_mode->crtc_hdisplay;
+				width = adjusted_crtc_hdisplay;
 			} else {
 				x = y = 0;
-				width = adjusted_mode->crtc_hdisplay;
+				width = adjusted_crtc_hdisplay;
 				height = adjusted_mode->crtc_vdisplay;
 			}
 		}
 		break;
 
 	case DRM_MODE_SCALE_NONE:
-		WARN_ON(adjusted_mode->crtc_hdisplay != pipe_src_w);
-		WARN_ON(adjusted_mode->crtc_vdisplay != pipe_src_h);
+		if (crtc_state->joiner_pipes) {
+			WARN_ON(adjusted_mode->crtc_hdisplay / 2 != pipe_src_w);
+			WARN_ON(adjusted_mode->crtc_vdisplay != pipe_src_h);
+		} else {
+			WARN_ON(adjusted_mode->crtc_hdisplay != pipe_src_w);
+			WARN_ON(adjusted_mode->crtc_vdisplay != pipe_src_h);
+		}
 		fallthrough;
 	case DRM_MODE_SCALE_FULLSCREEN:
-		x = y = 0;
-		width = adjusted_mode->crtc_hdisplay;
-		height = adjusted_mode->crtc_vdisplay;
+		if (crtc_state->joiner_pipes) {
+			x = y = 0;
+			width = adjusted_mode->crtc_hdisplay / 2;
+			height = adjusted_mode->crtc_vdisplay;
+		} else {
+			x = y = 0;
+			width = adjusted_mode->crtc_hdisplay;
+			height = adjusted_mode->crtc_vdisplay;
+		}
 		break;
-
 	default:
 		MISSING_CASE(conn_state->scaling_mode);
 		return -EINVAL;
-- 
2.25.1

