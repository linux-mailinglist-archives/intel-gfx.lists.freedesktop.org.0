Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A01FF43BD74
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 00:51:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CA476E4C9;
	Tue, 26 Oct 2021 22:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F9C46E4CB
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 22:51:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="217203176"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="217203176"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 15:51:14 -0700
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="497574341"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 15:51:13 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Wed, 27 Oct 2021 01:51:02 +0300
Message-Id: <20211026225105.2783797-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211026225105.2783797-1-imre.deak@intel.com>
References: <20211026225105.2783797-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/adlp/fb: Fix remapping of linear
 CCS AUX surfaces
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

During remapping CCS FBs the CCS AUX surface mapped size and offset->x,y
coordinate calculations assumed a tiled layout. This works as long as
the CCS surface height is aligned to 64 lines (ensuring a 4k bytes CCS
surface tile layout).  However this alignment is not required by the HW
(and the driver doesn't enforces it either).

Add the remapping logic required to remap the pages of CCS surfaces
without the above alignment, assuming the natural linear layout of the
CCS surface (vs. tiled main surface layout).

Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Fixes: 3d1adc3d64cf ("drm/i915/adlp: Add support for remapping CCS FBs")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |   6 +-
 drivers/gpu/drm/i915/display/intel_fb.c      | 107 ++++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_ggtt.c         |  85 +++++++++++----
 drivers/gpu/drm/i915/i915_vma_types.h        |  19 +++-
 4 files changed, 164 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f9c6d5aab8bf3..8200969c9a046 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -614,7 +614,11 @@ unsigned int intel_remapped_info_size(const struct intel_remapped_info *rem_info
 	for (i = 0 ; i < ARRAY_SIZE(rem_info->plane); i++) {
 		unsigned int plane_size;
 
-		plane_size = rem_info->plane[i].dst_stride * rem_info->plane[i].height;
+		if (rem_info->plane[i].linear)
+			plane_size = rem_info->plane[i].size;
+		else
+			plane_size = rem_info->plane[i].dst_stride * rem_info->plane[i].height;
+
 		if (plane_size == 0)
 			continue;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index c3fb7d7366f58..dde408902239f 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -847,6 +847,20 @@ static u32 intel_adjust_tile_offset(int *x, int *y,
 	return new_offset;
 }
 
+static u32 intel_adjust_linear_offset(int *x, int *y,
+				      unsigned int cpp,
+				      unsigned int pitch,
+				      u32 old_offset,
+				      u32 new_offset)
+{
+	old_offset += *y * pitch + *x * cpp;
+
+	*y = (old_offset - new_offset) / pitch;
+	*x = ((old_offset - new_offset) - *y * pitch) / cpp;
+
+	return new_offset;
+}
+
 static u32 intel_adjust_aligned_offset(int *x, int *y,
 				       const struct drm_framebuffer *fb,
 				       int color_plane,
@@ -877,10 +891,8 @@ static u32 intel_adjust_aligned_offset(int *x, int *y,
 					 tile_size, pitch_tiles,
 					 old_offset, new_offset);
 	} else {
-		old_offset += *y * pitch + *x * cpp;
-
-		*y = (old_offset - new_offset) / pitch;
-		*x = ((old_offset - new_offset) - *y * pitch) / cpp;
+		intel_adjust_linear_offset(x, y, cpp, pitch,
+					   old_offset, new_offset);
 	}
 
 	return new_offset;
@@ -1252,12 +1264,11 @@ plane_view_dst_stride_tiles(const struct intel_framebuffer *fb, int color_plane,
 			    unsigned int pitch_tiles)
 {
 	if (intel_fb_needs_pot_stride_remap(fb)) {
-		unsigned int min_stride = intel_fb_is_ccs_aux_plane(&fb->base, color_plane) ? 2 : 8;
 		/*
 		 * ADL_P, the only platform needing a POT stride has a minimum
-		 * of 8 main surface and 2 CCS AUX stride tiles.
+		 * of 8 main surface tiles.
 		 */
-		return roundup_pow_of_two(max(pitch_tiles, min_stride));
+		return roundup_pow_of_two(max(pitch_tiles, 8u));
 	} else {
 		return pitch_tiles;
 	}
@@ -1279,11 +1290,31 @@ plane_view_height_tiles(const struct intel_framebuffer *fb, int color_plane,
 	return DIV_ROUND_UP(y + dims->height, dims->tile_height);
 }
 
+static unsigned int
+plane_view_linear_tiles(const struct intel_framebuffer *fb, int color_plane,
+			const struct fb_plane_view_dims *dims,
+			int x, int y)
+{
+	struct drm_i915_private *i915 = to_i915(fb->base.dev);
+	unsigned int size;
+
+	size = (y + dims->height) * fb->base.pitches[color_plane] +
+		x * fb->base.format->cpp[color_plane];
+
+	return DIV_ROUND_UP(size, intel_tile_size(i915));
+}
+
 #define assign_chk_ovf(i915, var, val) ({ \
 	drm_WARN_ON(&(i915)->drm, overflows_type(val, var)); \
 	(var) = (val); \
 })
 
+#define assign_bfld_chk_ovf(i915, var, val) ({ \
+	(var) = (val); \
+	drm_WARN_ON(&(i915)->drm, (var) != (val)); \
+	(var); \
+})
+
 static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_plane,
 				 const struct fb_plane_view_dims *dims,
 				 u32 obj_offset, u32 gtt_offset, int x, int y,
