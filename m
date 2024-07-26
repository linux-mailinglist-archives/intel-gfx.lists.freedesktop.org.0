Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B6A93D0A5
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2024 11:54:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FAEE10E7FC;
	Fri, 26 Jul 2024 09:54:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Va8kBKn/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C732B10E7FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2024 09:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721987665; x=1753523665;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DtGXjSsXIt3L0VQCO2tO0jOPQehbPPvwqQneI9BzoXA=;
 b=Va8kBKn/W7cbAzFZ159+w/mjxEUp0vr5b5HgPDGhvWJ0lcCFIEIZUCWa
 MCWN5OKIruWhDDYP4toeSg7oY7N56cdlCkRqnLTT/RXKd0w9J4qB83vVM
 ep7wxHbW0jrI41/+DD1zWG4LxdWK9ZM3Pl+Pht0m19pXykY+cQzA2IDKo
 46KKo20MwcSwGdK/XXSDqD5zogp9BxmHn/UAo04bRqSkUTF9nwfDqcOQK
 NIgw66pSIoJ3vztef2xcPvJhNCG5lUcq7PP9uf7yuhyCBuDX/a6NuaZdN
 9+aFDRXA0RwDtd1WWQ3LtHJlvnWyVEq8RvJwf3HYOodMblVkuD93vxNiK g==;
X-CSE-ConnectionGUID: fgeEqpkhSierbww2Cm7Nyg==
X-CSE-MsgGUID: rI05G6dbSMmi8NpLIAGkxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="31189395"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="31189395"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 02:54:25 -0700
X-CSE-ConnectionGUID: jx7uZW7GSOONxU57IcY0GQ==
X-CSE-MsgGUID: 7hx+KzRXR9WFQ/ZoE5nfHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="53139933"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa010.jf.intel.com with ESMTP; 26 Jul 2024 02:54:25 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 1/2] drm/i915/display: Refactor pch_panel_fitting to use local
 variables for crtc dimensions
Date: Fri, 26 Jul 2024 15:23:56 +0530
Message-Id: <20240726095357.1261804-2-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240726095357.1261804-1-nemesa.garg@intel.com>
References: <20240726095357.1261804-1-nemesa.garg@intel.com>
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

