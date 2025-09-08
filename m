Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7539B4858A
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 09:38:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D9E710E486;
	Mon,  8 Sep 2025 07:38:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="chROQJwI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3655810E482
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 07:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757317077; x=1788853077;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TTDASxs7juqPMkK8/B3XTsJkGpOi7dHqNZYwaMKcyGQ=;
 b=chROQJwI7DFl45Hy+8AMekM/J6zTeq/9j8LtgtzxYGw9CZX5rVf2aor5
 +OypdPxhgZp0dxilik1Z4TDyyW83AwHmpsngpdA5qUFXsmIChUGUTvBsB
 1BzuBSnk3zrUE2ML6QZ0LyalIDQoip8LbVZf3gYYAV9f1Pa/rkLHrZAdw
 LLSPx91f4oU//nD6q0Ya7iCfSpIb5r3tAD1cr1fRx/rZF3isOYU11rlgV
 TrH+JMsk3zi4rD+owb5dBUl/Xi3IM8HH/UYUb0LP+ELALEc41/aZkbWVW
 zhwhymzpGKUwUBxfPYEfC0BhwknILD4+CIkXPbiGMINha7empIl3OB+JF A==;
X-CSE-ConnectionGUID: UKqxgm1XQi2AolBe/FRlcg==
X-CSE-MsgGUID: cJ7cYyuBStqtdFEY8dvu9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="59506310"
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="59506310"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:37:57 -0700
X-CSE-ConnectionGUID: tAIREUYSTlyeb49bENoicg==
X-CSE-MsgGUID: s8AIUDxfSdqN1bEBHd/39Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="171987008"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.210])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:37:56 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/6] drm/i915/wm: move method selection and calculation to a
 separate function
Date: Mon,  8 Sep 2025 10:35:35 +0300
Message-ID: <20250908073734.1180687-7-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250908073734.1180687-1-luciano.coelho@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
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

Isolate the code that handles method selection and calculation, so
skl_compute_plane_wm() doesn't get too long.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 51 ++++++++++++--------
 1 file changed, 31 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 21f8d52ec1d2..33853a18ee9c 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1806,25 +1806,14 @@ static bool xe3_auto_min_alloc_capable(struct intel_plane *plane, int level)
 	return DISPLAY_VER(display) >= 30 && level == 0 && plane->id != PLANE_CURSOR;
 }
 
-static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
-				 struct intel_plane *plane,
-				 int level,
-				 unsigned int latency,
-				 const struct skl_wm_params *wp,
-				 const struct skl_wm_level *result_prev,
-				 struct skl_wm_level *result /* out */)
+static uint_fixed_16_16_t
+skl_wm_run_method(struct intel_display *display,
+		  const struct intel_crtc_state *crtc_state,
+		  const struct skl_wm_params *wp,
+		  unsigned int latency)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
 	uint_fixed_16_16_t method1, method2;
 	uint_fixed_16_16_t selected_result;
-	u32 blocks, lines, min_ddb_alloc = 0;
-
-	if (latency == 0 ||
-	    (use_minimal_wm0_only(crtc_state, plane) && level > 0)) {
-		/* reject it */
-		result->min_ddb_alloc = U16_MAX;
-		return;
-	}
 
 	method1 = skl_wm_method1(display, wp->plane_pixel_rate,
 				 wp->cpp, latency, wp->dbuf_block_size);
@@ -1837,7 +1826,9 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	case WM_TILING_Y_FAMILY:
 		selected_result = max_fixed16(method2, wp->y_tile_minimum);
 		break;
-
+	default:
+		MISSING_CASE(wp->tiling);
+		fallthrough;
 	case WM_TILING_LINEAR:
 	case WM_TILING_X_TILED:
 		/*
@@ -1862,12 +1853,32 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 			selected_result = method1;
 		}
 		break;
+	}
 
-	default:
-		drm_err(display->drm, "Invalid tiling mode\n", wp->tiling);
-		break;
+	return selected_result;
+}
+
+static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
+				 struct intel_plane *plane,
+				 int level,
+				 unsigned int latency,
+				 const struct skl_wm_params *wp,
+				 const struct skl_wm_level *result_prev,
+				 struct skl_wm_level *result /* out */)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	uint_fixed_16_16_t selected_result;
+	u32 blocks, lines, min_ddb_alloc = 0;
+
+	if (latency == 0 ||
+	    (use_minimal_wm0_only(crtc_state, plane) && level > 0)) {
+		/* reject it */
+		result->min_ddb_alloc = U16_MAX;
+		return;
 	}
 
+	selected_result = skl_wm_run_method(display, crtc_state, wp, latency);
+
 	blocks = fixed16_to_u32_round_up(selected_result);
 	if (DISPLAY_VER(display) < 30)
 		blocks++;
-- 
2.50.1

