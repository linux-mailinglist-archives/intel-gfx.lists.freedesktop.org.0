Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0A8334B5D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:18:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C0126EA82;
	Wed, 10 Mar 2021 22:18:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E28A36EA88
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:59 +0000 (UTC)
IronPort-SDR: s5LjQNLBsB6vb+D946fqlGtrYwCZPGxPtdoqqZZGUmfTJgbAcPxhDe/b0DSoJ6xdW+WU3SGMr4
 RuhFM9DWDSzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592102"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592102"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:59 -0800
IronPort-SDR: arZDglyGAiY4uxSMzZse3TkcKsVvk0N7Ff1V0p4rN/WIRsmzNzBfh84PVx8IkBtvUnvxdNS6Nd
 vTUjFc7J+RcQ==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852297"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:58 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:33 +0200
Message-Id: <20210310221736.2963264-21-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/23] drm/i915: s/stride/src_stride/ in the
 intel_remapped_plane_info struct
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

An upcoming patch adds a new dst_stride field to the
intel_remapped_plane_info struct, so for clarity rename the current
stride field to src_stride.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c   | 12 ++---
 drivers/gpu/drm/i915/gt/intel_ggtt.c      |  4 +-
 drivers/gpu/drm/i915/i915_debugfs.c       |  8 +--
 drivers/gpu/drm/i915/i915_vma_types.h     |  2 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c | 60 +++++++++++------------
 5 files changed, 43 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 51c56f0a4a99..6cf0820e3177 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -591,8 +591,8 @@ static void init_plane_view_dims(const struct intel_framebuffer *fb, int color_p
 	intel_tile_dims(&fb->base, color_plane, &dims->tile_width, &dims->tile_height);
 }
 