@@ -1298,12 +1329,26 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 	struct drm_rect r;
 	u32 size = 0;
 
-	assign_chk_ovf(i915, remap_info->offset, obj_offset);
-	assign_chk_ovf(i915, remap_info->src_stride, plane_view_src_stride_tiles(fb, color_plane, dims));
-	assign_chk_ovf(i915, remap_info->width, plane_view_width_tiles(fb, color_plane, dims, x));
-	assign_chk_ovf(i915, remap_info->height, plane_view_height_tiles(fb, color_plane, dims, y));
+	assign_bfld_chk_ovf(i915, remap_info->offset, obj_offset);
+
+	if (intel_fb_is_gen12_ccs_aux_plane(&fb->base, color_plane)) {
+		remap_info->linear = 1;
+
+		assign_chk_ovf(i915, remap_info->size,
+			       plane_view_linear_tiles(fb, color_plane, dims, x, y));
+	} else {
+		remap_info->linear = 0;
+
+		assign_chk_ovf(i915, remap_info->src_stride,
+			       plane_view_src_stride_tiles(fb, color_plane, dims));
+		assign_chk_ovf(i915, remap_info->width,
+			       plane_view_width_tiles(fb, color_plane, dims, x));
+		assign_chk_ovf(i915, remap_info->height,
+			       plane_view_height_tiles(fb, color_plane, dims, y));
+	}
 
 	if (view->gtt.type == I915_GGTT_VIEW_ROTATED) {
+		drm_WARN_ON(&i915->drm, remap_info->linear);
 		check_array_bounds(i915, view->gtt.rotated.plane, color_plane);
 
 		assign_chk_ovf(i915, remap_info->dst_stride,
@@ -1338,16 +1383,23 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 			gtt_offset = aligned_offset;
 		}
 
-		assign_chk_ovf(i915, remap_info->dst_stride,
-			       plane_view_dst_stride_tiles(fb, color_plane, remap_info->width));
-
 		color_plane_info->x = x;
 		color_plane_info->y = y;
 
-		color_plane_info->stride = remap_info->dst_stride * tile_width *
-					   fb->base.format->cpp[color_plane];
+		if (remap_info->linear) {
+			color_plane_info->stride = fb->base.pitches[color_plane];
 
-		size += remap_info->dst_stride * remap_info->height;
+			size += remap_info->size;
+		} else {
+			unsigned int dst_stride = plane_view_dst_stride_tiles(fb, color_plane,
+									      remap_info->width);
+
+			assign_chk_ovf(i915, remap_info->dst_stride, dst_stride);
+			color_plane_info->stride = dst_stride *
+						   tile_width * fb->base.format->cpp[color_plane];
+
+			size += dst_stride * remap_info->height;
+		}
 	}
 
 	/*
@@ -1355,10 +1407,16 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 	 * the x/y offsets.  x,y will hold the first pixel of the framebuffer
 	 * plane from the start of the remapped/rotated gtt mapping.
 	 */
-	intel_adjust_tile_offset(&color_plane_info->x, &color_plane_info->y,
-				 tile_width, tile_height,
-				 tile_size, remap_info->dst_stride,
-				 gtt_offset * tile_size, 0);
+	if (remap_info->linear)
+		intel_adjust_linear_offset(&color_plane_info->x, &color_plane_info->y,
+					   fb->base.format->cpp[color_plane],
+					   color_plane_info->stride,
+					   gtt_offset * tile_size, 0);
+	else
+		intel_adjust_tile_offset(&color_plane_info->x, &color_plane_info->y,
+					 tile_width, tile_height,
+					 tile_size, remap_info->dst_stride,
+					 gtt_offset * tile_size, 0);
 
 	return size;
 }
