Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC52334B5E
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:18:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDA9D6EA84;
	Wed, 10 Mar 2021 22:18:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05E2C6EA7F
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:55 +0000 (UTC)
IronPort-SDR: 998rDDB9kaBEJ+VQw0DriFaMIuTozyXpwj46bjwYOe0tskm7EtXctuHtdhCvLNoyqllgPgVh8J
 EWMTDvmRxIXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592091"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592091"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:55 -0800
IronPort-SDR: dqS3/kwLzqwl1y0gwO9TQ2w1lM2Ly4opz3lIty3s7USTR+tWbwSegxef5PdJp/i0CMM7akih2I
 7/GiSHL6TPvQ==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852273"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:54 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:29 +0200
Message-Id: <20210310221736.2963264-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/23] drm/i915/intel_fb: Factor out
 calc_plane_normal_size()
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

Factor out to a new function the logic to calculate an FB plane's
normal-view size.

Instead of using intel_remapped_plane_info, which is related only to
remapping, add a helper to get the tile pitch and rows for an FB plane,
so these helpers can be used both by the normal size calculation and the
remapping code.

Also add a new fb_plane_view_dims struct in which we can pass around the
view (either FB plane or plane source) and tile dimensions conveniently
to functions calculating further view parameters.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 82 ++++++++++++++++++-------
 1 file changed, 61 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 62a8e37dca38..f661b21b119d 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -634,6 +634,59 @@ static u32 setup_fb_rotation(int plane, const struct intel_remapped_plane_info *
 	return plane_info->width * plane_info->height;
 }
 
+struct fb_plane_view_dims {
+	unsigned int width, height;
+	unsigned int tile_width, tile_height;
+};
+
+static void init_plane_view_dims(const struct intel_framebuffer *fb, int color_plane,
+				 unsigned int width, unsigned int height,
+				 struct fb_plane_view_dims *dims)
+{
+	dims->width = width;
+	dims->height = height;
+
+	intel_tile_dims(&fb->base, color_plane, &dims->tile_width, &dims->tile_height);
+}
+
+static unsigned int plane_view_stride_tiles(const struct intel_framebuffer *fb, int color_plane,
+					    const struct fb_plane_view_dims *dims)
+{
+	const struct drm_framebuffer *drm_fb = &fb->base;
+
+	return DIV_ROUND_UP(drm_fb->pitches[color_plane],
+			    dims->tile_width * drm_fb->format->cpp[color_plane]);
+}
+
+static unsigned int plane_view_tile_rows(const struct intel_framebuffer *fb, int color_plane,
+					 const struct fb_plane_view_dims *dims,
+					 int y)
+{
+	return DIV_ROUND_UP(y + dims->height, dims->tile_height);
+}
+
+static int calc_plane_normal_size(const struct intel_framebuffer *fb, int color_plane,
+				  const struct fb_plane_view_dims *dims,
+				  int x, int y)
+{
+	const struct drm_framebuffer *drm_fb = &fb->base;
+	struct drm_i915_private *i915 = to_i915(drm_fb->dev);
+	int pages;
+
+	if (is_surface_linear(drm_fb, color_plane)) {
+		unsigned int size;
+
+		size = (y + dims->height) * drm_fb->pitches[color_plane] +
+		       x * drm_fb->format->cpp[color_plane];
+		pages = DIV_ROUND_UP(size, intel_tile_size(i915));
+	} else {
+		pages = plane_view_stride_tiles(fb, color_plane, dims) *
+			plane_view_tile_rows(fb, color_plane, dims, y);
+	}
+
+	return pages;
+}
+
 int intel_fill_fb_info(struct drm_i915_private *i915, struct drm_framebuffer *fb)
 {
 	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
@@ -644,6 +697,7 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct drm_framebuffer *fb
 	unsigned int tile_size = intel_tile_size(i915);
 
 	for (i = 0; i < num_planes; i++) {
+		struct fb_plane_view_dims view_dims;
 		unsigned int width, height;
 		unsigned int cpp, size;
 		u32 offset;
@@ -669,6 +723,8 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct drm_framebuffer *fb
 		if (ret)
 			return ret;
 
+		init_plane_view_dims(intel_fb, i, width, height, &view_dims);
+
 		/*
 		 * First pixel of the framebuffer from
 		 * the start of the normal gtt mapping.
@@ -680,38 +736,22 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct drm_framebuffer *fb
 
 		if (!is_surface_linear(fb, i)) {
 			struct intel_remapped_plane_info plane_info;
-			unsigned int tile_width, tile_height;
-
-			intel_tile_dims(fb, i, &tile_width, &tile_height);
 
 			plane_info.offset = offset;
-			plane_info.stride = DIV_ROUND_UP(fb->pitches[i],
-							 tile_width * cpp);
-			plane_info.width = DIV_ROUND_UP(x + width, tile_width);
-			plane_info.height = DIV_ROUND_UP(y + height,
-							 tile_height);
-
-			/* how many tiles does this plane need */
-			size = plane_info.stride * plane_info.height;
-			/*
-			 * If the plane isn't horizontally tile aligned,
-			 * we need one more tile.
-			 */
-			if (x != 0)
-				size++;
+			plane_info.stride = plane_view_stride_tiles(intel_fb, i, &view_dims);
+			plane_info.width = DIV_ROUND_UP(x + width, view_dims.tile_width);
+			plane_info.height = plane_view_tile_rows(intel_fb, i, &view_dims, y);
 
 			gtt_offset_rotated +=
 				setup_fb_rotation(i, &plane_info,
 						  gtt_offset_rotated,
 						  x, y, width, height,
 						  tile_size,
-						  tile_width, tile_height,
+						  view_dims.tile_width, view_dims.tile_height,
 						  fb);
-		} else {
-			size = DIV_ROUND_UP((y + height) * fb->pitches[i] +
-					    x * cpp, tile_size);
 		}
 
+		size = calc_plane_normal_size(intel_fb, i, &view_dims, x, y);
 		/* how many tiles in total needed in the bo */
 		max_size = max(max_size, offset + size);
 	}
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
