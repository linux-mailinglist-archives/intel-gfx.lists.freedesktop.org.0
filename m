Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEA2334B60
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:18:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21E0F6EA85;
	Wed, 10 Mar 2021 22:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11DD96EA7F
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:18:01 +0000 (UTC)
IronPort-SDR: na+kJ5N11yqLUWzTtTRaWwAEKTt6O95CXJ9ZjbwAXncSwEnpL4KbjJxLLFAc+nP2BpwrXanwVn
 o+2JXaQbrLMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592108"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592108"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:18:00 -0800
IronPort-SDR: t8R64Fl9GrK0HwXimKmIrdPDP8zcBPYhb61KfBlEUkuEMjBNwa0cGIM9ZDEgLkZ5+IC3dDXJSW
 12ZpXaZ2PQjg==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852305"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:59 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:34 +0200
Message-Id: <20210310221736.2963264-22-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/23] drm/i915: Add support for FBs requiring a
 POT stride alignment
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

An upcoming platform has a restriction that the FB stride must be
power-of-two aligned. To support framebuffer layouts that are not in
this layout add a logic that pads the tile rows to the POT aligned size.

The HW won't read the padding PTEs, so these don't have to point to an
allocated address, or even have their valid flag set. So use a NULL PTE
instead for instance the scratch page, which is simple and keeps the SG
table compact.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
 .../drm/i915/display/intel_display_types.h    |  3 +
 drivers/gpu/drm/i915/display/intel_fb.c       | 89 ++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 58 +++++++++---
 drivers/gpu/drm/i915/i915_debugfs.c           |  8 +-
 drivers/gpu/drm/i915/i915_vma_types.h         |  2 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c     | 13 +++
 7 files changed, 149 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6117d43a4e49..f615a5d1a62f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -931,7 +931,7 @@ unsigned int intel_rotation_info_size(const struct intel_rotation_info *rot_info
 	int i;
 
 	for (i = 0 ; i < ARRAY_SIZE(rot_info->plane); i++)
-		size += rot_info->plane[i].width * rot_info->plane[i].height;
+		size += rot_info->plane[i].dst_stride * rot_info->plane[i].width;
 
 	return size;
 }
@@ -942,7 +942,7 @@ unsigned int intel_remapped_info_size(const struct intel_remapped_info *rem_info
 	int i;
 
 	for (i = 0 ; i < ARRAY_SIZE(rem_info->plane); i++)
-		size += rem_info->plane[i].width * rem_info->plane[i].height;
+		size += rem_info->plane[i].dst_stride * rem_info->plane[i].height;
 
 	return size;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index fc02eca45e4d..08b348c9e3e1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -94,6 +94,7 @@ struct intel_framebuffer {
 	struct drm_framebuffer base;
 	struct intel_frontbuffer *frontbuffer;
 	struct intel_rotation_info rot_info;
+	struct intel_remapped_info rem_info;
 
 	/* for each plane in the normal GTT view */
 	struct {
@@ -101,6 +102,8 @@ struct intel_framebuffer {
 	} normal[4];
 	/* for each plane in the rotated GTT view for no-CCS formats */
 	struct intel_fb_plane_remap_info rotated[2];
+	/* for each plane in the remapped GTT view. TODO: CCS formats */
+	struct intel_fb_plane_remap_info remapped[2];
 };
 
 struct intel_fbdev {
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 6cf0820e3177..3e278fe77040 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -486,12 +486,21 @@ static bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
 	return true;
 }
 
-int intel_fb_pitch(const struct drm_framebuffer *fb, int color_plane, unsigned int rotation)
+static bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb)
 {
+	return false;
+}
+
+int intel_fb_pitch(const struct drm_framebuffer *drm_fb, int color_plane, unsigned int rotation)
+{
+	const struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
+
 	if (drm_rotation_90_or_270(rotation))
-		return to_intel_framebuffer(fb)->rotated[color_plane].pitch;
+		return fb->rotated[color_plane].pitch;
+	else if (intel_fb_needs_pot_stride_remap(fb))
+		return fb->remapped[color_plane].pitch;
 	else
-		return fb->pitches[color_plane];
+		return drm_fb->pitches[color_plane];
 }
 
 static bool intel_plane_needs_remap(const struct intel_plane_state *plane_state)
@@ -600,6 +609,21 @@ static unsigned int plane_view_src_stride_tiles(const struct intel_framebuffer *
 			    dims->tile_width * drm_fb->format->cpp[color_plane]);
 }
 
