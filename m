Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 284B6334B59
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:17:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C34C6EA78;
	Wed, 10 Mar 2021 22:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F05F36EA7C
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:54 +0000 (UTC)
IronPort-SDR: dSqnn+xL18lhV23DMu2ULMSPX+GhJ2CmM/2bu1ZWKIjZ/f+xf7JJgVI/rSu5jMfEGPucDASQHD
 Ftyp6K5RSduw==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592088"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592088"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:54 -0800
IronPort-SDR: Ja2zuEIDr5o95tNOGVyarLb6rxCTnbx5XYR1jCNJE7m0FOMUbHJJXZqWcLjoyOWImdX/yFxTo1
 zYF9YgradHTA==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852261"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:53 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:28 +0200
Message-Id: <20210310221736.2963264-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/23] drm/i915/intel_fb: Factor out
 calc_plane_aligned_offset()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Factor out to a new function the logic to convert the FB plane x/y
values to a tile size based offset and new x/y relative to this offset.
This makes intel_fill_fb_info() and intel_plane_remap_gtt() somewhat
more readable.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 26 ++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 806341c229f0..62a8e37dca38 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -559,6 +559,21 @@ static int convert_plane_offset_to_xy(const struct intel_framebuffer *fb, int co
 	return 0;
 }
 
+static u32 calc_plane_aligned_offset(const struct intel_framebuffer *fb, int color_plane, int *x, int *y)
+{
+	const struct drm_framebuffer *drm_fb = &fb->base;
+	struct drm_i915_private *i915 = to_i915(drm_fb->dev);
+	unsigned int tile_size = intel_tile_size(i915);
+	u32 offset;
+
+	offset = intel_compute_aligned_offset(i915, x, y, drm_fb, color_plane,
+					      drm_fb->pitches[color_plane],
+					      DRM_MODE_ROTATE_0,
+					      tile_size);
+
+	return offset / tile_size;
+}
+
 /*
  * Setup the rotated view for an FB plane and return the size the GTT mapping
  * requires for this view.
@@ -661,11 +676,7 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct drm_framebuffer *fb
 		intel_fb->normal[i].x = x;
 		intel_fb->normal[i].y = y;
 
-		offset = intel_compute_aligned_offset(i915, &x, &y, fb, i,
-						      fb->pitches[i],
-						      DRM_MODE_ROTATE_0,
-						      tile_size);
-		offset /= tile_size;
+		offset = calc_plane_aligned_offset(intel_fb, i, &x, &y);
 
 		if (!is_surface_linear(fb, i)) {
 			struct intel_remapped_plane_info plane_info;
@@ -774,10 +785,7 @@ static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
 		x += intel_fb->normal[i].x;
 		y += intel_fb->normal[i].y;
 
-		offset = intel_compute_aligned_offset(i915, &x, &y,
-						      fb, i, fb->pitches[i],
-						      DRM_MODE_ROTATE_0, tile_size);
-		offset /= tile_size;
+		offset = calc_plane_aligned_offset(intel_fb, i, &x, &y);
 
 		drm_WARN_ON(&i915->drm, i >= ARRAY_SIZE(info->plane));
 		info->plane[i].offset = offset;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
