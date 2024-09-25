Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6309852EA
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 08:30:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6114F10E79C;
	Wed, 25 Sep 2024 06:30:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eVSmEiYg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E425E10E792
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 06:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727245816; x=1758781816;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8J8m+yU6VaYVJl6lXn2QAFjHFgLaSgPD4sqKdymvU4w=;
 b=eVSmEiYgColAY+TvPFjlXTVdnXePj/DyNBjdaa7eUa/Kzse7P2OQVrId
 n7lEMBhmsNABzJGypMY8TsLQGXEns1GFJGyZog6Zar2oKbHQ6wsRY1YGZ
 3axbWhh/NhNmP7lkSLwrqgoETwTRMqQZAiqtugYu3egOBv+ODut5MWD2Z
 Sy/GLDDFZNptmBUs5Zz4y0ipenAywqr9xpqB+G5k1CzwPbNaRz7Ym1zFg
 v3BPAPJCio18WHE3gMRma/7MvLMTcsD3lmCeFv8/7wjCsQMAt7iiVK/aJ
 lmD4HLlIclXxjVyure9ncGMZZObUSxdGIzd7rmfOGfmhhKr6kHPpaZB69 Q==;
X-CSE-ConnectionGUID: Ndmhhb5mTJ68oIZfsflfaw==
X-CSE-MsgGUID: ab0VL5VSQwWLomXdOgfE+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43794782"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="43794782"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 23:30:16 -0700
X-CSE-ConnectionGUID: kXYgpybvRfCYUBqspOcRRQ==
X-CSE-MsgGUID: qLpW2VsCRUKXdBibRLml7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="94989548"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa002.fm.intel.com with ESMTP; 24 Sep 2024 23:30:14 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 1/3] drm/i915/display: Modify panel_fitting code for joiner
Date: Wed, 25 Sep 2024 12:00:30 +0530
Message-Id: <20240925063032.2311796-2-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240925063032.2311796-1-nemesa.garg@intel.com>
References: <20240925063032.2311796-1-nemesa.garg@intel.com>
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

Replace adjusted_mode with pipe_mode in pch_panel_fitting
so as to that final pipe src width and height is used after
joiner calculation. De-couple the current intel_panel_fitting
function, one pre-ilk and one post-ilk, as post-ilk
pch_panel_fitting is called from pipe_config.

v4: Replace adjusted_mode with pipe_mode[Ville]
    Keep gmch panel fitting in same place[Ville]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 52 +++++++++++-----------
 drivers/gpu/drm/i915/display/intel_panel.h |  8 +++-
 2 files changed, 32 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 71454ddef20f..bd25c96f2e57 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -387,15 +387,15 @@ void intel_panel_add_encoder_fixed_mode(struct intel_connector *connector,
 static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
 {
-	const struct drm_display_mode *adjusted_mode =
-		&crtc_state->hw.adjusted_mode;
+	const struct drm_display_mode *pipe_mode =
+		&crtc_state->hw.pipe_mode;
 	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
 	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
 	int x, y, width, height;
 
 	/* Native modes don't need fitting */
-	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
-	    adjusted_mode->crtc_vdisplay == pipe_src_h &&
+	if (pipe_mode->crtc_hdisplay == pipe_src_w &&
+	    pipe_mode->crtc_vdisplay == pipe_src_h &&
 	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
 		return 0;
 
@@ -403,45 +403,45 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	case DRM_MODE_SCALE_CENTER:
 		width = pipe_src_w;
 		height = pipe_src_h;
-		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
-		y = (adjusted_mode->crtc_vdisplay - height + 1)/2;
+		x = (pipe_mode->crtc_hdisplay - width + 1) / 2;
+		y = (pipe_mode->crtc_vdisplay - height + 1) / 2;
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
 			} else if (scaled_width < scaled_height) { /* letter */
 				height = scaled_width / pipe_src_w;
 				if (height & 1)
 				    height++;
-				y = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
+				y = (pipe_mode->crtc_vdisplay - height + 1) / 2;
 				x = 0;
-				width = adjusted_mode->crtc_hdisplay;
+				width = pipe_mode->crtc_hdisplay;
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
@@ -666,16 +666,16 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-int intel_panel_fitting(struct intel_crtc_state *crtc_state,
-			const struct drm_connector_state *conn_state)
+int intel_gch_panel_fitting(struct intel_crtc_state *crtc_state,
+			    const struct drm_connector_state *conn_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	return gmch_panel_fitting(crtc_state, conn_state);
+}
 
-	if (HAS_GMCH(i915))
-		return gmch_panel_fitting(crtc_state, conn_state);
-	else
-		return pch_panel_fitting(crtc_state, conn_state);
+int intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
+			    const struct drm_connector_state *conn_state)
+{
+	return pch_panel_fitting(crtc_state, conn_state);
 }
 
 enum drm_connector_status
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 15a8c897b33f..0f678cd72403 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -42,8 +42,12 @@ enum drrs_type intel_panel_drrs_type(struct intel_connector *connector);
 enum drm_mode_status
 intel_panel_mode_valid(struct intel_connector *connector,
 		       const struct drm_display_mode *mode);
-int intel_panel_fitting(struct intel_crtc_state *crtc_state,
-			const struct drm_connector_state *conn_state);
+int intel_gch_panel_fitting(struct intel_crtc_state *crtc_state,
+			    const struct drm_connector_state *conn_state);
+
+int intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
+			    const struct drm_connector_state *conn_state);
+
 int intel_panel_compute_config(struct intel_connector *connector,
 			       struct drm_display_mode *adjusted_mode);
 void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
-- 
2.25.1

