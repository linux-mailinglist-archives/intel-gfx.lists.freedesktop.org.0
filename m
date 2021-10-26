Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C542043BD76
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 00:51:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E90356E4D2;
	Tue, 26 Oct 2021 22:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09DA36E4CB
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 22:51:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="217203184"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="217203184"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 15:51:18 -0700
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="497574366"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 15:51:17 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Nanley G Chery <nanley.g.chery@intel.com>,
 Sameer Lattannavar <sameer.lattannavar@intel.com>
Date: Wed, 27 Oct 2021 01:51:05 +0300
Message-Id: <20211026225105.2783797-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211026225105.2783797-1-imre.deak@intel.com>
References: <20211026225105.2783797-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/adlp/fb: Remove restriction on CCS
 AUX plane strides
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

As opposed to other GEN12 platforms ADLP provides a way to program the
stride of CCS surfaces independently of the main surface stride (within
the corresponding limit of the preceding and succeeding power-of-two
values of the main surface stride). Using this HW feature we can remove
the POT stride restriction on CCS surfaces, making the ADLP CCS FB uAPI
(FB modifiers) identical to that of TGL.

The HW makes the CCS stride flexible programming possible by deriving
the stride from the value programmed to the PLANE_STRIDE register. After
that the HW rounds up this value to the next power-of-two value and uses
this for walking the pages of the main surface mapped to GTT/DPT.

To align with the above scheme, introduce a scanout_stride view
parameter which will be programmed to the PLANE_STRIDE register and use
the mapping_stride view param to store the POT aligned value of the
same. By requiring userspace to pass in FBs with a CCS stride that
aligns with the main surface stride (matching the requirement of all
GEN12 platforms), the scanout_stride will be the userspace main surface
stride and the mapping_stride will be the POT rounded value of the same.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: Nanley G Chery <nanley.g.chery@intel.com>
Cc: Sameer Lattannavar <sameer.lattannavar@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_fb.c       | 67 +++++++------------
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 3 files changed, 26 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index cd8790617b417..c344e7771a092 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -116,6 +116,7 @@ struct intel_fb_view {
 		 *   pixels for 90/270 degree rotation
 		 */
 		unsigned int mapping_stride;
+		unsigned int scanout_stride;
 	} color_plane[4];
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index cc350e20cbfe6..6da29231be72b 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -511,35 +511,12 @@ int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane)
 	return ccs_plane - fb->format->num_planes / 2;
 }
 
-static unsigned int gen12_aligned_scanout_stride(const struct intel_framebuffer *fb,
-						 int color_plane)
-{
-	struct drm_i915_private *i915 = to_i915(fb->base.dev);
-	unsigned int stride = fb->base.pitches[color_plane];
-
-	if (IS_ALDERLAKE_P(i915))
-		return roundup_pow_of_two(max(stride,
-					      8u * intel_tile_width_bytes(&fb->base, color_plane)));
-
-	return stride;
-}
-
 static unsigned int gen12_ccs_aux_stride(struct intel_framebuffer *fb, int ccs_plane)
 {
-	struct drm_i915_private *i915 = to_i915(fb->base.dev);
 	int main_plane = skl_ccs_to_main_plane(&fb->base, ccs_plane);
 	unsigned int main_stride = fb->base.pitches[main_plane];
 	unsigned int main_tile_width = intel_tile_width_bytes(&fb->base, main_plane);
 
-	/*
-	 * On ADL-P the AUX stride must align with a power-of-two aligned main
-	 * surface stride. The stride of the allocated main surface object can
-	 * be less than this POT stride, which is then autopadded to the POT
-	 * size.
-	 */
-	if (IS_ALDERLAKE_P(i915))
-		main_stride = gen12_aligned_scanout_stride(fb, main_plane);
-
 	return DIV_ROUND_UP(main_stride, 4 * main_tile_width) * 64;
 }
 