-static unsigned int plane_view_stride_tiles(const struct intel_framebuffer *fb, int color_plane,
-					    const struct fb_plane_view_dims *dims)
+static unsigned int plane_view_src_stride_tiles(const struct intel_framebuffer *fb, int color_plane,
+						const struct fb_plane_view_dims *dims)
 {
 	const struct drm_framebuffer *drm_fb = &fb->base;
 
@@ -619,7 +619,7 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 	unsigned int tile_width = dims->tile_width;
 	unsigned int tile_height = dims->tile_height;
 	unsigned int tile_size = intel_tile_size(i915);
-	unsigned int stride_tiles = plane_view_stride_tiles(fb, color_plane, dims);
+	unsigned int src_stride_tiles = plane_view_src_stride_tiles(fb, color_plane, dims);
 	unsigned int width_tiles = DIV_ROUND_UP(x + dims->width, dims->tile_width);
 	unsigned int height_tiles = plane_view_tile_rows(fb, color_plane, dims, y);
 	unsigned int pitch_tiles;
@@ -627,12 +627,12 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 
 	drm_WARN_ON(&i915->drm,
 		    overflows_type(obj_offset, gtt_remap_info->offset) ||
-		    overflows_type(stride_tiles, gtt_remap_info->stride) ||
+		    overflows_type(src_stride_tiles, gtt_remap_info->src_stride) ||
 		    overflows_type(width_tiles, gtt_remap_info->width) ||
 		    overflows_type(height_tiles, gtt_remap_info->height));
 
 	gtt_remap_info->offset = obj_offset;
-	gtt_remap_info->stride = stride_tiles;
+	gtt_remap_info->src_stride = src_stride_tiles;
 	gtt_remap_info->width = width_tiles;
 	gtt_remap_info->height = height_tiles;
 
@@ -691,7 +691,7 @@ static int calc_plane_normal_size(const struct intel_framebuffer *fb, int color_
 		       x * drm_fb->format->cpp[color_plane];
 		pages = DIV_ROUND_UP(size, intel_tile_size(i915));
 	} else {
-		pages = plane_view_stride_tiles(fb, color_plane, dims) *
+		pages = plane_view_src_stride_tiles(fb, color_plane, dims) *
 			plane_view_tile_rows(fb, color_plane, dims, y);
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index b0b8ded834f0..9a5b038e1ea3 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1314,7 +1314,7 @@ intel_rotate_pages(struct intel_rotation_info *rot_info,
 	for (i = 0 ; i < ARRAY_SIZE(rot_info->plane); i++) {
 		sg = rotate_pages(obj, rot_info->plane[i].offset,
 				  rot_info->plane[i].width, rot_info->plane[i].height,
-				  rot_info->plane[i].stride, st, sg);
+				  rot_info->plane[i].src_stride, st, sg);
 	}
 
 	return st;
@@ -1398,7 +1398,7 @@ intel_remap_pages(struct intel_remapped_info *rem_info,
 	for (i = 0 ; i < ARRAY_SIZE(rem_info->plane); i++) {
 		sg = remap_pages(obj, rem_info->plane[i].offset,
 				 rem_info->plane[i].width, rem_info->plane[i].height,
-				 rem_info->plane[i].stride, st, sg);
+				 rem_info->plane[i].src_stride, st, sg);
 	}
 
 	i915_sg_trim(st);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 51133b8fabb4..48032c0288ee 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -176,11 +176,11 @@ i915_debugfs_describe_obj(struct seq_file *m, struct drm_i915_gem_object *obj)
 				seq_printf(m, ", rotated [(%ux%u, stride=%u, offset=%u), (%ux%u, stride=%u, offset=%u)]",
 					   vma->ggtt_view.rotated.plane[0].width,
 					   vma->ggtt_view.rotated.plane[0].height,
-					   vma->ggtt_view.rotated.plane[0].stride,
+					   vma->ggtt_view.rotated.plane[0].src_stride,
 					   vma->ggtt_view.rotated.plane[0].offset,
 					   vma->ggtt_view.rotated.plane[1].width,
 					   vma->ggtt_view.rotated.plane[1].height,
-					   vma->ggtt_view.rotated.plane[1].stride,
+					   vma->ggtt_view.rotated.plane[1].src_stride,
 					   vma->ggtt_view.rotated.plane[1].offset);
 				break;
 
@@ -188,11 +188,11 @@ i915_debugfs_describe_obj(struct seq_file *m, struct drm_i915_gem_object *obj)
 				seq_printf(m, ", remapped [(%ux%u, stride=%u, offset=%u), (%ux%u, stride=%u, offset=%u)]",
 					   vma->ggtt_view.remapped.plane[0].width,
 					   vma->ggtt_view.remapped.plane[0].height,
-					   vma->ggtt_view.remapped.plane[0].stride,
+					   vma->ggtt_view.remapped.plane[0].src_stride,
 					   vma->ggtt_view.remapped.plane[0].offset,
 					   vma->ggtt_view.remapped.plane[1].width,
 					   vma->ggtt_view.remapped.plane[1].height,
-					   vma->ggtt_view.remapped.plane[1].stride,
+					   vma->ggtt_view.remapped.plane[1].src_stride,
 					   vma->ggtt_view.remapped.plane[1].offset);
 				break;
 
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 358b4306fc00..f7f2aa168c9e 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -100,7 +100,7 @@ struct intel_remapped_plane_info {
 	u32 offset;
 	u16 width;
 	u16 height;
-	u16 stride;
+	u16 src_stride;
 	u16 unused_mbz;
 } __packed;
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 86c590b4522c..06f1827329d0 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -361,7 +361,7 @@ static unsigned long rotated_index(const struct intel_rotation_info *r,
 				   unsigned int x,
 				   unsigned int y)
 {
-	return (r->plane[n].stride * (r->plane[n].height - y - 1) +
+	return (r->plane[n].src_stride * (r->plane[n].height - y - 1) +
 		r->plane[n].offset + x);
 }
 
@@ -411,7 +411,7 @@ static unsigned long remapped_index(const struct intel_remapped_info *r,
 				    unsigned int x,
 				    unsigned int y)
 {
-	return (r->plane[n].stride * y +
+	return (r->plane[n].src_stride * y +
 		r->plane[n].offset + x);
 }
 
@@ -479,21 +479,21 @@ static int igt_vma_rotate_remap(void *arg)
 	struct i915_address_space *vm = &ggtt->vm;
 	struct drm_i915_gem_object *obj;
 	const struct intel_remapped_plane_info planes[] = {
-		{ .width = 1, .height = 1, .stride = 1 },
-		{ .width = 2, .height = 2, .stride = 2 },
-		{ .width = 4, .height = 4, .stride = 4 },
-		{ .width = 8, .height = 8, .stride = 8 },
+		{ .width = 1, .height = 1, .src_stride = 1 },
+		{ .width = 2, .height = 2, .src_stride = 2 },
+		{ .width = 4, .height = 4, .src_stride = 4 },
+		{ .width = 8, .height = 8, .src_stride = 8 },
 
-		{ .width = 3, .height = 5, .stride = 3 },
-		{ .width = 3, .height = 5, .stride = 4 },
-		{ .width = 3, .height = 5, .stride = 5 },
+		{ .width = 3, .height = 5, .src_stride = 3 },
+		{ .width = 3, .height = 5, .src_stride = 4 },
+		{ .width = 3, .height = 5, .src_stride = 5 },
 
-		{ .width = 5, .height = 3, .stride = 5 },
-		{ .width = 5, .height = 3, .stride = 7 },
-		{ .width = 5, .height = 3, .stride = 9 },
+		{ .width = 5, .height = 3, .src_stride = 5 },
+		{ .width = 5, .height = 3, .src_stride = 7 },
+		{ .width = 5, .height = 3, .src_stride = 9 },
 
-		{ .width = 4, .height = 6, .stride = 6 },
-		{ .width = 6, .height = 4, .stride = 6 },
+		{ .width = 4, .height = 6, .src_stride = 6 },
+		{ .width = 6, .height = 4, .src_stride = 6 },
 		{ }
 	}, *a, *b;
 	enum i915_ggtt_view_type types[] = {
@@ -523,8 +523,8 @@ static int igt_vma_rotate_remap(void *arg)
 			plane_info[0] = *a;
 			plane_info[1] = *b;
 
-			max_offset = max(plane_info[0].stride * plane_info[0].height,
-					 plane_info[1].stride * plane_info[1].height);
+			max_offset = max(plane_info[0].src_stride * plane_info[0].height,
+					 plane_info[1].src_stride * plane_info[1].height);
 			GEM_BUG_ON(max_offset > max_pages);
 			max_offset = max_pages - max_offset;
 
@@ -596,11 +596,11 @@ static int igt_vma_rotate_remap(void *arg)
 							       "rotated" : "remapped", n,
 							       plane_info[0].width,
 							       plane_info[0].height,
-							       plane_info[0].stride,
+							       plane_info[0].src_stride,
 							       plane_info[0].offset,
 							       plane_info[1].width,
 							       plane_info[1].height,
-							       plane_info[1].stride,
+							       plane_info[1].src_stride,
 							       plane_info[1].offset);
 							err = -EINVAL;
 							goto out_object;
@@ -853,21 +853,21 @@ static int igt_vma_remapped_gtt(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
 	const struct intel_remapped_plane_info planes[] = {
-		{ .width = 1, .height = 1, .stride = 1 },
-		{ .width = 2, .height = 2, .stride = 2 },
-		{ .width = 4, .height = 4, .stride = 4 },
-		{ .width = 8, .height = 8, .stride = 8 },
+		{ .width = 1, .height = 1, .src_stride = 1 },
+		{ .width = 2, .height = 2, .src_stride = 2 },
+		{ .width = 4, .height = 4, .src_stride = 4 },
+		{ .width = 8, .height = 8, .src_stride = 8 },
 
-		{ .width = 3, .height = 5, .stride = 3 },
-		{ .width = 3, .height = 5, .stride = 4 },
-		{ .width = 3, .height = 5, .stride = 5 },
+		{ .width = 3, .height = 5, .src_stride = 3 },
+		{ .width = 3, .height = 5, .src_stride = 4 },
+		{ .width = 3, .height = 5, .src_stride = 5 },
 
-		{ .width = 5, .height = 3, .stride = 5 },
-		{ .width = 5, .height = 3, .stride = 7 },
-		{ .width = 5, .height = 3, .stride = 9 },
+		{ .width = 5, .height = 3, .src_stride = 5 },
+		{ .width = 5, .height = 3, .src_stride = 7 },
+		{ .width = 5, .height = 3, .src_stride = 9 },
 
-		{ .width = 4, .height = 6, .stride = 6 },
-		{ .width = 6, .height = 4, .stride = 6 },
+		{ .width = 4, .height = 6, .src_stride = 6 },
+		{ .width = 6, .height = 4, .src_stride = 6 },
 		{ }
 	}, *p;
 	enum i915_ggtt_view_type types[] = {
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
