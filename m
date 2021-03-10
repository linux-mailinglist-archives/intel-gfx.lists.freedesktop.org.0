Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8F5334B5F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:18:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65B8C6EA7F;
	Wed, 10 Mar 2021 22:18:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E71AD6EA77
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:57 +0000 (UTC)
IronPort-SDR: 16nckeG8WRR9BbnIW7IV1fjMtBSqyzNEhyOKqGTMWHMToy6CjogrNn35BD+67cdKlsL577XMHB
 1OqU5sz4uAZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592097"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592097"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:57 -0800
IronPort-SDR: wmZJsL+RwZ6MAuyoL2Cshep3c/xNeIeQCnPW8O11KFL1VuaAVoHDG/XIRzQOXScdFjnflDS9oa
 Kxv7jB+nEg6A==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852287"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:56 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:31 +0200
Message-Id: <20210310221736.2963264-19-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/23] drm/i915: Shrink the size of
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

Save some place in the GTT VMAs by using a u16 instead of unsigned int
to store the view dimensions. The maximum FB stride is 256kB which is
4096 tiles in the worst case (yf-tiles), the maximum FB height is 16k
pixels, which is 2048 tiles in the worst case (x-tiles).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 15 ++++++++++++---
 drivers/gpu/drm/i915/i915_vma_types.h   | 12 ++++++++----
 2 files changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 16a1b5c922bb..51c56f0a4a99 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -619,13 +619,22 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 	unsigned int tile_width = dims->tile_width;
 	unsigned int tile_height = dims->tile_height;
 	unsigned int tile_size = intel_tile_size(i915);
+	unsigned int stride_tiles = plane_view_stride_tiles(fb, color_plane, dims);
+	unsigned int width_tiles = DIV_ROUND_UP(x + dims->width, dims->tile_width);
+	unsigned int height_tiles = plane_view_tile_rows(fb, color_plane, dims, y);
 	unsigned int pitch_tiles;
 	struct drm_rect r;
 
+	drm_WARN_ON(&i915->drm,
+		    overflows_type(obj_offset, gtt_remap_info->offset) ||
+		    overflows_type(stride_tiles, gtt_remap_info->stride) ||
+		    overflows_type(width_tiles, gtt_remap_info->width) ||
+		    overflows_type(height_tiles, gtt_remap_info->height));
+
 	gtt_remap_info->offset = obj_offset;
-	gtt_remap_info->width = DIV_ROUND_UP(x + dims->width, dims->tile_width);
-	gtt_remap_info->height = plane_view_tile_rows(fb, color_plane, dims, y);
-	gtt_remap_info->stride = plane_view_stride_tiles(fb, color_plane, dims);
+	gtt_remap_info->stride = stride_tiles;
+	gtt_remap_info->width = width_tiles;
+	gtt_remap_info->height = height_tiles;
 
 	if (view_type == I915_GGTT_VIEW_ROTATED) {
 		/* rotate the x/y offsets to match the GTT view */
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index f5cb848b7a7e..358b4306fc00 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -97,12 +97,16 @@ enum i915_cache_level;
 
 struct intel_remapped_plane_info {
 	/* in gtt pages */
-	unsigned int width, height, stride, offset;
+	u32 offset;
+	u16 width;
+	u16 height;
+	u16 stride;
+	u16 unused_mbz;
 } __packed;
 
 struct intel_remapped_info {
 	struct intel_remapped_plane_info plane[2];
-	unsigned int unused_mbz;
+	u32 unused_mbz;
 } __packed;
 
 struct intel_rotation_info {
@@ -123,9 +127,9 @@ enum i915_ggtt_view_type {
 
 static inline void assert_i915_gem_gtt_types(void)
 {
-	BUILD_BUG_ON(sizeof(struct intel_rotation_info) != 8*sizeof(unsigned int));
+	BUILD_BUG_ON(sizeof(struct intel_rotation_info) != 2 * sizeof(u32) + 8 * sizeof(u16));
 	BUILD_BUG_ON(sizeof(struct intel_partial_info) != sizeof(u64) + sizeof(unsigned int));
-	BUILD_BUG_ON(sizeof(struct intel_remapped_info) != 9*sizeof(unsigned int));
+	BUILD_BUG_ON(sizeof(struct intel_remapped_info) != 3 * sizeof(u32) + 8 * sizeof(u16));
 
 	/* Check that rotation/remapped shares offsets for simplicity */
 	BUILD_BUG_ON(offsetof(struct intel_remapped_info, plane[0]) !=
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