@@ -795,7 +772,6 @@ void intel_fb_plane_get_subsampling(int *hsub, int *vsub,
 
 static void intel_fb_plane_dims(const struct intel_framebuffer *fb, int color_plane, int *w, int *h)
 {
-	struct drm_i915_private *i915 = to_i915(fb->base.dev);
 	int main_plane = intel_fb_is_ccs_aux_plane(&fb->base, color_plane) ?
 			 skl_ccs_to_main_plane(&fb->base, color_plane) : 0;
 	unsigned int main_width = fb->base.width;
@@ -803,16 +779,6 @@ static void intel_fb_plane_dims(const struct intel_framebuffer *fb, int color_pl
 	int main_hsub, main_vsub;
 	int hsub, vsub;
 
-	/*
-	 * On ADL-P the CCS AUX surface layout always aligns with the
-	 * power-of-two aligned main surface stride. The main surface
-	 * stride in the allocated FB object may not be power-of-two
-	 * sized, in which case it is auto-padded to the POT size.
-	 */
-	if (IS_ALDERLAKE_P(i915) && intel_fb_is_ccs_aux_plane(&fb->base, color_plane))
-		main_width = gen12_aligned_scanout_stride(fb, 0) /
-			     fb->base.format->cpp[0];
-
 	intel_fb_plane_get_subsampling(&main_hsub, &main_vsub, &fb->base, main_plane);
 	intel_fb_plane_get_subsampling(&hsub, &vsub, &fb->base, color_plane);
 
@@ -1275,6 +1241,21 @@ plane_view_dst_stride_tiles(const struct intel_framebuffer *fb, int color_plane,
 	}
 }
 
+static unsigned int
+plane_view_scanout_stride(const struct intel_framebuffer *fb, int color_plane,
+			  unsigned int tile_width,
+			  unsigned int src_stride_tiles, unsigned int dst_stride_tiles)
+{
+	unsigned int stride_tiles;
+
+	if (IS_ALDERLAKE_P(to_i915(fb->base.dev)))
+		stride_tiles = src_stride_tiles;
+	else
+		stride_tiles = dst_stride_tiles;
+
+	return stride_tiles * tile_width * fb->base.format->cpp[color_plane];
+}
+
 static unsigned int
 plane_view_width_tiles(const struct intel_framebuffer *fb, int color_plane,
 		       const struct fb_plane_view_dims *dims,
@@ -1366,6 +1347,7 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 		color_plane_info->y = r.y1;
 
 		color_plane_info->mapping_stride = remap_info->dst_stride * tile_height;
+		color_plane_info->scanout_stride = color_plane_info->mapping_stride;
 
 		size += remap_info->dst_stride * remap_info->width;
 
@@ -1389,6 +1371,7 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 
 		if (remap_info->linear) {
 			color_plane_info->mapping_stride = fb->base.pitches[color_plane];
+			color_plane_info->scanout_stride = color_plane_info->mapping_stride;
 
 			size += remap_info->size;
 		} else {
@@ -1399,6 +1382,10 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 			color_plane_info->mapping_stride = dst_stride *
 							   tile_width *
 							   fb->base.format->cpp[color_plane];
+			color_plane_info->scanout_stride =
+				plane_view_scanout_stride(fb, color_plane, tile_width,
+							  remap_info->src_stride,
+							  dst_stride);
 
 			size += dst_stride * remap_info->height;
 		}
@@ -1524,6 +1511,8 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
 		fb->normal_view.color_plane[i].x = x;
 		fb->normal_view.color_plane[i].y = y;
 		fb->normal_view.color_plane[i].mapping_stride = fb->base.pitches[i];
+		fb->normal_view.color_plane[i].scanout_stride =
+			fb->normal_view.color_plane[i].mapping_stride;
 
 		offset = calc_plane_aligned_offset(fb, i, &x, &y);
 
@@ -1669,19 +1658,11 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
 
 	tile_width = intel_tile_width_bytes(fb, color_plane);
 	if (intel_fb_is_ccs_modifier(fb->modifier)) {
-		/*
-		 * On ADL-P the stride must be either 8 tiles or a stride
-		 * that is aligned to 16 tiles, required by the 16 tiles =
-		 * 64 kbyte CCS AUX PTE granularity, allowing CCS FBs to be
-		 * remapped.
-		 */
-		if (IS_ALDERLAKE_P(dev_priv))
-			tile_width *= fb->pitches[0] <= tile_width * 8 ? 8 : 16;
 		/*
 		 * On TGL the surface stride must be 4 tile aligned, mapped by
 		 * one 64 byte cacheline on the CCS AUX surface.
 		 */
-		else if (DISPLAY_VER(dev_priv) >= 12)
+		if (DISPLAY_VER(dev_priv) >= 12)
 			tile_width *= 4;
 		/*
 		 * Display WA #0531: skl,bxt,kbl,glk
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 10568dd6cb9f1..3feaf22b308b6 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -589,7 +589,7 @@ static u32 skl_plane_stride(const struct intel_plane_state *plane_state,
 {
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
-	u32 stride = plane_state->view.color_plane[color_plane].mapping_stride;
+	u32 stride = plane_state->view.color_plane[color_plane].scanout_stride;
 
 	if (color_plane >= fb->format->num_planes)
 		return 0;
-- 
2.27.0