@@ -1371,15 +1429,10 @@ calc_plane_normal_size(const struct intel_framebuffer *fb, int color_plane,
 		       const struct fb_plane_view_dims *dims,
 		       int x, int y)
 {
-	struct drm_i915_private *i915 = to_i915(fb->base.dev);
 	unsigned int tiles;
 
 	if (is_surface_linear(&fb->base, color_plane)) {
-		unsigned int size;
-
-		size = (y + dims->height) * fb->base.pitches[color_plane] +
-		       x * fb->base.format->cpp[color_plane];
-		tiles = DIV_ROUND_UP(size, intel_tile_size(i915));
+		tiles = plane_view_linear_tiles(fb, color_plane, dims, x, y);
 	} else {
 		tiles = plane_view_src_stride_tiles(fb, color_plane, dims) *
 			plane_view_height_tiles(fb, color_plane, dims, y);
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index a30366d4965b6..dc491ca3d27ef 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1407,11 +1407,12 @@ add_padding_pages(unsigned int count,
 }
 
 static struct scatterlist *
-remap_pages(struct drm_i915_gem_object *obj,
-	    unsigned int offset, unsigned int alignment_pad,
-	    unsigned int width, unsigned int height,
-	    unsigned int src_stride, unsigned int dst_stride,
-	    struct sg_table *st, struct scatterlist *sg)
+remap_tiled_color_plane_pages(struct drm_i915_gem_object *obj,
+			      unsigned int offset, unsigned int alignment_pad,
+			      unsigned int width, unsigned int height,
+			      unsigned int src_stride, unsigned int dst_stride,
+			      struct sg_table *st, struct scatterlist *sg,
+			      unsigned int *gtt_offset)
 {
 	unsigned int row;
 
@@ -1459,6 +1460,8 @@ remap_pages(struct drm_i915_gem_object *obj,
 		sg = add_padding_pages(left >> PAGE_SHIFT, st, sg);
 	}
 
+	*gtt_offset += alignment_pad + dst_stride * height;
+
 	return sg;
 }
 
@@ -1495,6 +1498,61 @@ remap_contiguous_pages(struct drm_i915_gem_object *obj,
 	} while (1);
 }
 
+static struct scatterlist *
+remap_linear_color_plane_pages(struct drm_i915_gem_object *obj,
+			       unsigned int obj_offset, unsigned int alignment_pad,
+			       unsigned int size,
+			       struct sg_table *st, struct scatterlist *sg,
+			       unsigned int *gtt_offset)
+{
+	if (!size)
+		return sg;
+
+	if (alignment_pad)
+		sg = add_padding_pages(alignment_pad, st, sg);
+
+	sg = remap_contiguous_pages(obj, obj_offset, size, st, sg);
+	sg = sg_next(sg);
+
+	*gtt_offset += alignment_pad + size;
+
+	return sg;
+}
+
+static struct scatterlist *
+remap_color_plane_pages(const struct intel_remapped_info *rem_info,
+			struct drm_i915_gem_object *obj,
+			int color_plane,
+			struct sg_table *st, struct scatterlist *sg,
+			unsigned int *gtt_offset)
+{
+	unsigned int alignment_pad = 0;
+
+	if (rem_info->plane_alignment)
+		alignment_pad = ALIGN(*gtt_offset, rem_info->plane_alignment) - *gtt_offset;
+
+	if (rem_info->plane[color_plane].linear)
+		sg = remap_linear_color_plane_pages(obj,
+						    rem_info->plane[color_plane].offset,
+						    alignment_pad,
+						    rem_info->plane[color_plane].size,
+						    st, sg,
+						    gtt_offset);
+
+	else
+		sg = remap_tiled_color_plane_pages(obj,
+						   rem_info->plane[color_plane].offset,
+						   alignment_pad,
+						   rem_info->plane[color_plane].width,
+						   rem_info->plane[color_plane].height,
+						   rem_info->plane[color_plane].src_stride,
+						   rem_info->plane[color_plane].dst_stride,
+						   st, sg,
+						   gtt_offset);
+
+	return sg;
+}
+
 static noinline struct sg_table *
 intel_remap_pages(struct intel_remapped_info *rem_info,
 		  struct drm_i915_gem_object *obj)
@@ -1519,21 +1577,8 @@ intel_remap_pages(struct intel_remapped_info *rem_info,
 	st->nents = 0;
 	sg = st->sgl;
 
-	for (i = 0 ; i < ARRAY_SIZE(rem_info->plane); i++) {
-		unsigned int alignment_pad = 0;
-
-		if (rem_info->plane_alignment)
-			alignment_pad = ALIGN(gtt_offset, rem_info->plane_alignment) - gtt_offset;
-
-		sg = remap_pages(obj,
-				 rem_info->plane[i].offset, alignment_pad,
-				 rem_info->plane[i].width, rem_info->plane[i].height,
-				 rem_info->plane[i].src_stride, rem_info->plane[i].dst_stride,
-				 st, sg);
-
-		gtt_offset += alignment_pad +
-			      rem_info->plane[i].dst_stride * rem_info->plane[i].height;
-	}
+	for (i = 0 ; i < ARRAY_SIZE(rem_info->plane); i++)
+		sg = remap_color_plane_pages(rem_info, obj, i, st, sg, &gtt_offset);
 
 	i915_sg_trim(st);
 
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 80e93bf00f2e5..4ee6e54799f48 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -97,11 +97,20 @@ enum i915_cache_level;
 
 struct intel_remapped_plane_info {
 	/* in gtt pages */
-	u32 offset;
-	u16 width;
-	u16 height;
-	u16 src_stride;
-	u16 dst_stride;
+	u32 offset:31;
+	u32 linear:1;
+	union {
+		/* in gtt pages for !linear */
+		struct {
+			u16 width;
+			u16 height;
+			u16 src_stride;
+			u16 dst_stride;
+		};
+
+		/* in gtt pages for linear */
+		u32 size;
+	};
 } __packed;
 
 struct intel_remapped_info {
-- 
2.27.0

