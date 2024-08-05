Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4CD94752F
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 08:26:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B61D710E122;
	Mon,  5 Aug 2024 06:25:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JPG8wwy1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3403410E122
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 06:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722839158; x=1754375158;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DtGXjSsXIt3L0VQCO2tO0jOPQehbPPvwqQneI9BzoXA=;
 b=JPG8wwy11j0QouqfYiSFdC2NejHB8oZtS0TjWFkRlS5PmNtsK9Wwyvu+
 Wk6kj5O35QK4WqzYLdZ0lOD9uCk4SO7rxGaGRGYCkAeU++jlni1XRox/p
 HwOATmAV8Khxjva9rEZhUM24MeSPdhQcsvTtzLF8tx2TL1aiom0nCAxrC
 SVOt5+X3WTXQU8WZUt97m2wuF45Nma89+7nUxw2yjRNsQ5TJyLyB+Y/NB
 6tkw+9Ct1XA6wtGj5H3b0OhM9WU7O7gkA62i8Yi+11thzQnnaUaIECDSQ
 jmcApQiKwFUAMpZEsCaqjNbC4AxWVtDULuhSGVaLxI6v6ybtmc99PSQuZ A==;
X-CSE-ConnectionGUID: nwVJz24oT8qkj6SrtpcFfQ==
X-CSE-MsgGUID: GCF9/0HFSJCygDB4YAjS5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11154"; a="20921309"
X-IronPort-AV: E=Sophos;i="6.09,263,1716274800"; d="scan'208";a="20921309"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2024 23:25:58 -0700
X-CSE-ConnectionGUID: 1bsi7hJcSE2wfGgL/ulk6w==
X-CSE-MsgGUID: BroNFgJ/Ti6SVYwOC50x8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,263,1716274800"; d="scan'208";a="56260811"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa006.jf.intel.com with ESMTP; 04 Aug 2024 23:25:57 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 1/2] drm/i915/display: Refactor pch_panel_fitting to use local
 variables for crtc dimensions
Date: Mon,  5 Aug 2024 11:55:37 +0530
Message-Id: <20240805062538.1844291-2-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240805062538.1844291-1-nemesa.garg@intel.com>
References: <20240805062538.1844291-1-nemesa.garg@intel.com>
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

Refactor pch_panel_fitting to use local variables for crtc_hdisplay
and crtc_vdisplay. This will help to adjust the hdisplay at one place
when big/ultra joiner is involved. Introduce local variables crtc_hdisplay
and crtc_vdisplay and update all references to adjusted_mode->crtc_hdisplay
and adjusted_mode->crtc_vdisplay to use the new local variables.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 34 ++++++++++++----------
 1 file changed, 18 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 71454ddef20f..dd18136d1c61 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -392,10 +392,12 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
 	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
 	int x, y, width, height;
+	u16 crtc_hdisplay = adjusted_mode->crtc_hdisplay;
+	u16 crtc_vdisplay = adjusted_mode->crtc_vdisplay;
 
 	/* Native modes don't need fitting */
-	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
-	    adjusted_mode->crtc_vdisplay == pipe_src_h &&
+	if (crtc_hdisplay == pipe_src_w &&
+	    crtc_vdisplay == pipe_src_h &&
 	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
 		return 0;
 
@@ -403,45 +405,45 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	case DRM_MODE_SCALE_CENTER:
 		width = pipe_src_w;
 		height = pipe_src_h;
-		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
-		y = (adjusted_mode->crtc_vdisplay - height + 1)/2;
+		x = (crtc_hdisplay - width + 1) / 2;
+		y = (crtc_vdisplay - height + 1) / 2;
 		break;
 
 	case DRM_MODE_SCALE_ASPECT:
 		/* Scale but preserve the aspect ratio */
 		{
-			u32 scaled_width = adjusted_mode->crtc_hdisplay * pipe_src_h;
-			u32 scaled_height = pipe_src_w * adjusted_mode->crtc_vdisplay;
+			u32 scaled_width = crtc_hdisplay * pipe_src_h;
+			u32 scaled_height = pipe_src_w * crtc_vdisplay;
 			if (scaled_width > scaled_height) { /* pillar */
 				width = scaled_height / pipe_src_h;
 				if (width & 1)
 					width++;
-				x = (adjusted_mode->crtc_hdisplay - width + 1) / 2;
+				x = (crtc_hdisplay - width + 1) / 2;
 				y = 0;
-				height = adjusted_mode->crtc_vdisplay;
+				height = crtc_vdisplay;
 			} else if (scaled_width < scaled_height) { /* letter */
 				height = scaled_width / pipe_src_w;
 				if (height & 1)
 				    height++;
-				y = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
+				y = (crtc_vdisplay - height + 1) / 2;
 				x = 0;
-				width = adjusted_mode->crtc_hdisplay;
+				width = crtc_hdisplay;
 			} else {
 				x = y = 0;
-				width = adjusted_mode->crtc_hdisplay;
-				height = adjusted_mode->crtc_vdisplay;
+				width = crtc_hdisplay;
+				height = crtc_vdisplay;
 			}
 		}
 		break;
 
 	case DRM_MODE_SCALE_NONE:
-		WARN_ON(adjusted_mode->crtc_hdisplay != pipe_src_w);
-		WARN_ON(adjusted_mode->crtc_vdisplay != pipe_src_h);
+		WARN_ON(crtc_hdisplay != pipe_src_w);
+		WARN_ON(crtc_vdisplay != pipe_src_h);
 		fallthrough;
 	case DRM_MODE_SCALE_FULLSCREEN:
 		x = y = 0;
-		width = adjusted_mode->crtc_hdisplay;
-		height = adjusted_mode->crtc_vdisplay;
+		width = crtc_hdisplay;
+		height = crtc_vdisplay;
 		break;
 
 	default:
-- 
2.25.1

