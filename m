Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C039D332E
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 06:37:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8312310E389;
	Wed, 20 Nov 2024 05:37:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L2s++SLq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D510610E389;
 Wed, 20 Nov 2024 05:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732081055; x=1763617055;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aG4+RreF/+ksPqP6xBUVVs286sSs20EeOg7lFBu2y5E=;
 b=L2s++SLqimmDD87kX8NEySTMv9OT1YcNTqGfcT9zamqTouKBS9Uwh1LK
 QQd9kshqCjg+5FBIWlMye08EUW1KRb9Ya/eegVTsThyyAxPT6e7O2Xn6O
 Y/W84iFpIxSTssnR2bZtGGpQg15do4dzjz84IpGsp6W7C8fBJOUrGBPfI
 o+aEccGn7RyNzCMu1ZVzJM8grKT+i7ktSFijZa+cyJJ02wNOn0mVDihmA
 ij0bHbzzEiIbYnN4lRoiypQw62dxgxsIWFu3JkNZqiHmraWziT+EdqGdk
 ORNKm/S90NBYFexXHYONIC73RyJkJOjYeXVNaR+Ch8uV4rQgmvj9i6HvM Q==;
X-CSE-ConnectionGUID: eefoH9y6TOOMGwEH5DbikQ==
X-CSE-MsgGUID: 6+5Mm91kQGWmdW+39TmYrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32179441"
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="32179441"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 21:37:35 -0800
X-CSE-ConnectionGUID: 7LDI+gw1TUSZ6QVBzKTyLQ==
X-CSE-MsgGUID: v/xEZDMqQQidrMWhSzQSBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,168,1728975600"; d="scan'208";a="120748952"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa001.fm.intel.com with ESMTP; 19 Nov 2024 21:37:33 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 3/6] drm/i915/display: Replace adjusted mode with pipe mode
Date: Wed, 20 Nov 2024 11:08:35 +0530
Message-Id: <20241120053838.3794419-4-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241120053838.3794419-1-nemesa.garg@intel.com>
References: <20241120053838.3794419-1-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
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

