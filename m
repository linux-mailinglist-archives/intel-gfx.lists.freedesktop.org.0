Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 700DD99955F
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 00:43:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11F4C10E9F7;
	Thu, 10 Oct 2024 22:43:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="InW+uhMz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6540A10E151;
 Thu, 10 Oct 2024 22:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728600199; x=1760136199;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=exWGODAA0TWci0AkL8b+xk5px+ZNTLVDQK3QTT73Ogo=;
 b=InW+uhMz7TcvRfBuQgjDM/4BaNShSy0CbqXeOVH87aCyzaFOOZic2pBE
 HmR7gmTSwaD2oAADJGpxYnT2+3qEGWzMJdP0c9bU4TQ9MEnEJwi66DSfx
 ig5Xi/8ErPYPJKmyEd1LOO8sRT2XkgmMLe8CBc0RWTiBtYoXAflvX8h8n
 iCU06A9JKH3PF2iVrbbIKl0PmgVH21NhdX9HBMiSjq8rlG/5DI9XzaDsK
 c8dF67/s1l39PVpubz++28WW6jXfPUcbDw9r0mwMUpvo5jBX0NWFk5iJk
 z7VjMlTDPYUp4hVujOPYVsIGmDlufNRJZ6AXzgSWvJufLRNChWduN5+4z A==;
X-CSE-ConnectionGUID: En+fIOK2Rgut4+lJMDVkng==
X-CSE-MsgGUID: ypE2jAcPQbyRi81U04gvMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="39380864"
X-IronPort-AV: E=Sophos;i="6.11,194,1725346800"; d="scan'208";a="39380864"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 15:43:19 -0700
X-CSE-ConnectionGUID: 6k6XIz/nQ6WTn4G7nEcoPQ==
X-CSE-MsgGUID: 4jwXy6lgT82SoRhRsQB5Dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,194,1725346800"; d="scan'208";a="76732017"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.132])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 15:43:18 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 02/10] drm/i915/xe3lpd: Adjust watermark calculations
Date: Thu, 10 Oct 2024 15:43:03 -0700
Message-ID: <20241010224311.50133-3-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241010224311.50133-1-matthew.s.atwood@intel.com>
References: <20241010224311.50133-1-matthew.s.atwood@intel.com>
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

From: Matt Roper <matthew.d.roper@intel.com>

Xe3 makes a couple minor tweaks to the watermark algorithm's block count
calculations.

Bspec: 68985
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 6e1f04d5ef47..31de33e868df 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -718,7 +718,7 @@ static int skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 				 int width, const struct drm_format_info *format,
 				 u64 modifier, unsigned int rotation,
 				 u32 plane_pixel_rate, struct skl_wm_params *wp,
-				 int color_plane);
+				 int color_plane, unsigned int pan_x);
 
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 struct intel_plane *plane,
@@ -765,7 +765,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 				    drm_format_info(DRM_FORMAT_ARGB8888),
 				    DRM_FORMAT_MOD_LINEAR,
 				    DRM_MODE_ROTATE_0,
-				    crtc_state->pixel_rate, &wp, 0);
+				    crtc_state->pixel_rate, &wp, 0, 0);
 	drm_WARN_ON(&i915->drm, ret);
 
 	for (level = 0; level < i915->display.wm.num_levels; level++) {
@@ -1742,7 +1742,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		      int width, const struct drm_format_info *format,
 		      u64 modifier, unsigned int rotation,
 		      u32 plane_pixel_rate, struct skl_wm_params *wp,
-		      int color_plane)
+		      int color_plane, unsigned int pan_x)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
@@ -1803,7 +1803,9 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 					   wp->y_min_scanlines,
 					   wp->dbuf_block_size);
 
-		if (DISPLAY_VER(i915) >= 10)
+		if (DISPLAY_VER(i915) >= 30)
+			interm_pbpl += (pan_x != 0);
+		else if (DISPLAY_VER(i915) >= 10)
 			interm_pbpl++;
 
 		wp->plane_blocks_per_line = div_fixed16(interm_pbpl,
@@ -1845,7 +1847,8 @@ skl_compute_plane_wm_params(const struct intel_crtc_state *crtc_state,
 				     fb->format, fb->modifier,
 				     plane_state->hw.rotation,
 				     intel_plane_pixel_rate(crtc_state, plane_state),
-				     wp, color_plane);
+				     wp, color_plane,
+				     plane_state->uapi.src.x1);
 }
 
 static bool skl_wm_has_lines(struct drm_i915_private *i915, int level)
@@ -1909,7 +1912,10 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 		}
 	}
 
-	blocks = fixed16_to_u32_round_up(selected_result) + 1;
+	blocks = fixed16_to_u32_round_up(selected_result);
+	if (DISPLAY_VER(i915) < 30)
+		blocks++;
+
 	/*
 	 * Lets have blocks at minimum equivalent to plane_blocks_per_line
 	 * as there will be at minimum one line for lines configuration. This
-- 
2.45.0