+static unsigned int plane_view_dst_stride(const struct intel_framebuffer *fb, int color_plane,
+					  int pitch_tiles)
+{
+	unsigned int dst_stride;
+
+	if (!intel_fb_needs_pot_stride_remap(fb)) {
+		dst_stride = pitch_tiles;
+	} else {
+		dst_stride = roundup_pow_of_two(pitch_tiles);
+		drm_WARN_ON(fb->base.dev, dst_stride < pitch_tiles);
+	};
+
+	return dst_stride;
+}
+
 static unsigned int plane_view_tile_rows(const struct intel_framebuffer *fb, int color_plane,
 					 const struct fb_plane_view_dims *dims,
 					 int y)
@@ -622,8 +646,8 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 	unsigned int src_stride_tiles = plane_view_src_stride_tiles(fb, color_plane, dims);
 	unsigned int width_tiles = DIV_ROUND_UP(x + dims->width, dims->tile_width);
 	unsigned int height_tiles = plane_view_tile_rows(fb, color_plane, dims, y);
-	unsigned int pitch_tiles;
 	struct drm_rect r;
+	u32 size;
 
 	drm_WARN_ON(&i915->drm,
 		    overflows_type(obj_offset, gtt_remap_info->offset) ||
@@ -637,6 +661,13 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 	gtt_remap_info->height = height_tiles;
 
 	if (view_type == I915_GGTT_VIEW_ROTATED) {
+		unsigned int dst_stride_tiles = plane_view_dst_stride(fb, color_plane,
+								      gtt_remap_info->height);
+
+		drm_WARN_ON(&i915->drm,
+			    overflows_type(dst_stride_tiles, gtt_remap_info->dst_stride));
+		gtt_remap_info->dst_stride = dst_stride_tiles;
+
 		/* rotate the x/y offsets to match the GTT view */
 		drm_rect_init(&r, x, y, dims->width, dims->height);
 		drm_rect_rotate(&r,
@@ -647,18 +678,29 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 		plane_remap_info->x = r.x1;
 		plane_remap_info->y = r.y1;
 
-		pitch_tiles = gtt_remap_info->height;
-		plane_remap_info->pitch = pitch_tiles * tile_height;
+		plane_remap_info->pitch = gtt_remap_info->dst_stride * tile_height;
+
+		size = gtt_remap_info->dst_stride * gtt_remap_info->width;
+
 		/* rotate the tile dimensions to match the GTT view */
 		swap(tile_width, tile_height);
 	} else {
+		unsigned int dst_stride_tiles = plane_view_dst_stride(fb, color_plane,
+								      gtt_remap_info->width);
+
 		drm_WARN_ON(&i915->drm, view_type != I915_GGTT_VIEW_REMAPPED);
 
+		drm_WARN_ON(&i915->drm,
+			    overflows_type(dst_stride_tiles, gtt_remap_info->dst_stride));
+		gtt_remap_info->dst_stride = dst_stride_tiles;
+
 		plane_remap_info->x = x;
 		plane_remap_info->y = y;
 
-		pitch_tiles = gtt_remap_info->width;
-		plane_remap_info->pitch = pitch_tiles * tile_width * drm_fb->format->cpp[color_plane];
+		plane_remap_info->pitch = gtt_remap_info->dst_stride * tile_width *
+					  drm_fb->format->cpp[color_plane];
+
+		size = gtt_remap_info->dst_stride * gtt_remap_info->height;
 	}
 
 	/*
@@ -670,10 +712,10 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 	 */
 	intel_adjust_tile_offset(&plane_remap_info->x, &plane_remap_info->y,
 				 tile_width, tile_height,
-				 tile_size, pitch_tiles,
+				 tile_size, gtt_remap_info->dst_stride,
 				 gtt_offset * tile_size, 0);
 
-	return gtt_remap_info->width * gtt_remap_info->height;
+	return size;
 }
 
 static int calc_plane_normal_size(const struct intel_framebuffer *fb, int color_plane,
@@ -703,6 +745,7 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct drm_framebuffer *fb
 	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
 	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
 	u32 gtt_offset_rotated = 0;
+	u32 gtt_offset_remapped = 0;
 	unsigned int max_size = 0;
 	int i, num_planes = fb->format->num_planes;
 	unsigned int tile_size = intel_tile_size(i915);
@@ -758,6 +801,17 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct drm_framebuffer *fb
 								    &intel_fb->rotated[i]);
 		}
 