Replace adjusted_mode with pipe_mode in pch_panel_fitting
so as to that final pipe src width and height is used after
joiner calculation. De-couple the current intel_panel_fitting
function, one pre-ilk and one post-ilk, as post-ilk
pch_panel_fitting is called from pipe_config.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  7 +++
 drivers/gpu/drm/i915/display/intel_pfit.c    | 59 +++++++++++++-------
 2 files changed, 47 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9db255bb1230..6ad47cf0d419 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4865,6 +4865,13 @@ copy_joiner_crtc_state_modeset(struct intel_atomic_state *state,
 		drm_dp_tunnel_ref_get(primary_crtc_state->dp_tunnel_ref.tunnel,
 				      &secondary_crtc_state->dp_tunnel_ref);
 
+	if (secondary_crtc_state->pch_pfit.enabled) {
+		struct drm_rect *dst = &secondary_crtc_state->pch_pfit.dst;
+		int y = dst->y1;
+
+		drm_rect_translate_to(dst, 0, y);
+	}
+
 	copy_joiner_crtc_state_nomodeset(state, secondary_crtc);
 
 	secondary_crtc_state->uapi.mode_changed = primary_crtc_state->uapi.mode_changed;
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index fb6387b537b7..b2619e1c4021 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -181,18 +181,19 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
+	const struct drm_display_mode *pipe_mode =
+		&crtc_state->hw.pipe_mode;
 	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
 	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
-	int ret, x, y, width, height;
+	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
+	int ret, x, y, width, height, hdisplay_full, src_w_full;
 
 	if (crtc_state->joiner_pipes)
 		return 0;
 
 	/* Native modes don't need fitting */
-	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
-	    adjusted_mode->crtc_vdisplay == pipe_src_h &&
+	if (pipe_mode->crtc_hdisplay == pipe_src_w &&
+	    pipe_mode->crtc_vdisplay == pipe_src_h &&
 	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
 		return 0;
 
@@ -200,46 +201,66 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	case DRM_MODE_SCALE_CENTER:
 		width = pipe_src_w;
 		height = pipe_src_h;
-		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
-		y = (adjusted_mode->crtc_vdisplay - height + 1)/2;
+		x = (pipe_mode->crtc_hdisplay - width + 1) / 2;
+		y = (pipe_mode->crtc_vdisplay - height + 1) / 2;
+		/*
+		 * The x-coordinate for Primary should be calculated in such a way
+		 * that it remains consistent whether the pipes are joined or not.
+		 * This means we need to consider the full width of the display even
+		 * when the pipes are joined. The x-coordinate for secondaries is 0
+		 * because it starts at the leftmost point of its own display area,
+		 * ensuring that the framebuffer is centered within Pipe B’s portion
+		 * of the overall display.
+		 */
+		if (intel_crtc_is_joiner_primary(crtc_state)) {
+			hdisplay_full = pipe_mode->crtc_hdisplay * num_pipes;
+			src_w_full = width * num_pipes;
+			x = (hdisplay_full - src_w_full + 1) / 2;
+		}
 		break;
 
 	case DRM_MODE_SCALE_ASPECT:
 		/* Scale but preserve the aspect ratio */
 		{
-			u32 scaled_width = adjusted_mode->crtc_hdisplay * pipe_src_h;
-			u32 scaled_height = pipe_src_w * adjusted_mode->crtc_vdisplay;
+			u32 scaled_width = pipe_mode->crtc_hdisplay * pipe_src_h;
+			u32 scaled_height = pipe_src_w * pipe_mode->crtc_vdisplay;
 
 			if (scaled_width > scaled_height) { /* pillar */
 				width = scaled_height / pipe_src_h;
 				if (width & 1)
 					width++;
-				x = (adjusted_mode->crtc_hdisplay - width + 1) / 2;
+				x = (pipe_mode->crtc_hdisplay - width + 1) / 2;
 				y = 0;
-				height = adjusted_mode->crtc_vdisplay;
+				height = pipe_mode->crtc_vdisplay;
+				if (intel_crtc_is_joiner_primary(crtc_state)) {
+					hdisplay_full = pipe_mode->crtc_hdisplay * num_pipes;
+					src_w_full = width * num_pipes;
+					x = (hdisplay_full - src_w_full + 1) / 2;
+				}
 			} else if (scaled_width < scaled_height) { /* letter */
 				height = scaled_width / pipe_src_w;
 				if (height & 1)
 					height++;
-				y = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
+				y = (pipe_mode->crtc_vdisplay - height + 1) / 2;
 				x = 0;
-				width = adjusted_mode->crtc_hdisplay;
+				width = pipe_mode->crtc_hdisplay;
+
 			} else {
 				x = y = 0;
-				width = adjusted_mode->crtc_hdisplay;
-				height = adjusted_mode->crtc_vdisplay;
+				width = pipe_mode->crtc_hdisplay;
+				height = pipe_mode->crtc_vdisplay;
 			}
 		}
 		break;
 
 	case DRM_MODE_SCALE_NONE:
-		WARN_ON(adjusted_mode->crtc_hdisplay != pipe_src_w);
-		WARN_ON(adjusted_mode->crtc_vdisplay != pipe_src_h);
+		WARN_ON(pipe_mode->crtc_hdisplay != pipe_src_w);
+		WARN_ON(pipe_mode->crtc_vdisplay != pipe_src_h);
 		fallthrough;
 	case DRM_MODE_SCALE_FULLSCREEN:
 		x = y = 0;
-		width = adjusted_mode->crtc_hdisplay;
-		height = adjusted_mode->crtc_vdisplay;
+		width = pipe_mode->crtc_hdisplay;
+		height = pipe_mode->crtc_vdisplay;
 		break;
 
 	default:
-- 
2.25.1