+		if (intel_fb_needs_pot_stride_remap(intel_fb)) {
+			check_array_bounds(i915, intel_fb->rem_info.plane, i);
+			check_array_bounds(i915, intel_fb->remapped, i);
+
+			gtt_offset_remapped += calc_plane_remap_info(intel_fb, i, &view_dims,
+								     I915_GGTT_VIEW_REMAPPED,
+								     offset, gtt_offset_remapped, x, y,
+								     &intel_fb->rem_info.plane[i],
+								     &intel_fb->remapped[i]);
+		}
+
 		size = calc_plane_normal_size(intel_fb, i, &view_dims, x, y);
 		/* how many tiles in total needed in the bo */
 		max_size = max(max_size, offset + size);
@@ -847,15 +901,21 @@ static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
 }
 
 void intel_fill_fb_ggtt_view(struct i915_ggtt_view *view,
-			     const struct drm_framebuffer *fb,
+			     const struct drm_framebuffer *drm_fb,
 			     unsigned int rotation)
 {
+	const struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
+
 	memset(view, 0, sizeof(*view));
 
-	view->type = I915_GGTT_VIEW_NORMAL;
 	if (drm_rotation_90_or_270(rotation)) {
 		view->type = I915_GGTT_VIEW_ROTATED;
-		view->rotated = to_intel_framebuffer(fb)->rot_info;
+		view->rotated = fb->rot_info;
+	} else if (intel_fb_needs_pot_stride_remap(fb)) {
+		view->type = I915_GGTT_VIEW_REMAPPED;
+		view->remapped = fb->rem_info;
+	} else {
+		view->type = I915_GGTT_VIEW_NORMAL;
 	}
 }
 
@@ -924,6 +984,9 @@ int intel_plane_compute_gtt(struct intel_plane_state *plane_state)
 		if (drm_rotation_90_or_270(rotation)) {
 			plane_state->color_plane[i].x = fb->rotated[i].x;
 			plane_state->color_plane[i].y = fb->rotated[i].y;
+		} else if (intel_fb_needs_pot_stride_remap(fb)) {
+			plane_state->color_plane[i].x = fb->remapped[i].x;
+			plane_state->color_plane[i].y = fb->remapped[i].y;
 		} else {
 			plane_state->color_plane[i].x = fb->normal[i].x;
 			plane_state->color_plane[i].y = fb->normal[i].y;
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 9a5b038e1ea3..1ef7ebdff23a 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1261,14 +1261,16 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
 static struct scatterlist *
 rotate_pages(struct drm_i915_gem_object *obj, unsigned int offset,
 	     unsigned int width, unsigned int height,
-	     unsigned int stride,
+	     unsigned int src_stride, unsigned int dst_stride,
 	     struct sg_table *st, struct scatterlist *sg)
 {
 	unsigned int column, row;
 	unsigned int src_idx;
 
 	for (column = 0; column < width; column++) {
-		src_idx = stride * (height - 1) + column + offset;
+		unsigned int left;
+
+		src_idx = src_stride * (height - 1) + column + offset;
 		for (row = 0; row < height; row++) {
 			st->nents++;
 			/*
@@ -1280,9 +1282,27 @@ rotate_pages(struct drm_i915_gem_object *obj, unsigned int offset,
 			sg_dma_address(sg) =
 				i915_gem_object_get_dma_address(obj, src_idx);
 			sg_dma_len(sg) = I915_GTT_PAGE_SIZE;
+
 			sg = sg_next(sg);
-			src_idx -= stride;
+			src_idx -= src_stride;
 		}
+
+		left = (dst_stride - height) * I915_GTT_PAGE_SIZE;
+
+		if (!left)
+			continue;
+
+		st->nents++;
+
+		/*
+		 * The DE ignores the PTEs for the padding tiles, the sg entry
+		 * here is just a conenience to indicate how many padding PTEs
+		 * to insert at this spot.
+		 */
+		sg_set_page(sg, NULL, left, 0);
+		sg_dma_address(sg) = 0;
+		sg_dma_len(sg) = left;
+		sg = sg_next(sg);
 	}
 
 	return sg;
@@ -1311,11 +1331,12 @@ intel_rotate_pages(struct intel_rotation_info *rot_info,
 	st->nents = 0;
 	sg = st->sgl;
 
-	for (i = 0 ; i < ARRAY_SIZE(rot_info->plane); i++) {
+	for (i = 0 ; i < ARRAY_SIZE(rot_info->plane); i++)
 		sg = rotate_pages(obj, rot_info->plane[i].offset,
 				  rot_info->plane[i].width, rot_info->plane[i].height,
-				  rot_info->plane[i].src_stride, st, sg);
-	}
+				  rot_info->plane[i].src_stride,
+				  rot_info->plane[i].dst_stride,
+				  st, sg);
 
 	return st;
 
@@ -1333,7 +1354,7 @@ intel_rotate_pages(struct intel_rotation_info *rot_info,
 static struct scatterlist *
 remap_pages(struct drm_i915_gem_object *obj, unsigned int offset,
 	    unsigned int width, unsigned int height,
-	    unsigned int stride,
+	    unsigned int src_stride, unsigned int dst_stride,
 	    struct sg_table *st, struct scatterlist *sg)
 {
 	unsigned int row;
@@ -1350,7 +1371,6 @@ remap_pages(struct drm_i915_gem_object *obj, unsigned int offset,
 			 * the entries so the sg list can be happily traversed.
 			 * The only thing we need are DMA addresses.
 			 */
-
 			addr = i915_gem_object_get_dma_address_len(obj, offset, &length);
 
 			length = min(left, length);
@@ -1366,7 +1386,24 @@ remap_pages(struct drm_i915_gem_object *obj, unsigned int offset,
 			left -= length;
 		}
 
-		offset += stride - width;
+		offset += src_stride - width;
+
+		left = (dst_stride - width) * I915_GTT_PAGE_SIZE;
+
+		if (!left)
+			continue;
+
+		st->nents++;
+
+		/*
+		 * The DE ignores the PTEs for the padding tiles, the sg entry
+		 * here is just a conenience to indicate how many padding PTEs
+		 * to insert at this spot.
+		 */
+		sg_set_page(sg, NULL, left, 0);
+		sg_dma_address(sg) = 0;
+		sg_dma_len(sg) = left;
+		sg = sg_next(sg);
 	}
 
 	return sg;
@@ -1398,7 +1435,8 @@ intel_remap_pages(struct intel_remapped_info *rem_info,
 	for (i = 0 ; i < ARRAY_SIZE(rem_info->plane); i++) {
 		sg = remap_pages(obj, rem_info->plane[i].offset,
 				 rem_info->plane[i].width, rem_info->plane[i].height,
-				 rem_info->plane[i].src_stride, st, sg);
+				 rem_info->plane[i].src_stride, rem_info->plane[i].dst_stride,
+				 st, sg);
 	}
 
 	i915_sg_trim(st);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 48032c0288ee..4cf975b7504f 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -173,26 +173,30 @@ i915_debugfs_describe_obj(struct seq_file *m, struct drm_i915_gem_object *obj)
 				break;
 
 			case I915_GGTT_VIEW_ROTATED:
-				seq_printf(m, ", rotated [(%ux%u, stride=%u, offset=%u), (%ux%u, stride=%u, offset=%u)]",
+				seq_printf(m, ", rotated [(%ux%u, src_stride=%u, dst_stride=%u, offset=%u), (%ux%u, src_stride=%u, dst_stride=%u, offset=%u)]",
 					   vma->ggtt_view.rotated.plane[0].width,
 					   vma->ggtt_view.rotated.plane[0].height,
 					   vma->ggtt_view.rotated.plane[0].src_stride,
+					   vma->ggtt_view.rotated.plane[0].dst_stride,
 					   vma->ggtt_view.rotated.plane[0].offset,
 					   vma->ggtt_view.rotated.plane[1].width,
 					   vma->ggtt_view.rotated.plane[1].height,
 					   vma->ggtt_view.rotated.plane[1].src_stride,
+					   vma->ggtt_view.rotated.plane[1].dst_stride,
 					   vma->ggtt_view.rotated.plane[1].offset);
 				break;
 
 			case I915_GGTT_VIEW_REMAPPED:
-				seq_printf(m, ", remapped [(%ux%u, stride=%u, offset=%u), (%ux%u, stride=%u, offset=%u)]",
+				seq_printf(m, ", remapped [(%ux%u, src_stride=%u, dst_stride=%u, offset=%u), (%ux%u, src_stride=%u, dst_stride=%u, offset=%u)]",
 					   vma->ggtt_view.remapped.plane[0].width,
 					   vma->ggtt_view.remapped.plane[0].height,
 					   vma->ggtt_view.remapped.plane[0].src_stride,
+					   vma->ggtt_view.remapped.plane[0].dst_stride,
 					   vma->ggtt_view.remapped.plane[0].offset,
 					   vma->ggtt_view.remapped.plane[1].width,
 					   vma->ggtt_view.remapped.plane[1].height,
 					   vma->ggtt_view.remapped.plane[1].src_stride,
+					   vma->ggtt_view.remapped.plane[1].dst_stride,
 					   vma->ggtt_view.remapped.plane[1].offset);
 				break;
 
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index f7f2aa168c9e..6b1bfa230b82 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -101,7 +101,7 @@ struct intel_remapped_plane_info {
 	u16 width;
 	u16 height;
 	u16 src_stride;
-	u16 unused_mbz;
+	u16 dst_stride;
 } __packed;
 
 struct intel_remapped_info {
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 06f1827329d0..4631db0cdfe5 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -528,6 +528,15 @@ static int igt_vma_rotate_remap(void *arg)
 			GEM_BUG_ON(max_offset > max_pages);
 			max_offset = max_pages - max_offset;
 
+			if (!plane_info[0].dst_stride)
+				plane_info[0].dst_stride = view.type == I915_GGTT_VIEW_ROTATED ?
+									plane_info[0].height :
+									plane_info[0].width;
+			if (!plane_info[1].dst_stride)
+				plane_info[1].dst_stride = view.type == I915_GGTT_VIEW_ROTATED ?
+									plane_info[1].height :
+									plane_info[1].width;
+
 			for_each_prime_number_from(plane_info[0].offset, 0, max_offset) {
 				for_each_prime_number_from(plane_info[1].offset, 0, max_offset) {
 					struct scatterlist *sg;
@@ -896,6 +905,10 @@ static int igt_vma_remapped_gtt(void *arg)
 			u32 __iomem *map;
 			unsigned int x, y;
 
+			if (!plane_info[0].dst_stride)
+				plane_info[0].dst_stride = *t == I915_GGTT_VIEW_ROTATED ?
+								 p->height : p->width;
+
 			vma = i915_gem_object_ggtt_pin(obj, &view, 0, 0, PIN_MAPPABLE);
 			if (IS_ERR(vma)) {
 				err = PTR_ERR(vma);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
